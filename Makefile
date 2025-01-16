ROOT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
SRC_DIR := $(abspath $(ROOT_DIR)/site)
OUT_DIR := $(abspath $(ROOT_DIR)/output)

# Defaults
default: build

.PHONY: build
build: $(OUT_DIR)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)
	cp  -r $(SRC_DIR)/* $(OUT_DIR)

.PHONY: clean
clean:
	rm -rf $(OUT_DIR)

