/*******************************************************************************
  2D Graphics Engine GFX2D PLIB

  Company
    Microchip Technology Inc.

  File Name
    plib_gfx2d.h

  Summary
    GFX2D PLIB Header File.

  Description
    This file defines the interface to the GFX2D peripheral library. This
    library provides access to and control of the associated peripheral
    instance.

  Remarks:
    None.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

#ifndef _PLIB_${GFX2D_INSTANCE_NAME}_H    // Guards against multiple inclusion
#define _PLIB_${GFX2D_INSTANCE_NAME}_H

#include "device.h"
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data Types
// *****************************************************************************
// *****************************************************************************

typedef void (*${GFX2D_INSTANCE_NAME}_IRQ_CALLBACK) (uintptr_t context);

// *****************************************************************************
/* GFX2D IRQ Callback Object

   Summary:
    Struct for GFX2D IRQ handler

   Description:
    This structure defines the GFX2D IRQ handler object, used to store the IRQ
    callback function registered from the GFX2D driver

   Remarks:
    None.
*/
typedef struct
{
    ${GFX2D_INSTANCE_NAME}_IRQ_CALLBACK callback_fn;
    uintptr_t context;
}${GFX2D_INSTANCE_NAME}_IRQ_CALLBACK_OBJECT;


// *****************************************************************************
/* GFX2D Instruction Status

   Summary:
    GFX2D Instruction Status data type.

   Description:
    This data type defines the GFX2D Instruction Status.

   Remarks:
    None.
*/

typedef enum
{
    /* No Error */
    GFX2D_ERROR_NONE,

    /* GPU returned Nack */
    GFX2D_ERROR_NACK,

} GFX2D_STATUS;

// *****************************************************************************
/* GFX2D State.

   Summary:
    GFX2D PLib Task State.

   Description:
    This data type defines the GFX2D PLib Task State.

   Remarks:
    None.

*/

typedef enum {

    /* GFX2D PLib Task Error State */
    GFX2D_STATE_ERROR = -1,

    /* GFX2D PLib Task Idle State */
    GFX2D_STATE_IDLE,

    /* GFX2D PLib Task Instruction Done State */
    GFX2D_STATE_TRANSFER_DONE,

} GFX2D_STATE;


// *****************************************************************************
/* GFX2D PLib Instance Object

   Summary:
    GFX2D PLib Object structure.

   Description:
    This data structure defines the GFX2D PLib Instance Object.

   Remarks:
    None.
*/

typedef struct
{
    uint16_t address;

    /* State */
    GFX2D_STATE state;

    /* Transfer status */
    GFX2D_STATUS error;

    /* Transfer Event Callback */
    ${GFX2D_INSTANCE_NAME}_IRQ_CALLBACK callback;

    /* Transfer context */
    uintptr_t context;

} GFX2D_OBJ;

// *****************************************************************************
/* GFX2D Interrupts

   Summary:
    Defines the interrupts generated by the controller

   Description:

   Remarks:
    None.
*/
typedef enum
{
    GFX2D_INTERRUPT_RBEMPTY,
    GFX2D_INTERRUPT_EXEND,
    GFX2D_INTERRUPT_RERR,
    GFX2D_INTERRUPT_BERR,
    GFX2D_INTERRUPT_IERR,
} GFX2D_INTERRUPT;

