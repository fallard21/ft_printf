# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tima <tima@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 15:43:25 by fallard           #+#    #+#              #
#    Updated: 2020/06/19 23:37:45 by tima             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
INC_NAME = ft_printf.h
LIBFT = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = sources/
INC_DIR = includes/
LIB_DIR = libft/

SRC = ft_printf.c \
parse.c \
print_result.c \
print_flags.c \
base.c \
pf_itoa.c \
dec_numbers.c \
dec_treatment.c \
specifier.c \
macros.c \
floats.c \
float_valide.c \
float_round_up.c \
long_arithmetic_int.c \
long_arithmetic_frac.c \
long_float_treatment.c \
print_bin.c \
print_iso_time.c \
print_iso_func.c \
helpers.c

HEADER = $(addprefix $(INC_DIR), $(INC_NAME))
TMP = $(addprefix $(SRC_DIR), $(SRC:.c=.o))
LIB = $(addprefix $(LIB_DIR), $(LIBFT))

INCLUDES = -I $(INC_DIR) -I libft/includes

RD = \033[031m
GR = \033[032m
YW = \033[033m
BL = \033[034m
PK = \033[035m
CN = \033[036m
EOC = \033[0m

all: $(LIBFT) $(NAME)
	@printf "\n$(GR) >> $(NAME) created! <<$(EOC)\n"

$(NAME): $(TMP)
	@printf "$(PK)\nCopying $(LIBFT) to root directory...\n$(EOC)"
	@cp $(LIB) .
	@printf "$(PK)Rename $(LIBFT) to $(NAME)...\n$(EOC)"
	@mv $(LIBFT) $(NAME)
	@ar rc $(NAME) $(TMP)
	
%.o:%.c $(HEADER)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
	@printf "$(CN).$(EOC)"

$(LIBFT):
	@make -C $(LIB_DIR)

clean:
	@make clean -C $(LIB_DIR)
	@rm -f $(TMP)
	@printf "$(YW)Libftprintf: $(RD)Object files deleted!$(EOC)\n"

fclean: clean
	@make fclean -C $(LIB_DIR)
	@rm -f $(NAME)
	@printf "$(YW)Libftprintf: $(RD)$(NAME) and object files deleted!$(EOC)\n"

re: fclean all
