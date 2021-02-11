CPP = g++
EigenPath = /usr/local/include/eigen
DlibPath = /usr/local/include/dlib

BuildRelativePath = build

main: Makefile libgreetings.a
	$(CPP) -I $(EigenPath) -I $(DlibPath) main.cpp $(BuildRelativePath)/libgreetings.a -o $(BuildRelativePath)/eigen_ex.out -std=c++11

hello.o: Makefile hello.cpp hello.hpp
	$(CPP) -c hello.cpp -o $(BuildRelativePath)/hello.o

good_morning.o: Makefile good_morning.cpp good_morning.hpp
	$(CPP) -c good_morning.cpp -o $(BuildRelativePath)/good_morning.o

libgreetings.a: hello.o good_morning.o
	ar rvs libgreetings.a $(BuildRelativePath)/hello.o $(BuildRelativePath)/good_morning.o
	mv libgreetings.a  ./$(BuildRelativePath)

clean:
	rm -f $(BuildRelativePath)/*.a $(BuildRelativePath)/*.o $(BuildRelativePath)/*.out