// *****************************************************************************
/* GFX2D Clock Gating Disable Core

   Summary:
    Defines the clock gating for the graphics engine

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_CLOCK_GATING_ACTIVATED = 0,
    GFX2D_CLOCK_GATING_DISABLED
} GFX2D_CLOCK_GATING;


/* GFX2D Memory Tile Access

   Summary:
    Defines the memory access for the graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_MEMORY_TILE_ACCESS = 0,
    GFX2D_MEMORY_LINEAR_ACCESS
} GFX2D_MEMORY_ACCESS;


/* GFX2D Performance Filter Configuration

   Summary:
    Defines the performance filter configuration for the graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_FILTER_DISABLED = 0,
    GFX2D_FILTER_QOS0,
    GFX2D_FILTER_QOS1,
    GFX2D_FILTER_QOS2,
    GFX2D_FILTER_QOS3
} GFX2D_PERFORMANCE_FILTER_CONFIG;

/* GFX2D Performance Metrics Counter Selection

   Summary:
    Defines the performance metrics selection for the graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_METRICS_DISABLED = 0,
    GFX2D_METRICS_INCREMENT_ON_READ,
    GFX2D_METRICS_INCREMENT_ON_WRITE,
    GFX2D_METRICS_INCREMENT_ON_CLOCK_CYCLES
} GFX2D_PERFORMANCE_METRIC;

/* GFX2D Performance Register

   Summary:
    Defines the register number.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_PERFORMANCE_REG0 = 0,
    GFX2D_PERFORMANCE_REG1
} GFX2D_PERFORMANCE_REGISTER;
      
/* GFX2D Surface

   Summary:
    Defines the surfaces of the graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_SURFACE_ZERO = 0,
    GFX2D_SURFACE_ONE,
    GFX2D_SURFACE_TWO,
    GFX2D_SURFACE_THREE
} GFX2D_SURFACE;


/* GFX2D Color Lookup Table

   Summary:
    Defines the color lookup tables of the graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_COLOR_LOOKUP_TABLE_ZERO = 0,
    GFX2D_COLOR_LOOKUP_TABLE_ONE,
} GFX2D_COLOR_LOOKUP_TABLE;

/* GFX2D Pixel formats

   Summary:
    Defines the pixel formats of the  graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_A4IDX4 = 0,
    GFX2D_A8,
    GFX2D_IDX8,
    GFX2D_A8IDX8,
    GFX2D_RGB12,
    GFX2D_ARGB16,
    GFX2D_RBG15,
    GFX2D_TRGB16,
    GFX2D_RGBT16,
    GFX2D_RGB16,
    GFX2D_RGB24,
    GFX2D_ARGB32,
    GFX2D_FORMAT_TYPES
} GFX2D_PIXEL_FORMAT;


/* GFX2D Pixel formats

   Summary:
    Defines the pixel formats of the  graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_XY00 = 0,
    GFX2D_XY01,
    GFX2D_XY10,
    GFX2D_XY11
} GFX2D_TRANSFER_DIRECTION;

/* GFX2D Special Blend

   Summary:
    Defines the special blend types of the graphics engine.

   Description:
    This defines .

   Remarks:
    None.
*/
typedef enum 
{
    GFX2D_SPE_LIGHTEN = 0,
    GFX2D_SPE_DARKEN,
    GFX2D_SPE_MULTIPLY,
    GFX2D_SPE_AVERAGE,
    GFX2D_SPE_ADD,
    GFX2D_SPE_SUBTRACT,
    GFX2D_SPE_DIFFERENCE,
    GFX2D_SPE_NEGATION,
    GFX2D_SPE_SCREEN,
    GFX2D_SPE_OVERLAY,
    GFX2D_SPE_DODGE,
    GFX2D_SPE_BURN,
    GFX2D_SPE_REFLECT,    
    GFX2D_SPE_GLOW
} GFX2D_BLEND_SPE;

typedef enum 
{
    GFX2D_FUNCTION_ADD = 0,
    GFX2D_FUNCTION_SUBTRACT,
    GFX2D_FUNCTION_REVERSE,
    GFX2D_FUNCTION_MIN,
    GFX2D_FUNCTION_MAX,
    GFX2D_FUNCTION_SPE
} GFX2D_BLEND_FUNCTION;

typedef enum 
{
    GFX2D_FACTOR_ZERO = 0,
    GFX2D_FACTOR_ONE,
    GFX2D_FACTOR_SRC_COLOR,
    GFX2D_FACTOR_ONE_MINUS_SRC_COLOR,
    GFX2D_FACTOR_DST_COLOR,
    GFX2D_FACTOR_ONE_MINUS_DST_COLOR,
    GFX2D_FACTOR_SRC_ALPHA,
    GFX2D_FACTOR_ONE_MINUS_SRC_ALPHA,
    GFX2D_FACTOR_DST_ALPHA,
    GFX2D_FACTOR_ONE_MINUS_DST_ALPHA,
    GFX2D_FACTOR_CONSTANT_COLOR,
    GFX2D_FACTOR_ONE_MINUS_CONSTANT_COLOR,
    GFX2D_FACTOR_CONSTANT_ALPHA,
    GFX2D_FACTOR_ONE_MINUS_CONSTANT_ALPHA,
    GFX2D_FACTOR_SRC_ALPHA_SATURATE,
} GFX2D_BLEND_FACTOR;

typedef enum 
{
    GFX2D_ROP2 = 0,
    GFX2D_ROP3,
    GFX2D_ROP4
} GFX2D_ROP_MODE;

