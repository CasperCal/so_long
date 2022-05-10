NAME = so_long

SRC = $(MAIN_SRC) $(SRC_ERR) $(SRC_GNL) $(SRC_MAP) $(SRC_GAME)

MAIN_SRC = main.c errors.c

LIBFT_A = libft.a
LIBF_DIR = libft/
LIBFT  = $(addprefix $(LIBF_DIR), $(LIBFT_A))
PRINTF_A = ft_printf.a
PRINTF_DIR = ft_printf/
PRINTF = $(addprefix $(PRINTF_DIR), $(PRINTF_A))

GNL = get_next_line.c get_next_line_utils.c
SRC_GNL = $(addprefix gnl/, $(GNL))

MAP = 	map_reader.c map_checker.c map_checker_utils.c \
		tilemap_generator.c
SRC_MAP = $(addprefix mapgen/, $(MAP))

GAME =	game_init.c open_images.c open_wall_images.c open_panel.c \
		input.c player_movement.c player_end.c update.c \
		render.c draw_wall.c \
		reset.c end_program.c
SRC_GAME = $(addprefix game/, $(GAME))

OBJ = *.o

FLAGS = -Wall -Wextra -Werror
INCLUDE = -lmlx -framework OpenGL -framework AppKit

NONE='\033[0m'
GREEN='\033[32m'
YELLOW='\033[33m'
GRAY='\033[2;37m'
CURSIVE='\033[3m'

all: $(NAME)

$(NAME): $(OBJ)
	@echo $(CURSIVE)$(GRAY) "     - Making libft + ft_printf" $(NONE)
	@make -C $(LIBF_DIR)
	@make -C $(PRINTF_DIR)
	@echo $(CURSIVE)$(GRAY) "     - Compiling $(NAME)..." $(NONE)
	@gcc $(FLAGS) $(OBJ) $(LIBFT) $(PRINTF) $(INCLUDE) -o $(NAME)
	@echo $(GREEN)"- Compiled -"$(NONE)

$(OBJ): $(SRC)
	@echo $(CURSIVE)$(GRAY) "     - Making object files..." $(NONE)
	@gcc $(FALGS) -c $(SRC)

clean:
	@echo $(CURSIVE)$(GRAY) "     - Removing object files..." $(NONE)
	@rm -rf $(OBJ)
	@make -C $(LIBF_DIR) clean
	@make -C $(PRINTF_DIR) clean

fclean: clean
	@echo $(CURSIVE)$(GRAY) "     - Removing $(NAME)..." $(NONE)
	@rm -rf $(NAME)
	@make -C $(LIBF_DIR) fclean
	@make -C $(PRINTF_DIR) fclean

re: fclean all