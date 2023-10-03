all: ./bin/main
clean:
	rm -f *.o ./bin/main
test: all
	./bin/main	

brazoRobotico.o: ./src/brazoRobotico.cpp ./src/brazoRobotico.h
	g++ -c ./src/brazoRobotico.cpp
main.o: ./src/main.cpp ./src/brazoRobotico.h
	g++ -c ./src/main.cpp
./bin/main: main.o brazoRobotico.o
	g++ -o ./bin/main main.o brazoRobotico.o	
