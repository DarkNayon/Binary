#!/bin/bash

SRC=$(ls -R | grep -F ".c")
CFLAG="-I./include"

printf "##\n## EPITECH PROJECT, 2018\n## Makefile\n## File description:\n## made by Y. MILANESIO\n##\n\n" >> Makefile

printf "NAME\t=\t\t $1\n\n" >> Makefile

printf "SRC\t=" >> Makefile

for ligne in $SRC; do
	printf "\t\t\t%s %c\n" "`find -name $ligne`" "\\" >> Makefile
done
	printf "\n" >> Makefile

printf "OBJ\t=\t\t \$(SRC:.c=.o)\n\n" >> Makefile

printf "CFLAGS\t=\t\t%s\n\n" "$CFLAG" >> Makefile

printf "LDFLAG\t=\t\t-Wall -Wextra -w\n\n" >> Makefile

printf "all:\t\t\t\$(NAME)\n\n" >> Makefile

printf "\$(NAME):\t\t\$(OBJ)\n\t\t\tcc -o \$(NAME) \$(OBJ) \$(LDFLAG)\n\n" >> Makefile

printf "clean:\n\t\t\trm -f \$(OBJ)\n\n" >> Makefile

printf "fclean:\t\t\tclean\n\t\t\trm -f \$(NAME)\n\n" >> Makefile

printf "re:\t\t\tfclean all\n\n" >> Makefile
