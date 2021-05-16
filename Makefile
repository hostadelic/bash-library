all: program-template-standalone program-template
.PHONY: all

program-template-standalone: program-template-header *.bash program-template-footer
	cat $^ > $@


program-template: program-template-header program-template-footer
	cp $< $@
	for lib in *.bash; do \
	   printf ". \$$SCRIPTDIR/../libexec/bash/$$lib\n"; \
	done >> $@
	echo >> $@
	cat program-template-footer >> $@

clean:
	:

distclean:
	rm -f -- program-template program-template-standalone
