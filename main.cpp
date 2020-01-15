#include <iostream>
#include <type_traits>
#include <ratio>

#include "common.h"
#include "differentiation.h"
#include "binary_operations.h"

#include "cp_float.h"

#include <memory>

using namespace std;

int main() {

    constexpr auto x = Var<0>();

    constexpr auto expr1 = x*x + x;
    static_assert(expr1(6.0) == 42.);
    cout << typeid(expr1).name() << endl;

    constexpr auto expr2 = D<0>(D<0>(x*x + x));
    static_assert(expr2(0.) == 2.);
    cout << typeid(expr2).name() << endl;

    constexpr auto expr3 = x + Const<int, 15>();
    static_assert(expr3(2.) == 17.);
    cout << typeid(expr3).name() << endl;

    // (x^2 + 2x + 1) / 4
    constexpr auto expr4 = (x * x + Const<int, 2>() * x + Const<int, 1>()) / Const<int, 4>();
    static_assert(expr4(3) == 4);
    cout << typeid(expr4).name() << endl;

    constexpr auto expr5 = D<0>(expr4);
    static_assert(expr5(1) == 1);
    cout << typeid(expr5).name() << endl;

    constexpr auto expr6 = D<0>(expr5);
    static_assert(expr6(1.0) == 0.5);
    cout << typeid(expr6).name() << endl;

    constexpr auto expr7 = D<0>(expr6);
    static_assert(expr7(1.0) == 0.0 && expr7(2.0) == 0.0);
    cout << typeid(expr7).name() << endl;

    constexpr auto expr8 = (CTFloat<3141, -3>() * x + Const<int, 1>()) / Const<int, 4>();
    static_assert(expr8(2.5) == (double(3141)/1000*2.5 + 1.0) / 4.0);
    cout << typeid(expr8).name() << endl;

    constexpr auto expr9 = Const<int, 4>() * x * Const<int, 4>();

    cout << "Finished stage 1" << endl;

    constexpr auto y = Var<1>();

    constexpr auto f1 = x + y;
    static_assert(f1(3.14, 42) == 45.14);
    static_assert(D<0>(f1)(3.14, 42) == 1.0);
    static_assert(D<1>(f1)(3.14, 42) == 1.0);
    static_assert(D<0>(D<1>(f1))(3.14, 42) == 0.0);

    constexpr auto f2 = x / y;
    static_assert(f2(3, 4) == 0.75);
    static_assert(D<0>(f2)(3, 4) == 0.25);
    static_assert(D<1>(f2)(3, 4) == -0.1875);


    cout << "Finished" << endl;
    return 0;
}
