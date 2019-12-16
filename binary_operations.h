#ifndef COMPILETIMEDIFFERENTIATION_BINARY_OPERATIONS_H
#define COMPILETIMEDIFFERENTIATION_BINARY_OPERATIONS_H

#include "differentiation.h"

template <class Expression1, class Expression2>
constexpr auto mul_derivative() {
    return D(Expression1())*Expression2() + Expression1()*D(Expression2());
}

template <class Expression1, class Expression2>
constexpr auto div_derivative() {
    return mul_derivative<Expression1, Expression2>() / (Expression2() * Expression2());
}

// ------------------------------ Add ------------------------------

template <class Expression1, class Expression2>
class SumExpression {
public:
    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return Expression1()(value) + Expression2()(value);
    }
};

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

// ------------------------------ Div ------------------------------

template <class Expression1, class Expression2>
class DivExpression {
public:
    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return Expression1()(value) - Expression2()(value);
    }
};

template <class Expression1, class Expression2>
class Derivative<DivExpression<Expression1, Expression2>> {
public:
    using ResultType = decltype(D(Expression1()) - D(Expression2()));

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return ResultType()(value);
    }
};

template <class Expression1, class Expression2>
constexpr SumExpression<Expression1, Expression2> operator-(const Expression1 & e1, const Expression2 & e2) {
    return SumExpression<Expression1, Expression2>();
}

// ------------------------------ Mul ------------------------------

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
    using ResultType = decltype(mul_derivative<Expression1, Expression2>());

    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return ResultType()(value);
    }
};

template <class Expression1, class Expression2>
constexpr MultiplyExpression<Expression1, Expression2> operator*(const Expression1 & e1, const Expression2 & e2) {
    return MultiplyExpression<Expression1, Expression2>();
}

// ------------------------------ Div ------------------------------

template <class Expression1, class Expression2>
class DivideExpression {
public:
    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return Expression1()(value) / Expression2()(value);
    }
};

template <class Expression1, class Expression2>
class Derivative<DivideExpression<Expression1, Expression2>> {
public:
    using ResultType = decltype(div_derivative<Expression1, Expression2>());

    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return ResultType()(value);
    }
};

template <class Expression1, class Expression2>
constexpr DivideExpression<Expression1, Expression2> operator/(const Expression1 & e1, const Expression2 & e2) {
    return DivideExpression<Expression1, Expression2>();
}

#endif //COMPILETIMEDIFFERENTIATION_BINARY_OPERATIONS_H
