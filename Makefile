FLAGS = 
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	FLAGS += -lglfw
endif
ifeq ($(UNAME_S),Linux)
	FLAGS += -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl
endif
hello: hello.cpp glad.o
	g++ -Wall -o hello hello.cpp glad.o $(FLAGS)

glad.o: glad.c
	gcc -Wall -c -o glad.o glad.c
