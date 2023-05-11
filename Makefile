# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fle-tolg  <fle-tolg@student.42angouleme    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/27 11:57:23 by fle-tolg          #+#    #+#              #
#    Updated: 2023/05/11 14:28:27 by fle-tolg         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RED=\033[0;31m
GREEN=\033[0;32m
BLUE=\033[0;34m
END=\033[0m

NAME = libft.a

CFLAGS = -Wextra -Wall -Werror -I./inc/

CC = clang -g

AR = ar rcs

RM = rm -f

OBJ = $(SRC:.c=.o)

SRC =	src/ft_isprint.c\
	src/ft_putchar_fd.c\
	src/ft_strjoin.c\
	src/ft_strtrim.c\
	src/ft_atoi.c\
	src/ft_itoa.c\
	src/ft_putendl_fd.c\
	src/ft_strlcat.c \
	src/ft_substr.c\
	src/ft_bzero.c\
	src/ft_putnbr_fd.c\
	src/ft_strlcpy.c\
	src/ft_tolower.c\
	src/ft_calloc.c\
	src/ft_memchr.c\
	src/ft_putstr_fd.c\
	src/ft_strlen.c\
	src/ft_toupper.c\
	src/ft_isalnum.c\
	src/ft_memcmp.c\
	src/ft_split.c\
	src/ft_split_utils.c\
	src/ft_strmapi.c\
	src/ft_isalpha.c\
	src/ft_memcpy.c\
	src/ft_strchr.c\
	src/ft_strncmp.c\
	src/ft_isascii.c\
	src/ft_memmove.c\
	src/ft_strdup.c\
	src/ft_strnstr.c\
	src/ft_isdigit.c\
	src/ft_memset.c\
	src/ft_striteri.c\
	src/ft_strrchr.c\
	src/ft_strchr_char.c\
	src/ft_lstnew.c\
	src/ft_lstadd_back.c\
	src/ft_lstsize.c\
	src/ft_lstadd_front.c\
	src/ft_lstdelone.c\
	src/ft_lstclear.c\
	src/ft_lstiter.c\
	src/ft_lstlast.c\
	src/ft_lstmap.c\
	src/db_lstnew.c\
	src/db_lstadd_back.c\
	src/db_lstsize.c\
	src/db_lstadd_front.c\
	src/db_lstdelone.c\
	src/db_lstclear.c\
	src/db_lstlast.c\
	src/db_lstfirst.c\
	src/ft_putnbr_base_fd.c\
	src/ft_printf.c\
	src/ft_printf_utils.c\
	src/ft_fprintf.c\
	src/ft_fprintf_utils.c\
	src/get_next_line.c\
	src/get_next_line_zero.c

%.o: %.c
	@$(CC) $(CFLAGS) -c -o $@ $<

$(NAME) : ${OBJ}
	@$(AR) $(NAME) $(OBJ)
	@echo "${GREEN}Libft.a created"

all : $(NAME)

clean :
	@$(RM) $(OBJ) $(OBJ_BONUS)
	@echo "${RED}Libft clean"

fclean :
	@$(RM) $(NAME) $(OBJ) $(OBJ_BONUS)
	@echo "${RED}Libft fclean"

norme :
	norminette

re :	fclean all

.PHONY :
	all clean fclean re
