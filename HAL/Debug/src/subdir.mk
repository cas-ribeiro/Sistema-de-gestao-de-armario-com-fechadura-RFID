################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/SYSTICK.c \
../src/flash.c \
../src/pin.c \
../src/pinconfig.c \
../src/rtcHal.c \
../src/spi.c \
../src/timer.c 

C_DEPS += \
./src/SYSTICK.d \
./src/flash.d \
./src/pin.d \
./src/pinconfig.d \
./src/rtcHal.d \
./src/spi.d \
./src/timer.d 

OBJS += \
./src/SYSTICK.o \
./src/flash.o \
./src/pin.o \
./src/pinconfig.o \
./src/rtcHal.o \
./src/spi.o \
./src/timer.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -D__REDLIB__ -DCORE_M3 -D__USE_CMSIS=CMSIS_CORE_LPC17xx -D__LPC17XX__ -I"C:\Users\carlo\Documents\ISEL\Semestre 5\SE\workspace\HAL\inc" -I"C:\Users\carlo\Documents\ISEL\Semestre 5\SE\SE\CMSIS_CORE_LPC17XX\inc" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m3 -mthumb -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src

clean-src:
	-$(RM) ./src/SYSTICK.d ./src/SYSTICK.o ./src/flash.d ./src/flash.o ./src/pin.d ./src/pin.o ./src/pinconfig.d ./src/pinconfig.o ./src/rtcHal.d ./src/rtcHal.o ./src/spi.d ./src/spi.o ./src/timer.d ./src/timer.o

.PHONY: clean-src

