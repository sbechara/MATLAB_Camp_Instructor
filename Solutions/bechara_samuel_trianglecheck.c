/*
As always students must include some sort of header here with the name of the
program, description, date, etc.
-1 if they omit
*/

/*****************************************************************************
                          bechara_samuel_trianglecheck.c
*****************************************************************************
  Description: This program gets user input on three sides of a potential
               triangle and then determines whether or not it is a triangle
               and if it is, what kind of triangle it is
  Author: Samuel Bechara
  Date: 9 November 2016
  Last Modified: 9 November 2016
*****************************************************************************/

#include <stdio.h>

int main(void)
{
  // declare variables
  int a, b, c;
  printf("Input the sides of the triangle seperated by spaces, then click enter: ");
  scanf("%d %d %d",&a,&b,&c);

  // first off, check if it even is a triangle
  // -2 if they didn't incldue multiple statements or some way to allow the user to input sides in any order
  if(a+b>c && b+c>a && a+c>b)
  {
    printf("The sides do form a triangle\n");
    // now check if it is a scalene triangle
    // -1 if they didn't include this or didn't do it right
    if(a!=b && b!=c && c!=a)
    {
      printf("It is a scalene triangle\n");
      // ok last check, since all right triangles are sclaene, we can check if it is a right triangle
      // -1 if they messed this up or didn't include multiple statements
      if(a*a+b*b==c*c || c*c+b*b==a*a || c*c+a*a==b*b)
      {
        printf("It is a right triangle\n");
      }
    }

  }
  else // it isn't a triangle, this goes back to the first if and illustrates why tabbing is important
  {
    printf("The sides do not form a triangle\n");
  }

  return 0;
}
