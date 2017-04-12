################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/tm_stm32f4_delay.c \
../src/tm_stm32f4_disco.c \
../src/tm_stm32f4_nrf24l01.c \
../src/tm_stm32f4_spi.c \
../src/tm_stm32f4_usart.c 

OBJS += \
./src/main.o \
./src/tm_stm32f4_delay.o \
./src/tm_stm32f4_disco.o \
./src/tm_stm32f4_nrf24l01.o \
./src/tm_stm32f4_spi.o \
./src/tm_stm32f4_usart.o 

C_DEPS += \
./src/main.d \
./src/tm_stm32f4_delay.d \
./src/tm_stm32f4_disco.d \
./src/tm_stm32f4_nrf24l01.d \
./src/tm_stm32f4_spi.d \
./src/tm_stm32f4_usart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DSTM32F40_41xxx -DTM_DISCO_STM32F4_DISCOVERY -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DDEBUG -I"../include" -I"../libs/cmsis/include" -I"../libs/StdPeriph/include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


