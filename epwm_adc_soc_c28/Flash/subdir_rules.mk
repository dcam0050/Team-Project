################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Alarm_ISR.obj: ../Alarm_ISR.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="Alarm_ISR.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_Adc.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Adc.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_Adc.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_CodeStartBranch.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_CodeStartBranch.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_DefaultIsr.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_DefaultIsr.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_DefaultIsr.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_EPwm.obj: ../F28M35x_EPwm.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_EPwm.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_EQep.obj: ../F28M35x_EQep.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_EQep.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/source/F28M35x_GlobalVariableDefs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_GlobalVariableDefs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_Gpio.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Gpio.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_Gpio.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_PieCtrl.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieCtrl.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_PieCtrl.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_PieVect.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieVect.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_PieVect.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_SysCtrl.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_SysCtrl.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_SysCtrl.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_usDelay.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_usDelay.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_usDelay.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Inner_Loop.obj: ../Inner_Loop.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="Inner_Loop.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

OuterLoop.obj: ../OuterLoop.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="OuterLoop.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

PeripheralConfigFuncs.obj: ../PeripheralConfigFuncs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="PeripheralConfigFuncs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

SensorData.obj: ../SensorData.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="SensorData.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Setup.obj: ../Setup.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="Setup.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

epwm_adc_soc.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/epwm_adc_soc/c28/epwm_adc_soc.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 -g --preinclude="C:/Users/Daniel/Documents/GitHub/Team-Project/epwm_adc_soc_c28/Functions.h" --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/eqep_pos_speed/c28" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


