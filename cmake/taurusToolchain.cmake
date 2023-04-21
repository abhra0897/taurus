set(RISCV_TOOLCHAIN_PATH "/opt/riscv/bin")
set(RISCV_TOOLCHAIN_PREFIX riscv64-unknown-elf)
set(RISCV_ARCH "rv32im")
set(RISCV_ABI "ilp32")

#set(CMAKE_SYSTEM_NAME               CDAC Vega)
set(CMAKE_SYSTEM_PROCESSOR          riscv)

set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY)

set(CMAKE_AR                        ${RISCV_TOOLCHAIN_PATH}//${RISCV_TOOLCHAIN_PREFIX}-ar${CMAKE_EXECUTABLE_SUFFIX})
set(CMAKE_ASM_COMPILER              ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-gcc${CMAKE_EXECUTABLE_SUFFIX})
set(CMAKE_C_COMPILER                ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-gcc${CMAKE_EXECUTABLE_SUFFIX})
set(CMAKE_CXX_COMPILER              ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-g++${CMAKE_EXECUTABLE_SUFFIX})
set(CMAKE_LINKER                    ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-ld${CMAKE_EXECUTABLE_SUFFIX})
set(CMAKE_OBJCOPY                   ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-objcopy${CMAKE_EXECUTABLE_SUFFIX} CACHE INTERNAL "")
set(CMAKE_RANLIB                    ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-ranlib${CMAKE_EXECUTABLE_SUFFIX} CACHE INTERNAL "")
set(CMAKE_SIZE                      ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-size${CMAKE_EXECUTABLE_SUFFIX} CACHE INTERNAL "")
set(CMAKE_STRIP                     ${RISCV_TOOLCHAIN_PATH}/${RISCV_TOOLCHAIN_PREFIX}-strip${CMAKE_EXECUTABLE_SUFFIX} CACHE INTERNAL "")

#set(CMAKE_C_FLAGS                   "--specs=nano.specs -lc -lgcc -lm -march=rv32im -mabi=ilp32 -mcmodel=medany -T/home/rnayabed/code/rnayabed/taurus/common/mbl.lds -Wl,--gc-sections -Wl,-Map=${OUTPUT_NAME}.map -nostartfiles -fno-builtin-printf -fno-builtin-puts -fdata-sections -ffunction-sections -fno-builtin-memcmp" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS                 "${CMAKE_C_FLAGS}" CACHE INTERNAL "")

#set(CMAKE_C_FLAGS_DEBUG             "-Og -g" CACHE INTERNAL "")
#set(CMAKE_C_FLAGS_RELEASE           "-O3 -DNDEBUG" CACHE INTERNAL "")
#set(CMAKE_CXX_FLAGS_DEBUG           "${CMAKE_C_FLAGS_DEBUG}" CACHE INTERNAL "")
#set(CMAKE_CXX_FLAGS_RELEASE         "${CMAKE_C_FLAGS_RELEASE}" CACHE INTERNAL "")



set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)
