#include <Kokkos_Core.hpp>
#include <iostream>
#include <random>

int main(int argc, char* argv[]){

	Kokkos::initialize(argc, argv);
	{
        std::cout << "Using device: " << Kokkos::DefaultExecutionSpace::name() << std::endl;
        // 1d view
        Kokkos::View<double*> data_dev("data_dev",10);

        // mirror view
        auto data_host = Kokkos::create_mirror_view(data_dev);

        std::mt19937 rng(1234);
        std::uniform_real_distribution<double> dist(0.0,1.0);

        for(int i = 0; i < data_host.extent(0); ++i){
            data_host(i) = dist(rng);
        }

        for(int i = 0; i < data_host.extent(0); ++i){
            std::cout << data_host(i) << "  ";
        }
        std::cout << "\n";

        //copy data from host to device

        Kokkos::deep_copy(data_dev,data_host);



        

    }
	std::cout << "Hello from Host \n";
	Kokkos::finalize();

	return 0;
}