NAME = libaoc.a
EXE = exe.out
HEADER = Includes/aoc.h
UTILS = Utils/*.c
OBJECTS = *.o

A_LIBFT = libft.a
H_LIBFT = Libft/libft.h
S_LIBFT = Libft/*.c

run:
	@./a.out

1: fclean
	@gcc -g $(HEADER) $(UTILS) Programs/d1.c
	@echo "Compiled 'Day 1, Exercise 1 and 2'!"
	@./a.out

1e1: 1
1e2: 1

2e1:
	@gcc -g $(HEADER) $(UTILS) Programs/d2e1.c
	@echo "Compiled 'Day 2, Exercise 1'!"
	@./a.out

2e2:
	@gcc -g $(HEADER) $(UTILS) Programs/d2e2.c
	@echo "Compiled 'Day 2, Exercise 2'!"
	@./a.out

3e1:
	@gcc -g $(HEADER) $(UTILS) Programs/d3e1.c Libft/ft_substr.c
	@echo "Compiled 'Day 3, Exercise 1'!"
	@./a.out

3e2:
	@gcc -g $(HEADER) $(UTILS) Programs/d3e2.c
	@echo "Compiled 'Day 3, Exercise 2'!"
	@./a.out

4:
	@gcc -g $(HEADER) $(UTILS) Programs/d4.c Libft/ft_isdigit.c
	@echo "Compiled 'Day 4, Exercise 1 and 2'!"
	@./a.out

4e1: 4
4e2: 4

5e1:
	@gcc -g $(HEADER) $(UTILS) Programs/d5e1.c Libft/ft_substr.c Libft/ft_isdigit.c
	@echo "Compiled 'Day 5, Exercise 1'!"
	@./a.out

5e2:
	@gcc -g $(HEADER) $(UTILS) Programs/d5e2.c Libft/ft_substr.c Libft/ft_isdigit.c
	@echo "Compiled 'Day 5, Exercise 2'!"
	@./a.out

6:
	@gcc -g Includes/aoc.h Utils/*.c Programs/d6.c
	@echo "Compiled 'Day 6, Exercise 1 and 2'!"
	@./a.out

6e1: 6
6e2: 6

clean:
	@/bin/rm -f $(OBJECTS)
	@echo "Objects are gone!"

fclean: clean
	@/bin/rm -f $(NAME) a.out
	@echo "All clean!"

re: fclean run
.PHONY: run