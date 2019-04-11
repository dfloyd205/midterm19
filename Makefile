CFLAGS = -I ./include

all: mid19 unittest

mid19: mid19.cpp
	g++ mid19.cpp -Wall -omid19 
unittest: mid19.cpp
	g++ mid19.cpp -Wall -DUNITTEST -ounittest

clean:
	rm -f mid19
	rm -f unittest
	rm -f *.o
