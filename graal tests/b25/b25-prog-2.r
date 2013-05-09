#! b25-prog-2
#!g size = ( 48L )

# extracted from R Benchmark 2.5 (06/2008) [Simon Urbanek]
# http://r.research.att.com/benchmarks/R-benchmark-25.R

# III. Programming
# Creation of a 3000x3000 Hilbert matrix (matrix calc)

b25prog <- function(args) {
  runs = if (length(args)) as.integer(args[[1]]) else 48L

  a <- 3000

  for (i in 1:runs) {
    b <- rep(1:a, a)
    dim(b) <- c(a, a)
    b <- 1 / (t(b) + 0:(a-1))
  }
}

b25prog(@size)
b25prog(@size)
