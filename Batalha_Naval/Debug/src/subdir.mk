################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/batalha0000000000.c \
../src/batalha0000000001.c \
../src/batalha11014515.c \
../src/batalha211014515.c \
../src/batalha311014515.c \
../src/batalha411014515.c \
../src/main.c 

OBJS += \
./src/batalha0000000000.o \
./src/batalha0000000001.o \
./src/batalha11014515.o \
./src/batalha211014515.o \
./src/batalha311014515.o \
./src/batalha411014515.o \
./src/main.o 

C_DEPS += \
./src/batalha0000000000.d \
./src/batalha0000000001.d \
./src/batalha11014515.d \
./src/batalha211014515.d \
./src/batalha311014515.d \
./src/batalha411014515.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


