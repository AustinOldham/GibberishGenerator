WordGeneratorTest: build/WordGeneratorTest.o build/WordGenerator.o build/RandClass.o
	g++ -o bin/WordGeneratorTest build/WordGeneratorTest.o build/WordGenerator.o build/RandClass.o -std=c++17

build/WordGeneratorTest.o: WordGeneratorTest.cpp
	g++ -c WordGeneratorTest.cpp -o build/WordGeneratorTest.o -std=c++17

build/WordGenerator.o: WordGenerator.cpp WordGenerator.h
	g++ -c WordGenerator.cpp -o build/WordGenerator.o -std=c++17

build/RandClass.o: RandClass/RandClass.cpp RandClass/RandClass.h
	g++ -c RandClass/RandClass.cpp -o build/RandClass.o -std=c++17

