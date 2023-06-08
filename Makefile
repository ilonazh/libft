# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ilzhabur <ilzhabur@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/08 10:39:11 by ilzhabur          #+#    #+#              #
#    Updated: 2023/06/08 11:35:24 by ilzhabur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libft.a
CC			= 	cc
CFLAGS		= 	-Wall -Werror -Wextra
AR			=	ar rcs
RM			=	rm -rf
SRC			=	ft_memcpy.c ft_isalpha.c ft_memmove.c ft_strlcpy.c ft_strrchr.c \
				ft_atoi.c ft_isascii.c ft_memchr.c ft_memset.c ft_strlen.c \
				ft_tolower.c ft_bzero.c ft_isdigit.c ft_memcmp.c ft_strchr.c \
				ft_strncmp.c ft_toupper.c ft_isalnum.c ft_isprint.c ft_memcpy.c \
				ft_strlcat.c ft_strnstr.c ft_calloc.c ft_strdup.c ft_substr.c \
				ft_strjoin.c ft_strtrim.c ft_itoa.c ft_putchar_fd.c \
				ft_putstr_fd.c ft_putendl_fd.c ft_split.c ft_putnbr_fd.c \
				ft_strmapi.c ft_striteri.c ft_hexlen.c ft_numlen.c \
				ft_puthex.c ft_putnstr.c ft_strndup.c ft_lstnew.c \
				ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
				ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \
				printf/ft_printf.c printf/parse_string.c printf/print_char.c \
				printf/print_flags.c printf/print_hex.c printf/print_integer.c \
				printf/print_percent.c printf/print_pointer.c \
				printf/print_string.c printf/print_u.c \
				get_next_line/get_next_line_utils.c get_next_line/get_next_line.c


OBJ			=	$(SRC:.c=.o)

GREEN		=	\033[0;32m
BLUE		=	\033[0;36m
NC			=	\033[0m

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)
	@echo "${GREEN}$(NAME) library is generated! ✅ ${NC}"

all: $(NAME)

clean:
	@$(RM) $(OBJ)
	@echo "${BLUE}All .o files are erased! ${NC}"

fclean: clean
	@$(RM) $(NAME) 
	@echo "${BLUE}$(NAME) is erased! ${NC}"

re: fclean all

.PHONY: all clean fclean re