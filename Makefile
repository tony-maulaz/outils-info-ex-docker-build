EXEC=app

CC=g++
CFLAGS+= -std=c++17 -Wall -g
CFLAGS+= -Iinclude
LDLIBS:= -lm

ODIR:=obj

SRC := $(wildcard *.cpp) $(wildcard **/*.cpp)
OBJS = $(patsubst %,$(ODIR)/%,$(SRC:.cpp=.o))

all: $(EXEC)

-include $(ODIR)/*.d

$(EXEC): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS) $(LDLIBS)

$(ODIR)/%.o: %.cpp | $(ODIR)
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@ -MMD -MF $(@:.o=.d)

$(ODIR):
	mkdir $@

clean:
	$(RM) $(EXEC)
	$(RM) -rf $(ODIR)

.PHONY:	clean all test
.DEFAULT: all