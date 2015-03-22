LIBS = -lsqlite3 
CXX = g++
CXXFLAGS = -g -march=native -pipe  -pthread

example: example.o  nanosql.o nanosql.hpp
	$(CXX) $^ $(LIBS) $(CXXFLAGS) -o $@

clean:
	rm *.o
