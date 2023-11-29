################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../Labo6-2_Start/Sources/main.asm \

ASM_SRCS_QUOTED += \
"../Labo6-2_Start/Sources/main.asm" \

OBJS += \
./Labo6-2_Start/Sources/main_asm.obj \

ASM_DEPS += \
./Labo6-2_Start/Sources/main_asm.d \

OBJS_QUOTED += \
"./Labo6-2_Start/Sources/main_asm.obj" \

ASM_DEPS_QUOTED += \
"./Labo6-2_Start/Sources/main_asm.d" \

OBJS_OS_FORMAT += \
./Labo6-2_Start/Sources/main_asm.obj \


# Each subdirectory must supply rules for building sources it contributes
Labo6-2_Start/Sources/main_asm.obj: ../Labo6-2_Start/Sources/main.asm
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: S12Z Assembler'
	"$(S12Z_ToolsDirEnv)/as12lisa" -ArgFile"Labo6-2_Start/Sources/main.args" -Objn"Labo6-2_Start/Sources/main_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Labo6-2_Start/Sources/%.d: ../Labo6-2_Start/Sources/%.asm
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


