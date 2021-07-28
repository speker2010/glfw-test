LIB_INCLUDES=/usr/local/include/
LIB_LIB=/usr/local/lib/
FLAGS = 
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	FLAGS += -I$(LIB_INCLUDES) -L$(LIB_LIB) -lglfw
endif
ifeq ($(UNAME_S),Linux)
	FLAGS += -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl
endif
hello: hello.cpp
	g++ -Wall -o hello hello.cpp glad.c $(FLAGS)
