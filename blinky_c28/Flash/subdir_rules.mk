################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
F28M35x_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_CodeStartBranch.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_CodeStartBranch.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_CpuTimers.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_CpuTimers.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_CpuTimers.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_DefaultIsr.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_DefaultIsr.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_DefaultIsr.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/source/F28M35x_GlobalVariableDefs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_GlobalVariableDefs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_Gpio.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_Gpio.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_Gpio.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_PieCtrl.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieCtrl.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_PieCtrl.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_PieVect.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_PieVect.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_PieVect.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F28M35x_SysCtrl.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/source/F28M35x_SysCtrl.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="F28M35x_SysCtrl.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

blinky_c28.obj: C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/blinky/c28/blinky_c28.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --include_path="C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_common/include" --include_path="C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch --preproc_with_compile --preproc_dependency="blinky_c28.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


