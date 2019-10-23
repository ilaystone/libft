# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ikhadem <ikhadem@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/18 15:21:13 by ikhadem           #+#    #+#              #
#    Updated: 2019/10/23 07:07:25 by ikhadem          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c\
	ft_isupper.c ft_memcmp.c ft_strlen.c ft_split.c ft_strstr.c\
	ft_atoi.c ft_itoa.c ft_memcpy.c ft_strchr.c ft_strtrim.c ft_strdup.c\
	ft_strtrimsp.c ft_calloc.c ft_strjoin.c ft_substr.c ft_isalnum.c\
	ft_putchar.c ft_strlcat.c ft_tolower.c ft_isalpha.c ft_putchar_fd.c\
	ft_strlcpy.c ft_toupper.c ft_isascii.c ft_putendl.c ft_isblank.c\
	ft_putendl_fd.c ft_strmapi.c ft_isdigit.c ft_putnbr.c ft_strncmp.c\
	ft_islower.c ft_putnbr_fd.c ft_strncpy.c ft_isprint.c ft_putstr.c\
	ft_strnstr.c ft_isspace.c ft_putstr_fd.c ft_strrchr.c

B_SRC = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c\
		ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c\
		ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJ = $(SRC:.c=.o)

B_OBJ = $(B_SRC:.c=.o)

FLAG = -Wextra -Werror -Wall
INCLUDE = ./libft.h

NAME = libft.a

all:$(NAME)

$(NAME) : $(OBJ) 
		ar rcs $(NAME) $(OBJ)

bonus : $(B_OBJ)
		ar rcs $(NAME) $(B_OBJ)

%.o : %.c
		gcc $(FLAG) -I $(INCLUDE) -c $< -o $@

clean :
	rm -f $(OBJ) $(B_OBJ)

fclean : clean
		rm -f $(NAME)

re : fclean all 

rebonus : fclean bonus
