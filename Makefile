# Build the CV PDFs from the Typst sources in cv/
#
#   make cv          general version (EN + ES), the one linked from the README
#   make variants    data and backend focus (EN + ES) into cv/out/, not committed.
#                    Same content as the general CV; only title, summary and order change.
#   make all         both
#   make watch LANG=en FOCUS=backend   live rebuild while editing
CV_DIR := cv
OUT    := $(CV_DIR)/out
SRC    := $(CV_DIR)/lib.typ $(CV_DIR)/profile.jpg
FOCUSES := data backend
LANGS   := en es
LANG  ?= en
FOCUS ?= general

upper = $(shell echo $(1) | tr a-z A-Z)

.PHONY: all cv variants watch clean

all: cv variants

cv: $(CV_DIR)/Sebastian_Garnica_CV_EN.pdf $(CV_DIR)/Sebastian_Garnica_CV_ES.pdf

$(CV_DIR)/Sebastian_Garnica_CV_%.pdf: $(SRC) $(CV_DIR)/en.typ $(CV_DIR)/es.typ
	typst compile $(CV_DIR)/$(shell echo $* | tr A-Z a-z).typ $@

variants: $(foreach f,$(FOCUSES),$(foreach l,$(LANGS),$(OUT)/Sebastian_Garnica_CV_$(call upper,$(l))_$(f).pdf))

$(OUT)/Sebastian_Garnica_CV_EN_%.pdf: $(SRC) $(CV_DIR)/en.typ | $(OUT)
	typst compile --root $(CV_DIR) --input focus=$* $(CV_DIR)/en.typ $@

$(OUT)/Sebastian_Garnica_CV_ES_%.pdf: $(SRC) $(CV_DIR)/es.typ | $(OUT)
	typst compile --root $(CV_DIR) --input focus=$* $(CV_DIR)/es.typ $@

$(OUT):
	mkdir -p $@

watch:
	typst watch --input focus=$(FOCUS) $(CV_DIR)/$(LANG).typ $(OUT)/watch_$(LANG)_$(FOCUS).pdf

clean:
	rm -rf $(OUT)
