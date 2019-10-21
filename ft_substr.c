/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ikhadem <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/17 10:14:21 by ikhadem           #+#    #+#             */
/*   Updated: 2019/10/18 08:12:30 by ikhadem          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
*	formating  a comment for the norm
*/

char	*ft_substr(const char *str, unsigned int start, size_t len)
{
	char	*res;

	if (!str)
		return (NULL);
	if (!(res = (char *)malloc(sizeof(*str) * (len + 1))))
		return (NULL);
	if (start > ft_strlen(str))
		return (NULL);
	ft_strncpy(res, str + start, len);
	res[len] = '\0';
	return (res);
}
