/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ikhadem <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 13:39:19 by ikhadem           #+#    #+#             */
/*   Updated: 2019/10/18 13:45:20 by ikhadem          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmapi(const char *s, char (*f)(unsigned int, char))
{
	char			*res;
	unsigned int	i;

	i = 0;
	if (!(res = malloc(sizeof(char) * (ft_strlen(s) + 1))))
		return (NULL);
	while (*s)
	{
		res[i] = f(i, *s++);
		i++;
	}
	res[i] = '\0';
	return (res);
}
