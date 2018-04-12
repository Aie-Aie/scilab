                                                                

 // pp 269 Chapra 2
    // -----------------sample
    // ---------------------[A][x]= [B]
    // ---------------------A is a coefficient matrix
    // ---------------------A =[1, 2, 3; 4, 4, 5; 6, 7, 8]
    // ---------------------B is a matrix
    // ---------------------B = [1, 2, 3]
    // matrix should be square matrix

A = [0.003, 3; 1.00, 1]
B = [2.0001; 1.0]
// [X] should be = [1/3, 2/3]


//TODO: how to define variable "n" as the number of rows and columns


// ------>  forward elimination 
        for k=(1:n-1)
            for i= (k+1):n
                factor = A(i, k)/A(k, k)                        // ------ factor = Aik/Akk
                
                for j = (k+1):n
                    A(i, j) = A(i, j)- (factor * A(k, j))       // ------ Aij = Aij - (factor * Akj)
                B(i) = B(i) - (factor * B(k))                   // ------ Bi = Bi - (factor * Bk)


disp(A)
// ------> backward elimination pseudo implementation

        X(n) = B(n)/ A(n, n)                                    // Xn = Bn / Ann

        // decreasing loop
        for i = (n-1):l
            sum = B(i)                                          // sum = Bi

            for j = (i+1) :n
                sum = sum - (A(j, j) *X(j))                     //  sum = sum -(Ajj * Xj)

            X(i) = sum / A(i,i)


// ------> partial pivoting pseudo implementation
        // k = 1
        p = k

        big = abs(A(k, k))

        for ii =((k+1) :n)
            dummy = A(ii, k)

            if (dummy > big)
                big = dummy
                p = ii

        if (p ~= k)
            for jj = (k:n)
                dummy = A(p, jj)
                A(p, jj) = A (k, jj)
                A(k, jj) = dummy

            dummy = B(p)
            B(p)  = B(k)
            B(k)  = dummy
            