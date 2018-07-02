/* This program reduces a fraction input by the user */

#include <stdio.h>
int greatest_factor(int a, int b);
void reduce(int *ptnumerator, int *ptdenominator, int gcf);

int main(void)
{
  int numerator;
  int denominator;
  int gcd;
  printf("Enter a fraction as two numbers: ");
  scanf("%i%i",&numerator,&denominator);
  printf("You entered: %i/%i\n",numerator,denominator);
  gcd = greatest_factor(numerator,denominator);
  reduce(&numerator,&denominator,gcd);
  printf("In lowest terms: %i/%i\n",numerator,denominator);
  return 0;
}

/* Uses the euclidian algorithim to solve for GCD */
int greatest_factor(int a, int b)
{
  int temp;
  while (b != 0)
  {
    temp = b;
    b = a % b; // % is the modulus operator
    a = temp;
  }
  return a;
}

/* Uses pointers to reduce the numerator and denominator by the GCD */
void reduce(int *ptnumerator, int *ptdenominator, int gcf)
{
  *ptnumerator = *ptnumerator / gcf;
  *ptdenominator = *ptdenominator / gcf;
  return;
}
