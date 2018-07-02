/*
bechara_samuel_spherevolume.c
Students must include some sort of header that describes the program
and lists their name and date. -1 if they omit
*/

/*****************************************************************************
                         bechara_samuel_spherevolume.c
*****************************************************************************
  Description: Program computes the volume of a sphere
  Author: Samuel Bechara
  Date: 9 November 2016
  Last Modified: 9 November 2016
*****************************************************************************/

#include <stdio.h> // -1 if they forgot this

// For this problem they can define PI as a constant or not. Either way is ok.
#define PI 3.14159f

int main(void)
{

  // Declare variables -2 if they don't do this, the program won't work but you get the idea
  float radius, volume;

  printf("This program calculates the volume of a sphere with a user specified radius\n");
  printf("Please enter the radius of the sphere in meters: "); //-1 if they don't put this in
  scanf("%f",&radius);

  // Calculate volume of sphere
  // -2 if not done correctly, students needed to learn you can't use ^ in C
  volume = (4.0f/3.0f)*(PI)*(radius*radius*radius);

  // Output to user
  //NOTE: Students do not HAVE to output radius but they MUST output volume
  printf("The volume of a sphere with a radius of %.0f is %.2f m^3\n",radius,volume);

  // -3 if they omitted
  return 0;

}
