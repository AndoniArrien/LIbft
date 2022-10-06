NAME = libft.a
SRC = $(wildcard *.c)
B_SRC = $(wildcard *bonus.c)
OBJS = $(SRC:.c=.o)
B_OBJS = $(BSRC:.c=.o)
AR = ar rcs
CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.c
	gcc $(CFLAGS) -c $<

bonus: $(B_OBJS) $(OBJS)
	$(AR) $(NAME) $(B_OBJS) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
