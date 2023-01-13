#include <iostream>

namespace Foo {
	/// @brief Prints something to stdout
	template<typename T>
	void print(T something) {
		std::cout << something << std::endl;
	}

	/// @brief Returns the square of a number
	int bar(int n);
}
