
def num_beers(p, C):
	A  = [1] + [0] * (C)
	for beer in p:
		rest = C - beer
		for n in range(rest, -1, -1):
			if A[n]:
				A[n + beer] += A[n]

	print("Number of ways to spend:", C, "dkk is: ", A[C],"\n")
	return A[C]


if __name__ == '__main__':
	num_beers([2, 3, 2, 1, 4], 5)
	num_beers([3,1], 2)
