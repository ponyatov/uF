LX106_SDK = xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64
LX106_GZ  = $(LX106_SDK).tar.gz
$(DISTR)/ESP/$(LX106_GZ):
	$(CURL) $@ https://dl.espressif.com/dl/$(LX106_GZ)
