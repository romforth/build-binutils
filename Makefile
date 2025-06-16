# Makefile : pull binutils and generate a makefile.gen to build it
#
# Copyright (c) 2025 Charles Suresh <romforth@proton.me>
# SPDX-License-Identifier: AGPL-3.0-only
# Please see the LICENSE file for the Affero GPL 3.0 license details

all : makefile.gen
	$(MAKE) -f makefile.gen
makefile.gen : ../binutils makegen
	./makegen list
../binutils :
	git clone --depth=1 https://github.com/romforth/binutils ../binutils
clean :
	rm -rf makefile.gen ../build
