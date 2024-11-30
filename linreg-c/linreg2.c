#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#define scalling_factor 4096

void read_csv(char *filename, int **xdata, int *ydata)
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
                xdata[i][j] = (int)atof(token);
            else 
                ydata[i] = atof(token);
        }
        i++;
    }
}

int** transpose_matrix(int row, int col, int **matrix)
{
    int **new_matrix;
    
    new_matrix = (int **)malloc((col) * sizeof(int *));
    for (int i = 0; i < row; ++i)
        new_matrix[i] = (int *) malloc((row)*sizeof(int));

    for(int i = 0; i < row; i++)
        for (int j=0; j < col; j++)
            new_matrix[j][i] = matrix[i][j];

    return new_matrix;
}

int computeCost(int **xdata, int *ydata, int *theta, int m, int n) //#
{
    int h[m];

    int h_sum = 0;
    for (int i = 0; i < m; i++)
        h[i] = 0;

    // X*theta
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++)
            h[i] = h[i] + xdata[i][j] * theta[j];
        h[i] = pow(h[i] - ydata[i], 2);
    }

    for (int i = 0; i < m; i++)
        h_sum = h_sum + h[i];     

    return ((double)(1/(2* (double) m))) * h_sum;
}

int* gradientDescent(int **xdata, int *ydata, int *theta, int m, int n, int alpha, int num_iters)
{
    int J = 0;
    int h[m];
    int grad[n];
    int descent[n];
    int** xdata_transpose;

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
        for (int j = 0; j < m; j++) {
            for (int k = 0; k < n; k++)
                h[j] = h[j] + xdata[j][k] * theta[k];
            h[j] >>= 9;
        }
        for (int j = 0; j < n; j++) {
            for (int k = 0; k < m; k++)
                grad[j] = grad[j] + xdata_transpose[j][k]*(h[k] - ydata[k]);
            grad[j] >>= 9;
            descent[j] = ((alpha/(int) m) * grad[j]) >> 9;
            theta[j] = theta[j] - descent[j];
        }

        J = computeCost(xdata, ydata, theta, m, n);
    }
    printf("COST: %d", J);
    free(xdata_transpose);
    return theta;    
} 

int predict(int *xdata, int *theta, int n) {
    
    int res = 0;

    for (int k = 0; k < n; k++)
        res = res + xdata[k] * theta[k];

    return res;
} 

int main() 
{

    printf("ola");
    int row = 47; //8n
    int col = 3; 
    char fname[] = "int_dataset.csv";

    int **xdata;
    int *ydata;
    int *theta;


    xdata = (int **)malloc(row * sizeof(int *));
    for (int i = 0; i < row; ++i)
        xdata[i] = (int *) malloc((col)*sizeof(int));
    ydata = (int *) malloc(row * sizeof(int *));

    read_csv(fname, xdata, ydata);

    for (int i = 0; i < row; i++) {
        for (int j = 0; j < col; j++) {
            xdata[i][j] = xdata[i][j]*scalling_factor;
            printf("%d ", xdata[i][j]);
        }
        ydata[i] = ydata[i]*scalling_factor;
        printf("YDATA: %d ", ydata[i]);
        printf("\n");
    }
    
    theta = (int *) malloc((col)*sizeof(int *));
    for (int i = 0; i < col; i++) 
        theta[i] = 0;

    theta = gradientDescent(xdata, ydata, theta, row, col, 0.01*4096, 800);//
    printf("\nh(x) = %D + %dx1 + %dx3", theta[0], theta[1], theta[2]);

    int price[3] = {1, 1650*scalling_factor, 3*scalling_factor};
    int value = predict(price, theta, col); //[1650, 3]   = []

    int price_2[2] = {1650, 3};//
//ß    int *price_normalized = mean_normalize(price_2); //int m
//    for(int i = 0; i < 2; i++) 
//ß        printf("\n\n%d", price_normalized[i]);
    
    printf("\n%d$", value);
    free(xdata);
    free(ydata);
    free(theta);

    return 0;
} 
