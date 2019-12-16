#include <iostream>
#include <type_traits>

#include "library.h"

using namespace std;

//constexpr auto Constant = [](auto t) {
//    return [t]() {
//        //return [t]() {
//            return [t](auto variable) {
//                return t;
//            };
//        //};
//    };
//};

//constexpr auto Constant = [](auto t) {
//    return [t]() {
//        //return [t]() {
//        return [t](auto variable) {
//            return t;
//        };
//        //};
//    };
//};

//template <class T>
//class C2 {
//public:
//    const T argg;
//    constexpr C2(const T arg) : argg(arg) {}
//    template <class ValueType>
//    constexpr T operator()(const ValueType & value) const {
//        return argg;
//    }
//};
//
//template <class T>
//class C1 {
//public:
//    const T argg;
//    constexpr C1(const T arg) : argg(arg) {}
//    constexpr auto operator()() const {
//        return C2(argg);
//    }
//};

//template<>
//class C1<double> {};

//template <class T, T t>
//class C2 {
//public:
//    constexpr C2() {}
//    template <class ValueType>
//    constexpr T operator()(const ValueType & value) const {
//        return t;
//    }
//};
//
//template <class T, T t>
//class C1 {
//public:
//    constexpr C1() {}
//    constexpr auto operator()() const {
//        return C2<T, t>();
//    }
//};

//template <typename ConstantType>
//class Constant {
//public:
//    const ConstantType constant;
//    using ResultType = ConstantType;
//
//    constexpr Constant(const ConstantType & constant) : constant(constant) {}
//
//    template <class ValueType>
//    constexpr ConstantType operator()(const ValueType & value) const {
//        return constant;
//    }
//};

class Variable {
public:
    using ResultType = double;

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return value;
    }
};

// default template
template <class Expression>
class Derivative {
public:
    using ResultType = double;

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return (ValueType)0;
    }
};

template <>
class Derivative<Variable>{
public:
    using ResultType = double;

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return (ValueType)1;
    }
};

template <class Expression>
class Derivative<Derivative<Expression>> {
public:
    using ResultType = Derivative<typename Derivative<Expression>::ResultType>;

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return ResultType()(value);
    }
};

template <class Expression>
constexpr Derivative<Expression> D(const Expression & expression) {
    return Derivative<Expression>();
}

template <class Expression1, class Expression2>
class SumExpression {
public:
    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return Expression1()(value) + Expression2()(value);
    }
};

//template <class Expression2>
//class SumExpression<Constant, Expression2> {
//public:
//    template <class ValueType>
//    constexpr auto operator()(const ValueType & value) const {
//        return Expression1()(value) + Expression2()(value);
//    }
//};

template <class Expression1, class Expression2>
class Derivative<SumExpression<Expression1, Expression2>> {
public:
    using ResultType = decltype(D(Expression1()) + D(Expression2()));

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return ResultType()(value);
    }
};

template <class Expression1, class Expression2>
constexpr SumExpression<Expression1, Expression2> operator+(const Expression1 & e1, const Expression2 & e2) {
    return SumExpression<Expression1, Expression2>();
}

template <class Expression1, class Expression2>
class MultiplyExpression {
public:
    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return Expression1()(value) * Expression2()(value);
    }
};

template <class Expression1, class Expression2>
class Derivative<MultiplyExpression<Expression1, Expression2>> {
public:
    using ResultType = decltype(D(Expression1())*Expression2() + Expression1()*D(Expression2()));

    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return ResultType()(value);
    }
};

template <class Expression1, class Expression2>
constexpr MultiplyExpression<Expression1, Expression2> operator*(const Expression1 & e1, const Expression2 & e2) {
    return MultiplyExpression<Expression1, Expression2>();
}

//constexpr auto C1 = [](auto t) {
//    return [t](auto) {
//        //return [t]() {
//        return [t](auto variable) {
//            return t;
//        };
//        //};
//    };
//};

int main() {

    hello();

    constexpr auto x = Variable();

    constexpr auto expr = x + x*x;
    static_assert(expr(6.)==42.);
    cout << typeid(expr).name() << endl;
    cout << expr(6.) << endl;

    constexpr auto expr1 = D(D(x*x + x));
    static_assert(expr1(6.)==2.);
    cout << typeid(expr1).name() << endl;
    cout << expr1(6.) << endl;

    //constexpr C1<float, 10.0> q = C1<float, 10.0>();
    //static_assert(q()(15)==10);
    //cout << q()(15.0) << endl;

    //auto r = C1<double>(0.0);
    //cout << r()(5.0);

    //constexpr auto expr2 = C1(0.0) + x;
    //cout << expr2(6.) << endl;
    //static_assert(expr2(6.) == 10.);

    //constexpr auto expr2 = D(D(4.5*x*x*x + x*x + x));
    //static_assert(expr2(6) == 27);

    return 0;
}
