/*******************************************************************************
 Module for Microchip Legato Graphics Library

  Company:
    Microchip Technology Inc.

  File Name:
    generated/le_gen_harmony.c

  Summary:
    Autogenerated source file for the Legato graphics library.

  Description:
    This file contains autogenerated code that binds the Legato graphics library
    and the MPLAB Harmony framework together.
*******************************************************************************/

#include "gfx/legato/generated/le_gen_harmony.h"

#include "definitions.h"

#include "system/input/sys_input.h"

// Input System Service interface code
SYS_INP_InputListener inputListener;

static void touchDownHandler(const SYS_INP_TouchStateEvent* const evt);
static void touchUpHandler(const SYS_INP_TouchStateEvent* const evt);
static void touchMoveHandler(const SYS_INP_TouchMoveEvent* const evt);


static LegatoState legatoState;

void Legato_Initialize(void)
{
    leInitialize(&ssd1963DisplayDriver);

    legato_initialize();

    inputListener.handleTouchDown = &touchDownHandler;
    inputListener.handleTouchUp = &touchUpHandler;
    inputListener.handleTouchMove = &touchMoveHandler;

    legatoState = LEGATO_STATE_INIT;
}

void Legato_Tasks(void)
{
    switch(legatoState)
    {
        case LEGATO_STATE_INIT:
        {
            SYS_INP_AddListener(&inputListener);

            legatoState = LEGATO_STATE_RUNNING;

            break;
        }
        case LEGATO_STATE_RUNNING:
        {
            //Legato_DemoModeProcessEvents();

            legato_updateCurrentScreen();

            leUpdate(0);

            break;
        }

        default:
        {
            break;
        }
    }
}

void touchDownHandler(const SYS_INP_TouchStateEvent* const evt)
{
    leInput_InjectTouchDown(evt->index, evt->x, evt->y);
}

void touchUpHandler(const SYS_INP_TouchStateEvent* const evt)
{
    leInput_InjectTouchUp(evt->index, evt->x, evt->y);
}

void touchMoveHandler(const SYS_INP_TouchMoveEvent* const evt)
{
    leInput_InjectTouchMoved(evt->index, evt->x, evt->y);
}
