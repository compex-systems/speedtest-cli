#
#
# Makefile for speedtest
#
#
CFLAGS += -Wall -pedantic -std=gnu99
CFLAGS += -g
CFLAGS += -O2 -DNDEBUG
LDLIBS = -lpthread -lcurl -lexpat -lm

ifneq ($(CROSS_COMPILE),)
				CC = gcc
				CC := $(CROSS_COMPILE)$(CC)
				AR := $(CROSS_COMPILE)$(AR)
endif

BIN=speedtest-cli

.PHONY: all clean

all: $(BIN)

clean:
	-$(RM) *.o
	-$(RM) $(BIN)

speedtest-cli: main.c
	$(CC) $(CFLAGS) $(LDLIBS) -o
	speedtest-cli main.c
