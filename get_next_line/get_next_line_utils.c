/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ilzhabur <ilzhabur@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/30 15:36:50 by ilzhabur          #+#    #+#             */
/*   Updated: 2023/05/30 15:36:50 by ilzhabur         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

void	*ft_memset(void *b, int c, size_t len)
{
	size_t			i;

	i = 0;
	while (i < len)
		*((unsigned char *)(b + i++)) = (unsigned char)c;
	return (b);
}

// char	*ft_strjoin(char *s1, char *s2)
// {
// 	char	*new_str;
// 	int		i;
// 	int		j;
// 	int		len;

// 	len = ft_strlen(s1) + ft_strlen(s2) + 1;
// 	new_str = malloc(sizeof(char) * len);
// 	if (new_str == NULL)
// 		return (NULL);
// 	i = 0;
// 	while (s1[i])
// 	{
// 		new_str[i] = s1[i];
// 		i++;
// 	}
// 	j = 0;
// 	while (s2[j])
// 		new_str[i++] = s2[j++];
// 	new_str[i] = 0;
// 	return (new_str);
// }

size_t	ft_strlen(const char *s)
{
	size_t	i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}

int	ft_strlen_n(char *s, int j, int *i)
{
	while (s[*i] && s[*i] != '\n')
	{
		*i = *i + 1;
		j++;
	}
	return (j);
}

char	*free_memory(char **line)
{
	if (*(line)[0])
		return (*line);
	else
	{
		free(*line);
		return (NULL);
	}
}
