LIB_INCLUDES=/usr/local/include/
LIB_LIB=/usr/local/lib/
hello: hello.cpp
	g++ -Wall -o hello hello.cpp glad.c -I$(LIB_INCLUDES) -L$(LIB_LIB) -lglfw 