// *****************************************************************************
/**
 * \berif GFX2D buffer format
 */
 //typedef enum gpu_buffer_format {
 //   GFX2D_A8       = 1,  /*!< 8 bits per pixel alpha, with user-defined constant color */
 //   GFX2D_RGB12    = 4,  /*!< 12 bits per pixel, 4 bits per color channel */
 //   GFX2D_ARGB16   = 5,  /*!< 16 bits per pixel with 4-bit width alpha value, and 4 bits per color channel */
 //   GFX2D_RGB15    = 6,  /*!< 15 bits per pixel, 5 bits per color channel */
 //   GFX2D_TRGB16   = 7,  /*!< 16 bits per pixel, 5 bits for the red and blue channels and 6 bits for the green channel */
 //   GFX2D_RGBT16   = 8,  /*!< 16 bits per pixel, with 1 bit for transparency and 5 bits for color channels */
 //   GFX2D_RGB16    = 9,  /*!< 16 bits per pixel, 5 bits for the red and blue channels and 6 bits for the green channel */
 //   GFX2D_ARGB8888 = 10, /*!< 32 bits per pixel, 8 bits for alpha and color channels */
 //   GFX2D_RGBA8888 = 11, /*!< 32 bits per pixel, 8 bits for alpha and color channels */
 //   GFX2D_BUFFER_FORMAT_SIZE
//} GFX2D_BUFFER_FORMAT;

/* GPU BUffer format's pixel size in bytes */
#define GFX2D_BUFFER_FORMAT_PIXEL_SIZE {1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 4, 4};

/**
 * \berif GFX2D Buffer
 */
typedef struct gpu_buffer {
    uint32_t               width;  /*!< Buffer width in pixel */
    uint32_t               height; /*!< Buffer height in pixel */
    GFX2D_PIXEL_FORMAT     format;    /*!< Buffer pixel format */
    uint32_t               addr;   /*!< Buffer memory address */
    GFX2D_TRANSFER_DIRECTION dir;
} GFX2D_BUFFER;

typedef struct gpu_rectangle {
    uint32_t x;      /*!< X position in pixel, start from 0 */
    uint32_t y;      /*!< Y position in pixel, start from 0 */
    uint32_t width;  /*!< Width in pixel */
    uint32_t height; /*!< Height in pixel */
} GFX2D_RECTANGLE;

/**
 * \berif GFX2D color
 * A(31-24), R(23-16), G(15-8), B(7-0)
 */
typedef uint32_t gpu_color_t;
#define GFX2D_COLOR(a, r, g, b) (((a) << 24) | ((r) << 16) | ((g) << 8) | (b))

/**
 * \berif GFX2D Blend functions
 */
typedef struct gpu_blend {
    GFX2D_BLEND_SPE spe;
    GFX2D_BLEND_FUNCTION func;
    GFX2D_BLEND_FACTOR dfact;
    GFX2D_BLEND_FACTOR sfact;
} GFX2D_BLEND;

/**
 * \berif GFX2D Rop operation
 */
typedef struct gpu_rop {
    uint8_t high;
    uint8_t low;
    GFX2D_ROP_MODE mode;
} GFX2D_ROP;

//typedef enum gpu_blend {
//    GFX2D_BLEND_SRC_OVER, /* S + (1-Sa)*D */
//    GFX2D_BLEND_DST_OVER, /* (1-Da) * S + D */
//    GFX2D_BLEND_SRC_IN,   /* Da * S */
//    GFX2D_BLEND_DST_IN,   /* Sa * D */
//    GFX2D_BLEND_ADDITIVE, /* S + D */
//    GFX2D_BLEND_SUBTRACT  /* D * (1 - S) */
//} GFX2D_BLEND;



// *****************************************************************************
// *****************************************************************************
// Global Configuration, Enable, Disable, Status
// *****************************************************************************
// *****************************************************************************
          
// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetClockGatingCore(GFX2D_CLOCK_GATING gating)

   Summary:
    Enables/disables the clock gating core 

   Description:
    None

   Precondition:
    None.

   Parameters:
    enable - GFX2D_CLOCK_GATING

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetClockGatingCore(GFX2D_CLOCK_GATING gating);
          
// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetClockGatingAXI(GFX2D_CLOCK_GATING gating)

   Summary:
    Enables/disables the clock gating AXI core 

   Description:
    None

   Precondition:
    None.

   Parameters:
    gating - GFX2D_CLOCK_GATING

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetClockGatingAXI(GFX2D_CLOCK_GATING gating);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetClockGatingFIFO(GFX2D_CLOCK_GATING gating)

   Summary:
    Enables/disables the clock gating FIFO core 

   Description:
    None

   Precondition:
    None.

   Parameters:
    gating - GFX2D_CLOCK_GATING

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetClockGatingFIFO(GFX2D_CLOCK_GATING gating);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetOutstandingRegulationEnable(bool enable)

   Summary:
    Enables/disables the outstanding regulation 

   Description:
    None

   Precondition:
    None.

   Parameters:
    enable - if true, regulation is enabled, otherwise, it is disabled.

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetOutstandingRegulationEnable(bool enable);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetMemoryAccess(GFX2D_MEMORY_ACCESS access)

   Summary:
    Enables/disables Tile access

   Description:
    None

   Precondition:
    None.

   Parameters:
    access - GFX2D_MEMORY_ACCESS

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetMemoryAccess(GFX2D_MEMORY_ACCESS access);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetGlobalStatusEnabled( bool enable )

   Summary:
    Enables the GFX2D Controller

   Description:
    None.

   Precondition:
    None.

   Parameters:
    enable - if true, enables the GFX2D controller. otherwise no effect if false.

   Returns:
    None.

   Remarks:
    None
*/
void PLIB_GFX2D_SetGlobalStatusEnabled( bool enable );

// *****************************************************************************
/* Function:
    bool PLIB_GFX2D_GetGlobalStatusEnabled( void )

   Summary:
    Returns true if graphics engine is enabled

   Description:
    None

   Precondition:
    None.

   Parameters:
    None.

   Returns:
    bool - true if graphics engine is enabled, otherwise false.

   Remarks:
    None
*/
bool PLIB_GFX2D_GetGlobalStatusEnabled( void );

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetGlobalStatusDisabled( bool enable, bool exitWFE )

   Summary:
    Disables the GFX2D controller and resumes WFE software

   Description:
    None.

   Precondition:
    None.

   Parameters:
    enable - if true, disables the GFX2D controller. otherwise no effect if false.
    exitWFE - if true, exits the WFE state

   Returns:
    None.

   Remarks:
    None
*/
void PLIB_GFX2D_SetGlobalStatusDisabled( bool enable, bool exitWFE );

// *****************************************************************************
/* Function:
    bool PLIB_GFX2D_GetGlobalStatusBusy( void )

   Summary:
    Returns true if graphics engine is busy

   Description:
    None

   Precondition:
    None.

   Parameters:
    None.

   Returns:
    bool - true if graphics engine is busy, otherwise false.

   Remarks:
    None
*/
bool PLIB_GFX2D_GetGlobalStatusBusy( void );

// *****************************************************************************
/* Function:
    bool PLIB_GFX2D_GetGlobalStatusBusy( void )

   Summary:
    Returns true if graphics engine is waiting for an event

   Description:
    The graphics is either running or waiting for an event after the engine 
    is enabled.

   Precondition:
    None.

   Parameters:
    None.

   Returns:
    bool - true if graphics engine is waiting for an event, otherwise false.

   Remarks:
    None
*/
bool PLIB_GFX2D_GetGlobalStatusWaitForEvent( void );

// *****************************************************************************
// *****************************************************************************
// Performance Configuration
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetPerformanceFilter(GFX2D_PERFORMANCE_REGISTER reg, GFX2D_PERFORMANCE_FILTER_CONFIG filter)

   Summary:
    Sets the performance filter for the specified register 

   Description:
    None

   Precondition:
    None.

   Parameters:
    reg - the metric register to use
    filter - the performance filter

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetPerformanceFilter(GFX2D_PERFORMANCE_REGISTER reg, GFX2D_PERFORMANCE_FILTER_CONFIG filter);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetPerformanceMetric(GFX2D_PERFORMANCE_REGISTER reg, GFX2D_PERFORMANCE_METRIC metric)

   Summary:
    Sets the performance metric for the specified register 

   Description:
    None

   Precondition:
    None.

   Parameters:
    reg - the metric register to use
    metric - the metric to count

   Returns:
    None

   Remarks:
    None
*/
uint32_t PLIB_GFX2D_GetPerformanceMetric(GFX2D_PERFORMANCE_REGISTER reg);

