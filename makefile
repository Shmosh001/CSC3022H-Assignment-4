#compiler name
CC=g++
#flags that need to be passed to the compiler
CCFLAGS=-std=c++11
#the libraries that are referenced
LIBS=-lm

#normal build rules
imageops: 	driver.o	Image.o	
		$(CC)	$(CCFLAGS)	Image.o driver.o -o imageops $(LIBS)
		
Image.o:	Image.cpp
		$(CC) $(CCFLAGS) Image.cpp -c

driver.o:	driver.cpp
		$(CC) $(CCFLAGS) driver.cpp -c
		
	
#if we want to clean all the compiled files	
#to clean all .o files
#to clean the driver file which is used to run the program
clean:
		@rm -f *.o
		@rm -f imageops
