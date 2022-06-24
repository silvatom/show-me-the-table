#include <stdio.h>

int	main(void)
{
	int	multiplying;
	int	multiplier;
	int	product;
	
	while (1)
	{
		printf("Insert the table number you want: ");
		scanf("%d", &multiplying);

		if (multiplying >= 1 && multiplying <= 10)
		{
			multiplier = 1;
			while (multiplier <= 10)
			{
				product = multiplying * multiplier;
				printf("%d x %d = %d\n", multiplying, multiplier, product);
				multiplier++;
			}
		}
		else
		{
			printf("Invalid input!\n");
			return (1);
		}
		multiplying = 0;
	}
	return (0);
}