// *****************************************************************************
/* Function:
    uint32_t PLIB_GFX2D_GetMetricCounter(GFX2D_PERFORMANCE_REGISTER reg)

   Summary:
    Gets the current metric counter for the specified performance register.

   Description:
    None

   Precondition:
    None.

   Parameters:
    reg - either register 0 or 1

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_GetMetricCounter(GFX2D_PERFORMANCE_REGISTER reg);

// *****************************************************************************
// *****************************************************************************
// Fill Instruction
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/* Function:
    void GFX2D_SetSurfaceAddress(GFX2D_SURFACE surface, uint32_t addr)

   Summary:
    Sets the memory address of the specified surface

   Description:
    None

   Precondition:
    None.

   Parameters:
    surface - surface number
    address = the memory address

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetSurfaceAddress(GFX2D_SURFACE surface, uint32_t addr);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetSurfacePitch(GFX2D_SURFACE surface, uint16_t pitch)

   Summary:
    Sets the color lookup table for the specified surface

   Description:
    None

   Precondition:
    None.

   Parameters:
    surface - surface number
    pitch = the horizontal width of the surface

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetSurfacePitch(GFX2D_SURFACE surface, uint16_t pitch);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetSurfaceColorLookupTable(GFX2D_SURFACE surface, GFX2D_COLOR_LOOKUP_TABLE table)

   Summary:
    Sets the color lookup table for the specified surface

   Description:
    None

   Precondition:
    None.

   Parameters:
    surface - surface number
    table = the color lookup table

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetSurfaceColorLookupTable(GFX2D_SURFACE surface, GFX2D_COLOR_LOOKUP_TABLE table);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_SetSurfacePixelFormat(GFX2D_SURFACE surface, GFX2D_PIXEL_FORMAT format)

   Summary:
    Sets the pixel format for the specified surface

   Description:
    None

   Precondition:
    None.

   Parameters:
    surface - surface number
    format - type of format

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_SetSurfacePixelFormat(GFX2D_SURFACE surface, GFX2D_PIXEL_FORMAT format);

// *****************************************************************************
// *****************************************************************************
// Interrupt 
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/* Function:
    void PLIB_GFX2D_IRQ_Enable(GFX2D_INTERRUPT interrupt)

   Summary:
    Enables the specified interrupt

   Description:
    None

   Precondition:
    None.

   Parameters:
    GFX2D_INTERRUPT -  RBEMPTY, EXEND, RERR, BERR, IERR

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_IRQ_Enable(GFX2D_INTERRUPT interrupt);

// *****************************************************************************
/* Function:
    void PLIB_GFX2D_IRQ_Disable(GFX2D_INTERRUPT interrupt)

   Summary:
    Disables the specified interrupt

   Description:
    None

   Precondition:
    None.

   Parameters:
    GFX2D_INTERRUPT -  RBEMPTY, EXEND, RERR, BERR, IERR

   Returns:
    None

   Remarks:
    None
*/
void PLIB_GFX2D_IRQ_Disable(GFX2D_INTERRUPT interrupt);

// *****************************************************************************
/* Function:
    uint32_t PLIB_GFX2D_IRQ_Status(void);

   Summary:
    Reads the value of the interrupt status register

   Description:
    None

   Precondition:
    None.

   Parameters:
    None

   Returns:
    uint32_t - the value of the interrupt status register

   Remarks:
    None
*/
uint32_t PLIB_GFX2D_IRQ_Status(void);

// *****************************************************************************
// *****************************************************************************
// Section: Driver Interface Routines
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Function:
    void ${GFX2D_INSTANCE_NAME}_IRQ_CallbackRegister(${GFX2D_INSTANCE_NAME}_IRQ_CALLBACK callback, uintptr_t context);

   Summary:
    Registers a callback function for the GFX2 IRQ handler

   Description:
    None

   Precondition:
    None.

   Parameters:
    callback - the callback function
    context - the handler context

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
void ${GFX2D_INSTANCE_NAME}_IRQ_CallbackRegister(PLIB_GFX2D_IRQ_CALLBACK callback, uintptr_t context);

