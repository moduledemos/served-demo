CXX=g++
VERSION=c++17
OPTIMIZATION_LEVEL=2
ARCH=native
CFLAGS= -std=$(VERSION) -O$(OPTIMIZATION_LEVEL) -march=$(ARCH)
CMFLAGS= $(CFLAGS) -pthread -lboost_system -lserved

FILES=main.cpp

.PHONY: clean all
.ONESHELL:

all: demo
demo:
	$(CXX) $(FILES) -o demo $(CMFLAGS) 
clean: 
	-rm -f demo