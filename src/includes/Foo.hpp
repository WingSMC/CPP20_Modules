#include <iostream>

namespace Foo {

	template<typename T>
	void print(T something) {
		std::cout << something << std::endl;
	}

	int bar(int);
}
