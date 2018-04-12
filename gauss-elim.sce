
function[]= substitute(A, n, B, X)
	Xn = Bn/Ann

	for i = 1:(n-1)
		sum=0

		for j = (i+1:n)
			sum = sum + Aij * Xj

		Xn = (Bn - sum)/ Ann



function [] = eliminate(A, S, n, B, tol, er)
	for k = 1:n-1
		pivot(A, B, S, n, k)

		if abs(Akk/Sk) < tol then
			er = -1

		for i =(k+1:n)
			factor = Aik/Akk

			for j=(k+1: n)
				Aij = Aij - factor*Akj

			Bi = Bi - factor*Bk
	if abs(Ann/Sn) < tol then
		er = -1


function[] =gauss(A, B, n, X, tol , er)
	dimension s(n)
	er = 0

	for i = (1:n)
		Si = abs( Ai1)

		for j = 2:n
			if abs(Aij) > Si then
				Si = abs(Aij)


	eliminate(A, S, b, B, tol, er)

	if er ~= -1 then
		substitute(A, n, B, X)


function[] = pivot(A, B, S, n, k)
	p= k
	big = abs (Akk/Sk)

	for ii =(k+1):n
		

