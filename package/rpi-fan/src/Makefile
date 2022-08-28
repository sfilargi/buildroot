.DEFAULT_GOAL=

pwm.o: pwm.c bcm2835.h
	$(CC) $(CFLAGS) -c -Wall -Werror -o pwm.o pwm.c

bcm2835.o: bcm2835.c bcm2835.h
	$(CC) $(CFLAGS) -c -Wall -Werror -o bcm2835.o bcm2835.c

all: pwm.o bcm2835.o
	$(CC) $(CFLAGS) -Wall -Werror -o rpi-fan bcm2835.o pwm.o
