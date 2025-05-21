// matrix matrix multi
// May 21, 2025
#include <Kokkos_Core.hpp>
#include <iostream>


using matrix_view_double = Kokkos::View<double**>;

int main(int argc, char* argv[]){

    Kokkos::initialize(argc, argv);
    {
        std::cout << "Using device: " << Kokkos::DefaultExecutionSpace::name() << std::endl;
        std::cout << "Memory space: "<< Kokkos::DefaultExecutionSpace::memory_space::name() << "\n";


        const int N = 2;

        matrix_view_double A("A", N,N);
        matrix_view_double B("B", N, N);
        matrix_view_double C("C", N, N);

        using md_range_2d = Kokkos::MDRangePolicy<Kokkos::Rank<2>>;

        //initialize
        Kokkos::parallel_for("initi_A_B_C", md_range_2d({0,0}, {N,N}),
            KOKKOS_LAMBDA(const int i, const int j){

                A(i,j) = 1.0;
                B(i,j) = 1.0;
                C(i,j) = 0.0;

            });
        Kokkos::fence();

        //multi
        Kokkos::parallel_for("C=A*B", md_range_2d({0,0}, {N,N}),
            KOKKOS_LAMBDA(const int i, const int j){
                for(int k = 0; k < N; k++){
                    C(i,j) += A(i,k)*B(k,j);
                }
            });

        Kokkos::fence();

        // a reduction, just for fun
        double sum = 0.0;
        Kokkos::parallel_reduce("sum_B",md_range_2d({0,0}, {N,N}),
            KOKKOS_LAMBDA(const int i, const int j, double &dev_sum){

                dev_sum+= C(i,j);

            },
        sum);

        std::cout << "sume of C: " << sum << std::endl;
    }
    Kokkos::finalize();

    return 0;
}