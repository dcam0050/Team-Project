################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/cmd/F28M35x_Headers_nonBIOS.cmd 

ASM_SRCS += \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_CodeStartBranch.asm \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_usDelay.asm 

C_SRCS += \
../Alarm_ISR.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Adc.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_DefaultIsr.c \
../F28M35x_EPwm.c \
../F28M35x_EQep.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/source/F28M35x_GlobalVariableDefs.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Gpio.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieCtrl.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieVect.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_SysCtrl.c \
../Inner_Loop.c \
../OuterLoop.c \
../PeripheralConfigFuncs.c \
../SensorData.c \
../Setup.c \
C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/epwm_adc_soc/c28/epwm_adc_soc.c 

OBJS += \
./Alarm_ISR.obj \
./F28M35x_Adc.obj \
./F28M35x_CodeStartBranch.obj \
./F28M35x_DefaultIsr.obj \
./F28M35x_EPwm.obj \
./F28M35x_EQep.obj \
./F28M35x_GlobalVariableDefs.obj \
./F28M35x_Gpio.obj \
./F28M35x_PieCtrl.obj \
./F28M35x_PieVect.obj \
./F28M35x_SysCtrl.obj \
./F28M35x_usDelay.obj \
./Inner_Loop.obj \
./OuterLoop.obj \
./PeripheralConfigFuncs.obj \
./SensorData.obj \
./Setup.obj \
./epwm_adc_soc.obj 

ASM_DEPS += \
./F28M35x_CodeStartBranch.pp \
./F28M35x_usDelay.pp 

C_DEPS += \
./Alarm_ISR.pp \
./F28M35x_Adc.pp \
./F28M35x_DefaultIsr.pp \
./F28M35x_EPwm.pp \
./F28M35x_EQep.pp \
./F28M35x_GlobalVariableDefs.pp \
./F28M35x_Gpio.pp \
./F28M35x_PieCtrl.pp \
./F28M35x_PieVect.pp \
./F28M35x_SysCtrl.pp \
./Inner_Loop.pp \
./OuterLoop.pp \
./PeripheralConfigFuncs.pp \
./SensorData.pp \
./Setup.pp \
./main.pp 

C_DEPS__QUOTED += \
"Alarm_ISR.pp" \
"F28M35x_Adc.pp" \
"F28M35x_DefaultIsr.pp" \
"F28M35x_EPwm.pp" \
"F28M35x_EQep.pp" \
"F28M35x_GlobalVariableDefs.pp" \
"F28M35x_Gpio.pp" \
"F28M35x_PieCtrl.pp" \
"F28M35x_PieVect.pp" \
"F28M35x_SysCtrl.pp" \
"Inner_Loop.pp" \
"OuterLoop.pp" \
"PeripheralConfigFuncs.pp" \
"SensorData.pp" \
"Setup.pp" \
"main.pp" 

OBJS__QUOTED += \
"Alarm_ISR.obj" \
"F28M35x_Adc.obj" \
"F28M35x_CodeStartBranch.obj" \
"F28M35x_DefaultIsr.obj" \
"F28M35x_EPwm.obj" \
"F28M35x_EQep.obj" \
"F28M35x_GlobalVariableDefs.obj" \
"F28M35x_Gpio.obj" \
"F28M35x_PieCtrl.obj" \
"F28M35x_PieVect.obj" \
"F28M35x_SysCtrl.obj" \
"F28M35x_usDelay.obj" \
"Inner_Loop.obj" \
"OuterLoop.obj" \
"PeripheralConfigFuncs.obj" \
"SensorData.obj" \
"Setup.obj" \
"epwm_adc_soc.obj" 

ASM_DEPS__QUOTED += \
"F28M35x_CodeStartBranch.pp" \
"F28M35x_usDelay.pp" 

C_SRCS__QUOTED += \
"../Alarm_ISR.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Adc.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_DefaultIsr.c" \
"../F28M35x_EPwm.c" \
"../F28M35x_EQep.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/source/F28M35x_GlobalVariableDefs.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Gpio.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieCtrl.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieVect.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_SysCtrl.c" \
"../Inner_Loop.c" \
"../OuterLoop.c" \
"../PeripheralConfigFuncs.c" \
"../SensorData.c" \
"../Setup.c" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/epwm_adc_soc/c28/epwm_adc_soc.c" 

ASM_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_CodeStartBranch.asm" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_usDelay.asm" 


