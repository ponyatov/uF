set(CMAKE_SYSTEM_NAME       Generic)
set(CMAKE_SYSTEM_PROCESSOR  lx106)
set(TOOLCHAIN_PREFIX        xtensa-lx106-elf)
set(CMAKE_CROSS_COMPILING   true)
set(CMAKE_EXECUTABLE_SUFFIX ".esp8266")

include(any_toolchain)

set(ESP /home/dponyatov/esp)

set(CMAKE_C_COMPILER   ${ESP}/${TOOLCHAIN_PREFIX}/bin/${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER})
set(CMAKE_CXX_COMPILER ${ESP}/${TOOLCHAIN_PREFIX}/bin/${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_LINKER       ${CMAKE_C_COMPILER})
set(CMAKE_OBJCOPY      ${ESP}/${TOOLCHAIN_PREFIX}/bin/${TOOLCHAIN_PREFIX}-objcopy)
set(CMAKE_SIZE         ${ESP}/${TOOLCHAIN_PREFIX}/bin/${TOOLCHAIN_PREFIX}-size)

add_compile_options(
    -ffunction-sections -fdata-sections
    -DXTENSA -DESP8266
    $<$<COMPILE_LANGUAGE:CXX>:-nostdinc++>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-threadsafe-statics>
    $<$<COMPILE_LANGUAGE:ASM>:-x$<SEMICOLON>assembler-with-cpp>
    $<$<COMPILE_LANGUAGE:ASM>:-MMD>
    $<$<COMPILE_LANGUAGE:ASM>:-MP>
    # -I${ESP}/${TOOLCHAIN_PREFIX}/${TOOLCHAIN_PREFIX}/include
)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
add_link_options(
    # -L${ESP}/${TOOLCHAIN_PREFIX}/${TOOLCHAIN_PREFIX}/lib
    # -T ${CMAKE_SOURCE_DIR}/hw/${HW}/${CPU_}x_FLASH.ld
    # --specs=nano.specs
    # -Wl,--start-group -lc -lm -lnosys   -Wl,--end-group
    # -Wl,--start-group -lstdc++ -lsupc++ -Wl,--end-group
    # -Wl,-Map=${CMAKE_PROJECT_NAME}.map -Wl,--gc-sections
)
