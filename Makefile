# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ikhadem <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/18 15:21:13 by ikhadem           #+#    #+#              #
#    Updated: 2019/10/21 12:36:13 by ikhadem          ###   ########.fr        #
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

OBJECT = ft_memset.o ft_bzero.o ft_memcpy.o ft_memccpy.o ft_memmove.o\
	ft_memchr.o ft_isupper.o ft_memcmp.o ft_strlen.o ft_split.o ft_strstr.o\
	ft_atoi.o ft_itoa.o ft_memcpy.o ft_strchr.o ft_strtrim.o ft_strdup.o\
	ft_strtrimsp.o ft_calloc.o ft_strjoin.o ft_substr.o ft_isalnum.o\
	ft_putchar.o ft_strlcat.o ft_tolower.o ft_isalpha.o ft_putchar_fd.o\
	ft_strlcpy.o ft_toupper.o ft_isascii.o ft_putendl.o ft_isblank.o\
	ft_putendl_fd.o ft_strmapi.o ft_isdigit.o ft_putnbr.o ft_strncmp.o\
	ft_islower.o ft_putnbr_fd.o ft_strncpy.o ft_isprint.o ft_putstr.o\
	ft_strnstr.o ft_isspace.o ft_putstr_fd.o ft_strrchr.o 

B_OBJECT = ft_lstadd_back_bonus.o ft_lstadd_front_bonus.o ft_lstclear_bonus.o\
		ft_lstdelone_bonus.o ft_lstiter_bonus.o ft_lstlast_bonus.o\
		ft_lstnew_bonus.o ft_lstsize_bonus.o

FLAG = -Wextra -Werror -Wall
INCLUDE = ./

NAME = libft.a

all:$(NAME)

$(NAME) :
		gcc $(FLAG) -c $(SRC)
		ar rc $(NAME) $(OBJECT)
		ranlib $(NAME)

clean :
	rm -f $(OBJECT) $(B_OBJECT)

fclean : clean
		rm -f $(NAME)

re : fclean all 

bonus : 
		gcc $(FLAG) -c $(SRC) $(B_SRC)
		ar rc $(NAME) $(OBJECT) $(B_OBJECT)
		ranlib $(NAME)
