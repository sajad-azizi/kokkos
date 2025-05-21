
#include <Kokkos_Core.hpp>
#include <iostream>

int main(int argc, char* argv[]){

	Kokkos::initialize(argc, argv);
	{
		std::cout << "Using device: " << Kokkos::DefaultExecutionSpace::name() << std::endl;
		std::cout << "Memory space: "<< Kokkos::DefaultExecutionSpace::memory_space::name() << "\n";
		Kokkos::parallel_for(15, KOKKOS_LAMBDA(const int idx){
			Kokkos::printf("hello world from i=%d\n", idx);
		});

	}
	std::cout << "Hello from Host \n";
	Kokkos::finalize();

	return 0;
}
