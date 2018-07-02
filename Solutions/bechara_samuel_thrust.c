/*
As always students must include some sort of header here with the name of the
program, description, date, etc.
-1 if they omit
*/

/*****************************************************************************
                          bechara_samuel_thrust.c
*****************************************************************************
  Description: This program calculates the average thrust of a rocket motor,
               given the weight of the rocket and its average velocity during
               the burning of the first stage
  Author: Samuel Bechara
  Date: 9 November 2016
  Last Modified: 9 November 2016
*****************************************************************************/

#include <stdio.h>

// Define constants, if they do not define G as a constant don't mark them wrong
// but make a note that they SHOULD have
#define G 32.2f

// Declare functions
// -1 if they do not declare functions
float funcforce(float, float, float);
float functhrust(float, float);

int main(void)
{
  // declare local variables
  // -1 if they messed up local and global variables
  float weight, velocity, time;
  float force, thrust;

  // Prompt the user for inputs
  printf("Input Initial Weight, Ave Velocity, and Time seperated by spaces: ");
  scanf("%f %f %f",&weight,&velocity,&time);

  // Calculate the force and the thrust with our functions
  // -3 if they do not use functions or they do not use functions correctly
  force = funcforce(weight, velocity, time);
  thrust = functhrust(weight,force);

  // Output results to user
  printf("Force due to acceleration = %8.2f\n", force);
  printf("Total thrust due to acceleration = %8.2f\n",thrust);

  return 0;
}

/*****************************************************************************
                Function to Compute the force on the Rocket
*****************************************************************************
  Input Parameters:
    weight1 = weight of the rocker (lb)
    veloctiy1 = veloctiy of the rocket (ft/s)
    time1 = duration of thrust (s)
  Return Variable:
    force = force of the rocket motor
*****************************************************************************/
float funcforce(float weight1, float veloctiy1, float time1)
{
  float force; // local variable
  force = (weight1 * veloctiy1)/(G * time1);
  return force;
}

/*****************************************************************************
              Function to Compute the Thrust on the Rocket
*****************************************************************************
  Input Parameters:
    weight1 = weight of the rocker (lb)
    force1 = force on the rocket (lb)
  Return Variable:
    thrust1 = thrust on the rocket motor
*****************************************************************************/
float functhrust(float weight1, float force1)
{
  float thrust1;
  thrust1 = weight1 + force1;
  return thrust1;
}
