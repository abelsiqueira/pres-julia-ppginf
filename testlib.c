double dotprod(double *x, double *y, int n) {
    int i = 0;
    double s = 0.0;
    for (i = 0; i < n; i++) {
        s += x[i]*y[i];
    }
    return s;
}