NAME		=	program
CC			=	gcc
CFLAGS		=	-Wall -Werror -Wextra

SRCS		=	main.c
SRCS_DIR	=	./srcs
SRCS_PTH	=	$(addprefix $(SRCS_DIR)/, $(SRCS))

OBJS		=	$(SRCS:.c=.o)
OBJS_DIR	=	./objs
OBJS_PTH	=	$(addprefix $(OBJS_DIR)/, $(OBJS))
DIR_GUARD	=	mkdir -p $(@D)

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.c
	$(DIR_GUARD)
	$(CC) $(CFLAGS) -c $^ -o $@

$(NAME): $(OBJS_PTH)
	$(CC) $(CFLAGS) $(OBJS_PTH) -o $(NAME)

all: $(NAME)

clean:
	rm -rf $(OBJS_DIR)

fclean: clean
	rm -f $(NAME)

.PHONY: all clean fclean