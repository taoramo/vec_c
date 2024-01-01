NAME	=	libvec.a
CFLAGS	=	-O3
WFLAGS	=	-Wall -Wextra -Werror -Wunreachable-code -Wpedantic -Wtype-limits
COMPILE	=	$(CC) $(CFLAGS) $(WFLAGS)

SRCS	=	ft_mem.c vec.c vec_iterators.c vec_operations.c vec_quicksort.c vec_strlcat.c vec_utils.c
OBJS	=	$(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)

%.o: %.c
	cc $(CFLAGS) $(WFLAGS) -c -o $@ $^
	ar rcs $(NAME) $@

clean:
	rm $(OBJS)

fclean: clean
	rm $(NAME)

re: fclean all

.PHONY: all test fclean clean re
