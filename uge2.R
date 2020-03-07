
num_beers <- function(p, C) {
	A <- vector("numeric", C + 1)
	A[1] <- 1
	for(i in 1:length(p)) {
		num = p[i]
		rest = C - num
		
		if(rest < 0) {
			next
		}
		
		for(j in rest:0) {
				#cat("j: ", j, "\n")
				if(A[j + 1] != 0) {
					A[j + num + 1] <- A[j + num + 1] + A[j + 1]
			}
		}
	}
	cat("Number of ways: ", A[C + 1])
	return(A[C + 1])
}

p = c(3, 5, 1, 3)	
C = 6
out <- num_beers(p, C)

p = c(2 , 3, 2, 1, 4)
C = 5
out <- num_beers(p, C)

p = c(3, 1)
C = 0
out <- num_beers(p, C)




