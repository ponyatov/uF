CURL   = curl -L -o
CF     = clang-format -style=file -i
GITREF = git clone -o gh --depth 1
ESPY   = $(ESP)/esptool/bin/python3 $(ESP)/esptool/esptool.py

espy: $(ESPY)
	$^
