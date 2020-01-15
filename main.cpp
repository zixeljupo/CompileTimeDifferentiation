#include <iostream>
#include <type_traits>
#include <ratio>

#include "common.h"
#include "differentiation.h"
#include "binary_operations.h"

#include "cp_float.h"

#include <memory>

using namespace std;

namespace meta {
    struct ignore final {
        template <typename... Ts>
        constexpr ignore(Ts&&...) noexcept {}
    };
}

namespace meta {
    template <typename>
    using eat = ignore;

    template <std::size_t>
    using eat_n = ignore;
}

namespace detail {
    template <std::size_t N, typename = std::make_index_sequence<N>>
    struct at;

    template <std::size_t N, std::size_t... skip>
    struct at<N, std::index_sequence<skip...>> {
        template <typename Tp, typename... Us>
        constexpr decltype(auto) operator()(meta::eat_n<skip>..., Tp&& x,
                                            Us&&...) const noexcept {
            return std::forward<Tp>(x);
        }
    };
}

namespace fused {
    template <std::size_t N, typename... Ts>
    constexpr decltype(auto) nth(Ts&&... args) {
        return detail::at<N>{}(std::forward<Ts>(args)...);
    }
}

int main() {

    cout << "hi";

    //constexpr int x = getNth<3>(0, true, 5.5, 5, 'c', 4);
    constexpr int x = fused::nth<0>(5, true, 5.5, 5, 'c', 4);
    cout << x;

    //auto x = fused::front(unsigned{1u}, 2.0, std::make_unique<char>('3'));
    //assert(x == 1u);

    //constexpr auto x = Var<0>();
    //constexpr auto expr1 = x + x;
    //static_assert(expr1(1.) == 2.);


//    constexpr auto x = Var<0>();
//
//    constexpr auto expr1 = x + x*x;
//    static_assert(expr1(6.0) == 42.);
//    cout << typeid(expr1).name() << endl;

//    constexpr auto expr2 = D(D(x*x + x));
//    static_assert(expr2(0.) == 2.);
//    cout << typeid(expr2).name() << endl;
//
//    constexpr auto expr3 = x + Const<int, 15>();
//    static_assert(expr3(2.) == 17.);
//    cout << typeid(expr3).name() << endl;
//
//    // (x^2 + 2x + 1) / 4
//    constexpr auto expr4 = (x * x + Const<int, 2>() * x + Const<int, 1>()) / Const<int, 4>();
//    static_assert(expr4(3) == 4);
//    cout << typeid(expr4).name() << endl;
//
//    constexpr auto expr5 = D(expr4);
//    static_assert(expr5(1) == 1);
//    cout << typeid(expr5).name() << endl;
//
//    constexpr auto expr6 = D(expr5);
//    static_assert(expr6(1) == 0);
//    static_assert(expr6(1.0) == 0.5);
//    cout << typeid(expr6).name() << endl;
//
//    constexpr auto expr7 = D(expr6);
//    static_assert(expr7(1.0) == 0.0 && expr7(2.0) == 0.0);
//    cout << typeid(expr7).name() << endl;
//
//    // HOW ABOUT COMPILE TIME FLOATS BABY??
//    constexpr auto expr8 = (CTFloat<3141, -3>() * x + Const<int, 1>()) / Const<int, 4>();
//    static_assert(expr8(2.5) == (double(3141)/1000*2.5 + 1.0) / 4.0);
//    cout << typeid(expr8).name() << endl;
//
//    constexpr auto expr9 = Const<int, 4>() * x * Const<int, 4>();

    getchar();getchar();
    return 0;
}
