################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 1
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(GNU_Make_Install_DirEnv)/rm" -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \

EXECUTABLES_QUOTED += \

EXECUTABLES_OS_FORMAT += \

BURNER_OUTPUT_OUTPUTS += \

BURNER_OUTPUT_OUTPUTS_QUOTED += \

BURNER_OUTPUT_OUTPUTS_OS_FORMAT += \


# All Target
all: warning-messages explicit-dependencies Labo2_Start.elf

# Tool invocations
Labo2_Start.elf: $(OBJS) $(USER_OBJS) ../Project_Settings/Linker_Files/mc9s12zvl32.prm
	@echo 'Building target: $@'
	@echo 'Executing target #2 $@'
	@echo 'Invoking: S12Z Linker'
	"$(S12Z_ToolsDirEnv)/linker" -ArgFile"Labo2_Start.args" -O"Labo2_Start.elf"
	@echo 'Finished building target: $@'
	@echo ' '

Labo2_Start.elf.s19: $(BBL_SRCS) $(EXECUTABLES)
	@echo 'Executing target #3 $@'
	@echo 'Invoking: S12Z Burner'
	"$(S12Z_ToolsDirEnv)/burner" -ViewHidden -WmsgFob"%f%e:%l:%k:%d:%m\n" -f="$<" -env"ABS_FILE=$(strip $(EXECUTABLES_OS_FORMAT))"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(S_DEPS_QUOTED) "./*/*.obj"  $(CPP_DEPS_QUOTED) $(CC_DEPS_QUOTED) $(S_UPPER_DEPS_QUOTED) $(CXX_DEPS_QUOTED) "./*/*.d"  $(BURNER_OUTPUT_OUTPUTS_QUOTED) $(ASM_UPPER_DEPS_QUOTED) $(C_UPPER_DEPS_QUOTED) $(C++_DEPS_QUOTED) $(EXECUTABLES_QUOTED) $(C_DEPS_QUOTED) $(ProjDirPath)/FLASH/Labo2_Start.elf
	-@echo ' '

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: ../Project_Settings/Linker_Files/mc9s12zvl32.prm 

warning-messages: 

