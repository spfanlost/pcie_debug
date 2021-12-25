
CC:=gcc
# CFLAGS = -g -W -Wall
CFLAGS = -g -Wall
LDFLAGS += -lreadline -lcurses -lpciaccess
APP_NAME := pci_debug
SOURCES := pci_debug.c

all: $(APP_NAME)

$(APP_NAME): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(APP_NAME) $(LDFLAGS)

clean:
	rm -f *.o
	rm -f $(APP_NAME)