OS   = bare
APT += gcc-xtensa-lx106 gdb-multiarch qemu-system-misc
# Debian has much more fresh gcc12
# GZ  += $(ESP)/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc
GZ += $(DISTR)/ESP/$(RTOS8266_GZ)
