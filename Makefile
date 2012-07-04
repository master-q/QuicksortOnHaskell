SUBDIRS := $(wildcard */)

all run clean:
	@for i in $(SUBDIRS); do \
		$(MAKE) -C $$i $@; \
	done

.PHONY: all run clean $(SUBDIRS)
