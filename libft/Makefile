# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fallard <fallard@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 15:43:25 by fallard           #+#    #+#              #
#    Updated: 2020/11/13 17:55:46 by fallard          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEAD_NAME = libft.h

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = sources/
INC_DIR = includes/

SRC = ft_atoi.c \
ft_bzero.c \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isprint.c \
ft_itoa.c \
ft_memalloc.c \
ft_calloc.c \
ft_memccpy.c \
ft_memchr.c \
ft_memcmp.c \
ft_memcpy.c \
ft_memdel.c \
ft_memmove.c \
ft_memset.c \
ft_putchar.c \
ft_putchar_fd.c \
ft_putendl.c \
ft_putendl_fd.c \
ft_putnbr.c \
ft_putnbr_fd.c \
ft_putstr.c \
ft_putstr_fd.c \
ft_strcat.c \
ft_strchr.c \
ft_strclr.c \
ft_strcmp.c \
ft_strcpy.c \
ft_strdel.c \
ft_strdup.c \
ft_strequ.c \
ft_striter.c \
ft_striteri.c \
ft_strjoin.c \
ft_strjoin_free.c \
ft_strlcat.c \
ft_strlen.c \
ft_strmap.c \
ft_strmapi.c \
ft_strncat.c \
ft_strncmp.c \
ft_strncpy.c \
ft_strnequ.c \
ft_strnew.c \
ft_strnstr.c \
ft_strrchr.c \
ft_strsplit.c \
ft_strstr.c \
ft_strsub.c \
ft_strtrim.c \
ft_tolower.c \
ft_toupper.c \
ft_swap.c \
ft_factorial.c \
ft_abs.c \
ft_lstnew.c \
ft_lstdelone.c \
ft_lstdel.c \
ft_lstadd.c \
ft_lstiter.c \
ft_lstmap.c \
get_next_line.c \
ft_splitdel.c \
ft_itoa_base.c \
ft_sort.c

HEADER = $(addprefix $(INC_DIR), $(HEAD_NAME))
TMP = $(addprefix $(SRC_DIR), $(SRC:.c=.o))

INCLUDES = -I $(INC_DIR)

RD = \033[031m
GR = \033[032m
YW = \033[033m
BL = \033[034m
PK = \033[035m
CN = \033[036m
EOC = \033[0m

all: $(NAME)
	
$(NAME): $(TMP) $(HEADER)
	@ar rc $(NAME) $(TMP)
	@printf "\n$(GR)>> Libft created <<$(EOC)\n"

%.o:%.c $(HEADER)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
	@printf "$(CN).$(EOC)"

clean:
	@rm -f $(TMP)
	@printf "$(YW)Libft: $(RD)Object files deleted.$(EOC)\n"

fclean: clean
	@rm -f $(NAME)
	@printf "$(YW)Libft: $(RD)$(NAME) deleted.$(EOC)\n"

re: fclean all
