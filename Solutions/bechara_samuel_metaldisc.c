/* must include a header, -1 */

#include <stdio.h>
#define PI 3.14159 // ok if they used math.h library for pi

// must declare functions -2 if they forgot
float get_radius(void);
void disc(float, float *, float *);

int main(void)
{
  // declare program variables
  float radius, area, circum;
  radius = get_radius();
  disc(radius, &area, &circum);
  printf("area = %f (m^2)\n", area);
  printf("circumference = %f (m)\n",circum);
  return 0;
}

// Students must include SOME description of what each function does. -1 for each description they omit
/* get_radius function gets user input about the radius of the disc */
float get_radius(void)
{
  float funradius1;
  printf("Enter the radius for the disc (m): ");
  scanf("%f",&funradius1);
  return funradius1;
}

/* disc doesn't return anything because it uses pointers to manipulate variables in the main function */
void disc(float funradius2, float *ptarea, float *ptcircum)
{
  *ptarea = PI * funradius2 * funradius2;
  *ptcircum = 2 * PI * funradius2;
  return;
}
