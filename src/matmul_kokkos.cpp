// matmul_kokkos.cpp
#include <Kokkos_Core.hpp>
#include <iostream>

int main(int argc, char* argv[]){

	Kokkos::initialize(argc, argv);
	{

		Kokkos::parallel_for(15, KOKKOS_LAMBDA(const int i){
			Kokkos::printf("hello world from i=%d\n", i);
		});

	}
	std::cout << "Hello from Host \n";
	Kokkos::finalize();

	return 0;
}