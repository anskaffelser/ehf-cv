#!make

IDENTIFIER = ehf-cv
TITLE = EHF CV
RELEASE = 2026-07-15

RULES_IDENT = no.anskaffelser.ehf.cv
RULES_FOLDER = src
HAS_GIT_SUBMODULES := $(shell test -d .git -a -f .gitmodules && echo true || echo false)

include .build/ehf.makefile
