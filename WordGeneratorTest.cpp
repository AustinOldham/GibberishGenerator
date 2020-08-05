#include <string>
#include <iostream>
#include <vector>
#include <list>

#include "WordGenerator.h"

using std::string;
using std::to_string;
using std::cout;
using std::endl;
using std::stoi;
using std::vector;
using std::list;

int main(int argc, char* argv[]) {
	string seed = argv[1];
	int num = stoi(argv[2]);
	WordGenerator myGen(seed);

	myGen.setCensoredWordsPath("censoredwordslists");

	for (int i = 0; i < num; i++) {
		cout << myGen.nextWord(1, 10) << endl;
	}

	/*for (int i = 0; i < num; i++) {
		cout << i << ": ";
		list<int> base24 = myGen.base10ToArbitraryBase(i, myGen.greekAlphabet.size());
		for (const auto& number : base24) {
			cout << number << " ";
		}
		cout << ": ";
		cout << myGen.getGreekLettersFromNumber(i, "-");
		cout << endl;
	}*/

}
