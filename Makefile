DEST            := $(HOME)/bin
TARGET_EXCLUDES := README.md LICENSE Makefile
TARGET_FILES    := $(filter-out $(TARGET_EXCLUDES), $(wildcard *))

help:
	cat Makefile

install:
	@$(foreach val, $(TARGET_FILES), ln -sfnv $(abspath $(val)) $(DEST)/$(val);)

