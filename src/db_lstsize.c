/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   db_lstsize.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fle-tolg <fle-tolg@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/02 11:15:17 by fle-tolg          #+#    #+#             */
/*   Updated: 2022/11/01 12:23:10 by fle-tolg         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

int	db_lstsize(t_db_list *lst)
{
	int	i;

	i = 0;
	while (lst)
	{
		lst = lst->next;
		i++;
	}
	return (i);
}
