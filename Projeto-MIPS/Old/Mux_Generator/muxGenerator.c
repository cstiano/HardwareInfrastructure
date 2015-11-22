#include <stdio.h>
#include <string.h>
#include <math.h>

int main()
{
	int i, j, k, Nent, SelTam, Tvetor, aux;
	char nome[50];
	printf("Escreva o nome do mux: ");
	scanf("%s", nome);
	aux = strlen(nome);
	printf("Escreva o numero de entradas do mux: ");
	scanf("%d", &Nent);
	SelTam = (int)ceil(log2(Nent));
	printf("Escreva o tamanho das entradas do mux: ");
	scanf("%d", &Tvetor);
	strcat(nome, ".v");
	freopen(nome,"w",stdout);
	nome[aux] = 0;
	printf("module %s (", nome);
	printf("sel, S, ");
	for (i = 0;i < Nent;i++)
	{
		printf("E%d",i);
		if (i != Nent - 1)
			printf(", ");
	}
	printf(");\n\n\n");
	printf("input [%d:0]sel;\n",SelTam - 1);
	for (i = 0;i < Nent;i++)
	{
		printf("input [%d:0]E%d;\n",Tvetor - 1,i);
	}
	printf("output [%d:0]S;\n",Tvetor - 1);
	printf("\n\n");
	for (i = 0;i < Tvetor;i++)
	{
		printf("assign S[%d] = (", i);
		for (j = 0;j < Nent;j++)
		{
			printf("((");
			for (k = 0; k < SelTam;k++)
			{
				if ((j & (1 << k)) == 0)
					printf("~");
				printf("sel[%d] ",k);
				if (k != SelTam - 1)
					printf("& ");
			}
			printf(") & E%d[%d])",j,i);
			if (j != Nent - 1)
					printf(" | ");
		}
		printf(");\n");
	}
	printf("\n\n");
	printf("endmodule");
	return 0;
}