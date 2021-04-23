a.out: teama.o teamb.o helpers.o
	g++ teama.o teamb.o helpers.o

teama.a: teama.o
	ar rvs teama.a teama.o

teama.o: teama.cc
	g++ -c teama.cc

teamb.a: teamb.o helpers.o
	ar rvs teamb.a teamb.o helpers.o 

helpers.o: helpers.cc
	g++ -c helpers.cc

teamb.o: teamb.s
	g++ -c teamb.s

