DEST            := $(HOME)/bin
TARGET_EXCLUDES := README.md LICENSE Makefile
TARGET_FILES    := $(filter-out $(TARGET_EXCLUDES), $(wildcard *))

help:
	cat Makefile

$(DEST):
	mkdir -p $@

install:
	chmod 755 *
	@$(foreach val, $(TARGET_FILES), ln -sfnv $(abspath $(val)) $(DEST)/$(val);)

