# HW ?= pc
# HW ?= f429disco
# HW ?= pi800
HW ?= esp8266

ELF = $(BIN)/$(BINFILE).elf
DFU = $(BIN)/$(BINFILE).dfu

include   hw/$(HW)/$(HW).mk
include  cpu/$(CPU)/$(CPU).mk
include arch/$(ARCH)/$(ARCH).mk
include   os/$(OS)/$(OS).mk

.PHONY: elf
elf: $(ELF)

.PHONY: dfu
dfu: $(DFU)
$(DFU): $(ELF)
	~/elf2dfuse/bin/elf2dfuse $< $@

.PHONY: qemu
qemu: $(ELF)
	$(QEMU) $(QEMU_CFG) -S -kernel $<
