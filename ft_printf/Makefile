# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccaluwe <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/09 16:35:27 by ccaluwe           #+#    #+#              #
#    Updated: 2022/03/09 16:36:30 by ccaluwe          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= ft_printf.a
CC	= gcc
CFLAGS	= -Wall -Wextra -Werror
RM	= /bin/rm -f
INCLUDE = ft_printf.h

SRC	=	ft_printf.c ft_perc.c ft_printdec.c ft_printchar.c ft_printstr.c \
			ft_printintdec.c ft_unsigndec.c ft_hexa_up.c ft_hexa_low.c ft_void_hex.c \
			ft_printf_utils.c

OBJ	= $(SRC:.c=.o)

NONE='\033[0m'
GREEN='\033[32m'
GRAY='\033[2;37m'
CURSIVE='\033[3m'

all:	$(NAME)

$(NAME):	$(OBJ) $(INCLUDE)
			@echo $(CURSIVE)$(GRAY)"		-Generating $(NAME)..." $(NONE)
			@ar rc $(NAME) $(OBJ)

.c.o:		$(SRC)
			@echo $(CURSIVE)$(GRAY)"		-Compiling ft_printf..." $(NONE)
			@$(CC) $(CFLAGS)	-c $(SRC)
clean: 
		@echo $(CURSIVE)$(GRAY)"		-Removing printf objects..." $(NONE)
		@$(RM) $(OBJ)

fclean:		clean
			@echo $(CURSIVE)$(GRAY)"		-Removing $(NAME)..." $(NONE)
			@$(RM) $(NAME)

re:		fclean all

.PHONY:	all clean fclean re
