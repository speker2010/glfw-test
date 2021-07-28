LIB_INCLUDES=/usr/local/include/
LIB_LIB=/usr/local/lib/
FLAGS = 
GLAD =
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	FLAGS += -I$(LIB_INCLUDES) -L$(LIB_LIB) -lglfw
	GLAD += glad_mac.c
endif
ifeq ($(UNAME_S),Linux)
	FLAGS += -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl
	GLAD += glad.c
endif
hello: hello.cpp
	g++ -Wall -o hello hello.cpp $(GLAD) $(FLAGS)
