#ifndef COMPILETIMEDIFFERENTIATION_CP_FLOAT_H
#define COMPILETIMEDIFFERENTIATION_CP_FLOAT_H

#include <tuple>

constexpr double constexpr_pow(int n) {
    return n < 0. ? 1. / constexpr_pow(-n) : (n > 0. ? 10. * constexpr_pow(n - 1) : 1.);
}

template<long long M, int E>
class CTFloat {
public:
    double ctfloat_value;
    constexpr CTFloat() : ctfloat_value(M * constexpr_pow(E)) {}

    template <class ValueType>
    constexpr double operator()(const ValueType & value) const {
        return ctfloat_value;
    }
};

// This code fails with C2975 and this cannot be cured
//template<int a>
//class A {};
//
//constexpr int b(int x) { return x; }
//constexpr auto c(int x) { return A<b(x)>(); }

//template <class T>
//constexpr T constexpr_pow(T const& x, std::size_t n) {
//    return n > 0 ? x * constexpr_pow(x, n - 1) : 1;
//}

//constexpr std::tuple<int, int> cast_float_to_cpfloat(float f, int pow = 0, bool negate = false) {
//    if (f < 0) {
//        return cast_float_to_cpfloat(-f, pow, true);
//    } else {
//        float residual = f - static_cast<long long>(f);
//        if (residual > 0) {
//            return cast_float_to_cpfloat(f * 10, pow + 1, negate);
//        } else {
//            std::make_tuple(static_cast<int>(negate ? -f : f),
//                            static_cast<int>(constexpr_pow(10, pow))));
//        }
//    }
//}

#endif //COMPILETIMEDIFFERENTIATION_CP_FLOAT_H
