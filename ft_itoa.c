/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ikhadem <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 13:04:15 by ikhadem           #+#    #+#             */
/*   Updated: 2019/10/18 13:26:58 by ikhadem          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char		*ft_itoa_neg(int c)
{
	char *res;

	if (!(res = (char *)malloc(sizeof(char) * 10)))
		return (NULL);
	*--res = '\0';
	*--res = -(c % 10) + '0';
	c = c / 10;
	while (c != 0)
	{
		*--res = -(c % 10) + '0';
		c = c / 10;
	}
	*--res = '-';
	return (ft_strdup(res));
}

static char		*ft_itoa_pos(int c)
{
	char *res;

	if (!(res = (char *)malloc(sizeof(char) * 10)))
		return (NULL);
	*--res = '\0';
	*--res = c % 10 + '0';
	c = c / 10;
	while (c != 0)
	{
		*--res = c % 10 + '0';
		c = c / 10;
	}
	return (ft_strdup(res));
}

char			*ft_itoa(int c)
{
	if (c < 0)
		return (ft_itoa_neg(c));
	else
		return (ft_itoa_pos(c));
}
