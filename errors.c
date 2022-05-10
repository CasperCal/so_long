/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   errors.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccaluwe <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/09 17:06:11 by ccaluwe           #+#    #+#             */
/*   Updated: 2022/05/09 17:06:12 by ccaluwe          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "basics.h"
#include "ft_printf/ft_printf.h"

/* Returns 0 printing <message> */
int	error(char *message)
{
	ft_printf(" Error\n    %s\n", message);
	return (0);
}

/* Returns NULL printing <message>*/
void	*null_error(char *message)
{
	ft_printf(" Error\n %s\n", message);
	return (0);
}

/* Prints <message> */
void	print_warning(char *message)
{
	ft_printf(" Warning\n %s\n", message);
}
