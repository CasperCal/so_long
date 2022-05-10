# so_long

A project made for the 19 coding school, part of the 42 network. 

The main goal of this project was to get familiar with get fimiliar with the school's graphics library(MiniLibX), which can be unintuitive to use.

The lib lacks any real documentation so a massive thanks to [harm-smits](https://harm-smits.github.io/42docs/libs/minilibx), for providing the needed documentation to get started.

The program will take a .ber map file and turn it into a small top town game in which you have to collect all the collectibles (weeds) and exit the level.

As with all projects for the 19 coding school we were only allowed to use a very limited set of functions.


# Norme

Code was written in a style to be in accordance with the [normev3](https://github.com/42School/norminette) rules.

# Usage

You can compile the so_long program with make, remove the objects with clean and remove everything with fclean. The program will compile using gcc and -Wall -Wextra -Werror flags.

To run the program simply run ./so_long <path/to/map.ber>.

# Approach

First the program will read th map and check if it's valid (surrounded by walls, only valid characters like: E, C, P, 0, 1, etc, It will not check for a valid route, as specified by the subject.

After which it will turn this map into a structure that stores the location of all elements. 

The program will mlx_xpm_file_to_image() the needed sprites and store them inside a structure depending on the element. After which it runs through the map and uses mlx_put_image_to_window() to display the sprites in the correct places.

It will wait for input and adjust the map accordingly + rerender it each frame.
