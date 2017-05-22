CC = xelatex
SRC = src
BUILD = build
RESUME_DIR = $(SRC)/resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

all: clean resume coverletter

resume: $(SRC)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(BUILD) $<

coverletter: $(SRC)/coverletter.tex
	$(CC) -output-directory=$(BUILD) $<

clean:
	rm -rf $(BUILD)/*
