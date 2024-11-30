#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

void read_csv(char *filename, double **xdata, double *ydata)
{
    FILE *file;
    file = fopen(filename, "r");

    int i = 0;
    char line[47];

    while(feof(file) != 1)
    {
        fgets(line, 47, file);
        
        char *token;
        int j = 0;
        for(token = strtok(line, ","); token && *token; j++, token=strtok(NULL, ",")) 
        {
            if (j < 3)
                xdata[i][j] = atof(token);
            else 
                ydata[i] = atof(token);
        }
        i++;
    }
}

void read_csv_int(char *filename, int **xdata, int *ydata)
{
    FILE *file;
    file = fopen(filename, "r");

    int i = 0;
    char line[47];

    while(feof(file) != 1)
    {
        fgets(line, 47, file);
        
        char *token;
        int j = 0;
        for(token = strtok(line, ","); token && *token; j++, token=strtok(NULL, ",")) 
        {
            if (j < 3)
                xdata[i][j] = atof(token);
            else 
                ydata[i] = atof(token);
        }
        i++;
    }
}

double** transpose_matrix(int row, int col, double **matrix)
{
    double **new_matrix;
    
    new_matrix = (double **)malloc((col) * sizeof(double *));
    for (int i = 0; i < row; ++i)
        new_matrix[i] = (double *) malloc((row)*sizeof(double));

    for(int i = 0; i < row; i++)
        for (int j=0; j < col; j++)
            new_matrix[j][i] = matrix[i][j];

    return new_matrix;
}

double* mean_normalize(double *array) 
{

    double mean = (array[0]+array[1])/((double) 2); //n

    double std;

    for (int i = 0; i < 2; i++) {
        std = std + pow(array[i] - mean, 2); //* 
    }

    std = sqrt(std/(2-1));

    double * new_values;
    new_values = (double *) malloc(2 * sizeof(double)); 
    for (int i = 0; i < 2; i++) //==()
        new_values[i] = (array[i] - mean)/std;
 
    return new_values;
} 

double computeCost(double **xdata, double *ydata, double *theta, int m, int n) //#
{
    double h[m];

    double h_sum = 0;
    for (int i = 0; i < m; i++)
        h[i] = 0;

    // X*theta
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++)
            h[i] = h[i] + xdata[i][j] * theta[j]; 
       // printf("*********** %f ************\n", h[i]);
        h[i] = pow(h[i] - ydata[i], 2);
    }

    for (int i = 0; i < m; i++)
        h_sum = h_sum + h[i];     

    return (1/(2* (double) m)) * h_sum;
}

int computeCost_int(int **xdata, int *ydata, int *theta, int m, int n) //#
{
    int h[m];

    int h_sum = 0;
    for (int i = 0; i < m; i++)
        h[i] = 0;

    // X*theta
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++)
            h[i] = (h[i] + xdata[i][j] * theta[j]); 
        h[i] >>=9;
        h[i] = pow(h[i] - ydata[i], 2);
    }

    for (int i = 0; i < m; i++)
        h_sum = h_sum + h[i];      

    return h_sum / (2*m); 
}    

double* gradientDescent(double **xdata, double *ydata, double *theta, int m, int n, double alpha, int num_iters)
{
    double J = 0;
    double h[m];
    double grad[n];
    double descent[n];
    double** xdata_transpose;

    xdata_transpose = transpose_matrix(m, n, xdata);

    for(int i = 0; i < num_iters; i++) {//#u

        // initialize h and descent and grad...
        for(int j = 0; j < m; j++) {   
            if (j < n) {
                descent[j] = 0;
                grad[j] = 0;
            }
            h[j] = 0;
        }

        // run gradient descent 
        for (int j = 0; j < m; j++)
            for (int k = 0; k < n; k++)
                h[j] = h[j] + xdata[j][k] * theta[k];

        for (int j = 0; j < n; j++) {
            for (int k = 0; k < m; k++)
                grad[j] = grad[j] + xdata_transpose[j][k]*(h[k] - ydata[k]);
            descent[j] = (alpha/(double) m) * grad[j];
            theta[j] = theta[j] - descent[j];
        }

        J = computeCost(xdata, ydata, theta, m, n);
    }
    printf("COST: %f", J);
    free(xdata_transpose);
    return theta;    
}

double predict(double *xdata, double *theta, int n) {
    
    double res = 0;

    for (int k = 0; k < n; k++)
        res = res + xdata[k] * theta[k];

    return res;
} 

int main() 
{
    int row = 47; //8n
    int col = 3; 
    char fname[] = "normalized_dataset.csv";

    double **xdata;
    double *ydata;
    double *theta;

   xdata = (double **)malloc(row * sizeof(double *));
    for (int i = 0; i < row; ++i)
        xdata[i] = (double *) malloc((col)*sizeof(double));
    ydata = (double *) malloc(row * sizeof(double *));


    read_csv(fname, xdata, ydata);
    
    theta = (double *) malloc((col)*sizeof(double *));
    for (int i = 0; i < col; i++) 
        theta[i] = 0;


   

 //---------------------------------------
    int *theta_int;
    theta_int = (int *) malloc((col)*sizeof(int *));
    theta = gradientDescent(xdata, ydata, theta, row, col, 0.01, 800);//
    for(int i = 0; i < col; i++)
        theta_int[i] = (int) theta[i];

    printf("\nh(x) = %d + %dx1 + %dx3", theta_int[0], theta_int[1], theta_int[2]);
    printf("\nh(x) = %f + %fx1 + %fx3", theta[0], theta[1], theta[2]);
    int **xdata_int;
    int *ydata_int;

    xdata_int = (int **)malloc(row * sizeof(int *));
    for (int i = 0; i < row; ++i)
        xdata_int[i] = (int *) malloc((col)*sizeof(int));
    ydata_int = (int *) malloc(row * sizeof(int *));

    read_csv_int("int_dataset.csv", xdata_int, ydata_int); 

    int cost = computeCost_int(xdata_int, ydata_int, theta_int, row, col);

    printf("cost: %d", cost);

 
        // for (int i = 0; i < row; i++) {
        // for (int j = 0; j < col; j++) {
        //     printf("%d ", xdata_int[i][j]);
        // }
        // printf("%d \n", ydata_int[i]);
        // }

// ------------------------------------------------------

    double price[3] = {1, -0.44604386, -0.22609337};
    double value = predict(price, theta, col); //[1650, 3]   = []

    double price_2[2] = {1650, 3};
    double *price_normalized = mean_normalize(price_2); //int m
    for(int i = 0; i < 2; i++) 
        printf("\n\n%f", price_normalized[i]);
    
    printf("\n%f$", value);
    free(xdata);
    free(ydata);
    free(theta);

    return 0;
} 
