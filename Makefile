# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fallard <fallard@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 15:43:25 by fallard           #+#    #+#              #
#    Updated: 2020/11/13 17:59:10 by fallard          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

HEAD_NAME = ft_printf.h ft_printf_private.h
LIB_NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = sources/
INC_DIR = includes/
LIB_DIR = libft/

SRC = ft_printf.c \
parse.c \
print_result.c \
print_flags.c \
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
helpers.c \
pf_color.c

HEADER = $(addprefix $(INC_DIR), $(INC_NAME))
TMP = $(addprefix $(SRC_DIR), $(SRC:.c=.o))
LIBFT = $(addprefix $(LIB_DIR), $(LIB_NAME))

INCLUDES = -I $(INC_DIR) -I $(LIB_DIR)$(INC_DIR)

RD = \033[031m
GR = \033[032m
YW = \033[033m
BL = \033[034m
PK = \033[035m
CN = \033[036m
EOC = \033[0m

all: $(LIBFT) $(NAME)

$(NAME): $(TMP) $(HEADER)
	@printf "$(PK)\nCopying $(LIBFT) to root directory...\n$(EOC)"
	@cp $(LIBFT) .
	@printf "$(PK)Rename $(LIBFT) to $(NAME)...\n$(EOC)"
	@mv $(LIB_NAME) $(NAME)
	@ar rc $(NAME) $(TMP)
	@printf "\n$(GR) >> Libftprintf created <<$(EOC)\n"
	
%.o:%.c $(HEADER)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
	@printf "$(CN).$(EOC)"

FORCE:		;

$(LIBFT): FORCE
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
