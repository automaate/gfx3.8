/*******************************************************************************
  MPLAB Harmony Generated Driver Header File

  File Name:
    drv_gfx_custom_external.h

  Summary:
    Build-time generated header file for ${ControllerName} driver.
	
  Description:
    Build-time generated header file for top-level ${ControllerName} driver.
 * 
    Created with MPLAB Harmony Version 3.00
*******************************************************************************/
//DOM-IGNORE-BEGIN
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
//DOM-IGNORE-END

#ifndef DRV_GFX_${ControllerName}_H
#define DRV_GFX_${ControllerName}_H

<#if PassiveDriver == false>
#include "gfx/legato/renderer/legato_driver.h"
</#if>

#ifdef __cplusplus
    extern "C" {
#endif
 

//DOM-IGNORE-END

int DRV_${ControllerName}_Initialize(void);
void DRV_${ControllerName}_Update(void);

<#if PassiveDriver == false>
leColorMode DRV_${ControllerName}_GetColorMode(void);
uint32_t DRV_${ControllerName}_GetBufferCount(void);
uint32_t DRV_${ControllerName}_GetDisplayWidth(void);
uint32_t DRV_${ControllerName}_GetDisplayHeight(void);
uint32_t DRV_${ControllerName}_GetLayerCount();
uint32_t DRV_${ControllerName}_GetActiveLayer();
leResult DRV_${ControllerName}_SetActiveLayer(uint32_t idx);
leResult DRV_${ControllerName}_BlitBuffer(int32_t x, int32_t y, lePixelBuffer* buf);
void DRV_${ControllerName}_Swap(void);
uint32_t DRV_${ControllerName}_GetSwapCount(void);

static const leDisplayDriver ${DriverInitName} =
{
    DRV_${ControllerName}_GetColorMode,
    DRV_${ControllerName}_GetBufferCount,
    DRV_${ControllerName}_GetDisplayWidth,
    DRV_${ControllerName}_GetDisplayHeight,
    DRV_${ControllerName}_Update,
    DRV_${ControllerName}_GetLayerCount,
    DRV_${ControllerName}_GetActiveLayer,
    DRV_${ControllerName}_SetActiveLayer,
    DRV_${ControllerName}_BlitBuffer,
    DRV_${ControllerName}_Swap,
    DRV_${ControllerName}_GetSwapCount,
    NULL /* GetFrameBuffer not supported */
};
</#if>

#ifdef __cplusplus
    }
#endif
    
#endif // DRV_GFX_${ControllerName}_H
