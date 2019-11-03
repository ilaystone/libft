/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puthex.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ikhadem <ikhadem@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/03 16:16:25 by ikhadem           #+#    #+#             */
/*   Updated: 2019/11/03 16:34:26 by ikhadem          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_puthex(int n)
{
	unsigned int	nbr;
	int				sign;

	if (n < 0)
	{
		nbr = -n;
		sign = -1;
	}
	else
	{
		nbr = n;
		sign = 1;
	}
	if (nbr >= 16)
		ft_puthex(nbr / 16);
	ft_putchar(nbr % 16 >= 10 ? nbr % 16 + 87 : nbr % 16 + 48);
}
