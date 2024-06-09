#include <stdlib.h>
#include <stdio.h>


int main(int argc, char const *argv[]){
    FILE * a = fopen("esPar.sh","w");
    fprintf(a,"#!/bin/bash\n");
    for (int i = 0; i<1000000; i=i+2)
    {
        fprintf(a,"if [ $1 -eq %d ]\nthen\n\techo \"Es par\"\n\texit 0\nelif [ $1 -eq %d ]\nthen\n\techo \"No es par\"\n\texit 0\nfi\n",i,i+1);
    }
    fclose(a);
    return 0;
}