// *****************************************************************************
/* Function:
    void ${GFX2D_INSTANCE_NAME}_GFX2D_Initialize( void )

   Summary:
    Initializes the GFX2D controller

   Description:
    None

   Precondition:
    None.

   Parameters:
    None.

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
void ${GFX2D_INSTANCE_NAME}_GFX2D_Initialize( void );

// *****************************************************************************
/* Function:
    void ${GFX2D_INSTANCE_NAME}_GFX2D_Enable( void );

   Summary:
    Enables the GFX2D controller

   Description:
    None

   Precondition:
    The operation is permitted if the global status bit is 0.

   Parameters:
    None

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
void ${GFX2D_INSTANCE_NAME}_GFX2D_Enable( void );

// *****************************************************************************
/* Function:
    void ${GFX2D_INSTANCE_NAME}_GFX2D_Disable( void );

   Summary:
    Disables the GFX2D controller

   Description:
    None

   Precondition:
    None.

   Parameters:
    None

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
void ${GFX2D_INSTANCE_NAME}_GFX2D_Disable( void );

// *****************************************************************************
/* Function:
    GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Fill(LCDC_SIGNAL_POLARITY polarity)

   Summary:
    Sets the pixel clock signal polarity

   Description:
    None

   Precondition:
    None.

   Parameters:
    polarity - the polarity of the pixel clock

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Fill(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *rect, gpu_color_t color);

// *****************************************************************************
/* Function:
    GFX2D_STATUS PLIB_GFX2D_Copy(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *src,
                        GFX2D_RECTANGLE *src_rect)

   Summary:
    Performs of copy of pixels from source  to destination rectangle

   Description:
    None

   Precondition:
    None.

   Parameters:
    dst - the destination surface
    dst_rect - the bounding area of the destination
    src - the source surface to get pixels
    src - the bounding area of the source pixels

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Copy(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *src,
                        GFX2D_RECTANGLE *src_rect);

// *****************************************************************************
/* Function:
    GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Blend(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *fg,
                         GFX2D_RECTANGLE *fg_rect, GFX2D_BUFFER *bg, GFX2D_RECTANGLE *bg_rect,
                         GFX2D_BLEND blend)

   Summary:
    Performs a blending of background pixels with foreground pixels onto destination specified 
    by the given blend type.

   Description:
    None

   Precondition:
    None.

   Parameters:
    dst - the destination surface
    dst_rect - the bounding area of the destination
    fg - the source surface to get pixels 
    fg_rect - the top, left position of the foreground
    bg - the background surface
    bg_rect - the top, left position of the background
    blend - the type of blend to perform

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Blend(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *fg,
                         GFX2D_RECTANGLE *fg_rect, GFX2D_BUFFER *bg, GFX2D_RECTANGLE *bg_rect,
                         GFX2D_BLEND blend);

// *****************************************************************************
/* Function:
    GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Rop(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *s1,
                         GFX2D_RECTANGLE *s1_rect, GFX2D_BUFFER *s2, GFX2D_RECTANGLE *s2_rect,
                         GFX2D_BUFFER *pmask, struct gpu_rop rop)

   Summary:
    Performs a masking of s2 pixels with s1 pixels onto dst using a masking bit array
    and the specified raster operation.

   Description:
    None

   Precondition:
    None.

   Parameters:
    dst - the destination surface
    dst_rect - the bounding area of the destination
    src - the source surface to get pixels
    src - the bounding area of the source pixels

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Rop(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *s1,
                         GFX2D_RECTANGLE *s1_rect, GFX2D_BUFFER *s2, GFX2D_RECTANGLE *s2_rect,
                         GFX2D_BUFFER *pmask, struct gpu_rop rop);

// *****************************************************************************
/* Function:
    GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_Copy(GFX2D_BUFFER *dst, GFX2D_RECTANGLE *dst_rect, GFX2D_BUFFER *src,
                        GFX2D_RECTANGLE *src_rect)

   Summary:
    Performs of copy of pixels from source  to destination rectangle

   Description:
    None

   Precondition:
    None.

   Parameters:
    dst - the destination surface
    dst_rect - the bounding area of the destination
    src - the source surface to get pixels
    src - the bounding area of the source pixels

   Returns:
    None

   Remarks:
    Convenience routine for drivers
*/
bool ${GFX2D_INSTANCE_NAME}_GFX2D_IsBusy(void);

// *****************************************************************************
/* Function:
    GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_StatusGet(void)

   Summary:
    Returns the general availability of the controller

   Description:
    None

   Precondition:
    None.

   Parameters:
    None

   Returns:
    status = GFX_SUCCESS for available

   Remarks:
    Convenience routine for drivers
*/
GFX2D_STATUS ${GFX2D_INSTANCE_NAME}_GFX2D_StatusGet(void);


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END

#endif /* PLIB_${GFX2D_INSTANCE_NAME}_H */
