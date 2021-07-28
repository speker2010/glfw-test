LIB_INCLUDES=/usr/local/include/
LIB_LIB=/usr/local/lib/
hello: hello.cpp
	g++ -Wall -o hello hello.cpp glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl