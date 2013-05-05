################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv5/tools/compiler/c2000_6.1.0

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./blinky_c28.obj" \
"./F28M35x_SysCtrl.obj" \
"./F28M35x_PieVect.obj" \
"./F28M35x_PieCtrl.obj" \
"./F28M35x_Gpio.obj" \
"./F28M35x_GlobalVariableDefs.obj" \
"./F28M35x_DefaultIsr.obj" \
"./F28M35x_CpuTimers.obj" \
"./F28M35x_CodeStartBranch.obj" \
-l"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_examples_Control/blinky/c28/ccs/../../../../F28M35x_common/cmd/F28M35x_generic_C28_FLASH.cmd" \
-l"rts2800_fpu32_fast_supplement.lib" \
-l"rts2800_fpu32.lib" \
"C:/ti/controlSUITE/device_support/f28m35x/v160/F28M35x_headers/cmd/F28M35x_Headers_nonBIOS.cmd" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: blinky_c28.out

# Tool invocations
blinky_c28.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C2000 Linker'
	"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --vcu_support=vcu0 -g --define="_DEBUG" --define="_FLASH" --define="LARGE_MODEL" --diag_warning=225 --no_fast_branch -z -m"blinky_c28.map" --stack_size=0x300 --warn_sections -i"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/lib" -i"C:/ti/ccsv5/tools/compiler/c2000_6.1.0/include" -i"C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/lib" --reread_libs --entry_point=code_start --rom_model -o "blinky_c28.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C2000_EXECUTABLE_OUTPUTS__QUOTED) "blinky_c28.out"
	-$(RM) "F28M35x_CpuTimers.pp" "F28M35x_DefaultIsr.pp" "F28M35x_GlobalVariableDefs.pp" "F28M35x_Gpio.pp" "F28M35x_PieCtrl.pp" "F28M35x_PieVect.pp" "F28M35x_SysCtrl.pp" "blinky_c28.pp" 
	-$(RM) "F28M35x_CodeStartBranch.obj" "F28M35x_CpuTimers.obj" "F28M35x_DefaultIsr.obj" "F28M35x_GlobalVariableDefs.obj" "F28M35x_Gpio.obj" "F28M35x_PieCtrl.obj" "F28M35x_PieVect.obj" "F28M35x_SysCtrl.obj" "blinky_c28.obj" 
	-$(RM) "F28M35x_CodeStartBranch.pp" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
