    // #include <stdio.h>
    // #include <stdlib.h>
    // #include <string.h>

    // int main()
    // {
    //     FILE *fptr;
    //     char ch[100];

    //     fptr = fopen("Block_try.txt", "r");

    //     if(NULL == fptr)
    //     {
    //         printf("file can't be opened \n");
    //     }
    //     else
    //     {
    //         while(fgets(ch, 100, fptr))
    //         {
    //             printf("0x%s,", ch);
    //         }
    //     }

    //     fclose(fptr);

    //     return 0;
    // }

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    FILE *fptr;
    char ch;
    int count = 0;
    int address_counter = 0;


    fptr = fopen("text.txt", "r");

    if(NULL == fptr)
    {
        printf("file can't be opened \n");
    }
    else
    {        
        while(!feof(fptr))
        {
            ch = fgetc(fptr);
            
            if(count == 0 && ch != 10)
                printf("0x");

            if(count == 2)
            {
                printf(",");
                address_counter++;
            }

            if(ch != 10)
                count++;

            if(ch == 32)
            {
                count = 0;
            }

            printf("%c", ch);
        }
    }

    fclose(fptr);

    address_counter = address_counter - 1;
    printf("\n\n Number of comands: 0 to %d \n", address_counter);

    return 0;
}