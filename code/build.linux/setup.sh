#!/bin/env sh
# Copyright (C) 2022-2023 Ziqin Li, Sichuan University
# This code is licensed under MIT license.
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated  documentation files (the "Software")
# to deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

RED='\033[0;31m'
NC='\033[0m'
GCC_VERSION=$(/bin/gcc -dumpversion)

# check editor ed

[[ -f /usr/bin/ed ]] || printf "${RED}Please install editor ed.${NC}\n"

# check gcc multilib

[[ -f /usr/lib32/libstdc++.so ]] || printf "${RED}Please install gcc multilib.${NC}\n"

# check if Makefile.dep match the current machine.

[[ $(grep -c "${GCC_VERSION}" Makefile.dep) -gt "500" ]] || make depend
