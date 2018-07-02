/*
bechara_samuel_acceleration.c
Students must include some sort of header that describes the program
and lists their name and date. -1 if they omit
*/

/*****************************************************************************
                         bechara_samuel_acceleration.c
*****************************************************************************
  Description: computes the acceleration of a block being pulled with force P
               along a flat surface with coefficient of friction mu.
  Author: Samuel Bechara
  Date: 9 November 2016
  Last Modified: 9 November 2016
*****************************************************************************/

#include <stdio.h> // -1 if they forgot This

// For this problem they were explicitly told to define gravitational accel
// as a constant. -2 if they didn't
#define G 9.81f

int main(void)
{
  // Declare variables, -2 if they don't
  float accel, mu, p, mass;

  // Students need to include these steps below
  // -1 for every step they miss. They do not HAVE to have the intro
  printf("This program calculates the acceleration of a block being pulled\n");
  printf("with force P along a surface with coefficient of kinetic friction mu\n");
  printf("Please enter the force of the pull in newtons: ");
  scanf("%f",&p);
  printf("Please enter the mass of the object in kg: ");
  scanf("%f",&mass);
  printf("Please enter the coefficient of kinetic friction: ");
  scanf("%f",&mu);

  // calcaulte the acceleration
  // -3 if they messed up here
  accel = (p-mu*mass*G)/mass;

  // -2 if they don't display the output to the user
  printf("The acceleration of the block will be %.1f m/s^2\n",accel);

  // -3 if they forgot
  return 0;

}
