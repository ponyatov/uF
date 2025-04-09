LX106_SDK = xtensa-lx106-elf-gcc8_4_0-esp-$(LX106_VER)-linux-amd64
LX106_GZ  = $(LX106_SDK).tar.gz

$(ESP)/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc: $(DISTR)/ESP/$(LX106_GZ)
	mkdir -p $(ESP) ; cd $(ESP) ; tar zx < $< && touch $@
$(DISTR)/ESP/$(LX106_GZ):
	$(CURL) $@ https://dl.espressif.com/dl/$(LX106_GZ)

RTOS8266     = ESP8266_RTOS_SDK-v$(RTOS8266_VER)
RTOS8266_GZ  = $(RTOS8266).zip
RTOS8266_URL = https://github.com/espressif/ESP8266_RTOS_SDK/releases/download/v$(RTOS8266_VER)

$(ESP)/ESP8266_RTOS_SDK/README.md: $(DISTR)/ESP/$(RTOS8266_GZ)
	unzip -d $(ESP) $< && touch $@
$(DISTR)/ESP/$(RTOS8266_GZ):
	$(CURL) $@ $(RTOS8266_URL)/$(RTOS8266_GZ)
