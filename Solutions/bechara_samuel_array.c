/* Students must include a  header -1 if they omit
For the rest of the grading give them -1 for every part they get wrong.
Example, if the average for the exams is calculated incorrectly, or the
average per student was calculated incorrectly */

#include <stdio.h>

int main(void)
{
  // initialize all variables for the program
  int i, j;

  float temp_sum;
  int num_exams = 4;
  int num_students = 5;
  float examscores[num_exams][num_students];  
  float ave_exam[num_exams];
  float ave_student[num_students];

  /* Getting the input from the user */
  for(i=0; i<num_exams; i++) // if students use while loops, discourage because we know how many times we want loop to run
  {
    printf("Enter in exam %d grades: ",i+1);
    for(j=0; j<num_students; j++)
    {
      //printf("Enter in exam %d grades: ",i+1);
      scanf("%f",&examscores[i][j]);
    }
  }

  /* Calculating the average for each exam is calculating the average for
  each row. We can use the same loop logic above to accomplish this */
  for(i=0; i<num_exams; i++)
  {
    temp_sum = 0; // everytime through the top loop reset the temp_sum value
    for(j=0; j<num_students; j++)
    {
      temp_sum = temp_sum + examscores[i][j];
    }
    ave_exam[i]=temp_sum/num_students;
    printf("The average score on exam %d was: %.1f\n",i+1,ave_exam[i]);
  }

  /* Calculating the average for each student is just calculating the average
  for each column. So it will be very similar but it is important to keep
  your indices straight */

  for (j=0; j<num_students; j++)
  {
    temp_sum = 0;
    for(i=0; i<num_exams; i++)
    {
      temp_sum = temp_sum + examscores[i][j];
    }
    ave_student[j]=temp_sum/num_exams;
    printf("Student %d's average exam score was: %.1f\n",j+1,ave_student[j]);
  }

  return 0;
}
