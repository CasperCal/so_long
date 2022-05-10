/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   put_nbr.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccaluwe <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/09 17:12:02 by ccaluwe           #+#    #+#             */
/*   Updated: 2022/05/09 17:12:05 by ccaluwe          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static void	writenbr(long long nbr, int fd)
{
	if (nbr < 0)
	{
		ft_putchar_fd('-', fd);
		writenbr(nbr * -1, fd);
	}
	else if (nbr > 0)
	{
		writenbr(nbr / 10, fd);
		ft_putchar_fd('0' + (nbr % 10), fd);
	}
}

/* Writes int <nbr> in the file descripted by <fd> as chars. */
void	ft_putnbr_fd(int nbr, int fd)
{
	if (nbr == 0)
		ft_putchar_fd('0', fd);
	else
		writenbr(nbr, fd);
}

/* Writes long int <nbr> in the file descripted by <fd> as chars. */
void	ft_putlong_fd(long nbr, int fd)
{
	if (nbr == 0)
		ft_putchar_fd('0', fd);
	else
		writenbr(nbr, fd);
}
