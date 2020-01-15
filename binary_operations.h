#ifndef COMPILETIMEDIFFERENTIATION_BINARY_OPERATIONS_H
#define COMPILETIMEDIFFERENTIATION_BINARY_OPERATIONS_H

#include "differentiation.h"
#include "utils.h"

//template <class Expression1, class Expression2>
//constexpr auto mul_derivative() {
//    return D(Expression1())*Expression2() + Expression1()*D(Expression2());
//}
//
//template <class Expression1, class Expression2>
//constexpr auto div_derivative() {
//    return mul_derivative<Expression1, Expression2>() / (Expression2() * Expression2());
//}

// ------------------------------ Add ------------------------------

template <class Expression1, class Expression2>
class SumExpression {
public:
    eval_macro { return Expression1()(values...) + Expression2()(values...); }
};

//template <class Expression1, class Expression2, int id>
//class Derivative<SumExpression<Expression1, Expression2>, id> {
//public:
//    using ResultType = decltype(D(Expression1()) + D(Expression2()));
//    eval_macro { return ResultType()(values...); }
//};

template <class Expression1, class Expression2>
constexpr SumExpression<Expression1, Expression2> operator+(const Expression1 & e1, const Expression2 & e2) {
    return SumExpression<Expression1, Expression2>();
}

// ------------------------------ Subtract ------------------------------

//template <class Expression1, class Expression2>
//class DivExpression {
//public:
//    eval_macro { return Expression1()(values...) - Expression2()(values...); }
//};
//
//template <class Expression1, class Expression2, int id>
//class Derivative<DivExpression<Expression1, Expression2>, id> {
//public:
//    using ResultType = decltype(D(Expression1()) - D(Expression2()));
//    eval_macro { return ResultType()(values...); }
//};
//
//template <class Expression1, class Expression2>
//constexpr SumExpression<Expression1, Expression2> operator-(const Expression1 & e1, const Expression2 & e2) {
//    return SumExpression<Expression1, Expression2>();
//}

// ------------------------------ Mul ------------------------------

//template <class Expression1, class Expression2>
//class MultiplyExpression {
//public:
//    eval_macro { return Expression1()(values...) * Expression2()(values...); }
//};
//
//template <class Expression1, class Expression2, int id>
//class Derivative<MultiplyExpression<Expression1, Expression2>, id> {
//public:
//    using ResultType = decltype(mul_derivative<Expression1, Expression2>());
//    eval_macro { return ResultType()(values...); }
//};
//
//template <class Expression1, class Expression2>
//constexpr MultiplyExpression<Expression1, Expression2> operator*(const Expression1 & e1, const Expression2 & e2) {
//    return MultiplyExpression<Expression1, Expression2>();
//}

// ------------------------------ Div ------------------------------

//template <class Expression1, class Expression2>
//class DivideExpression {
//public:
//    eval_macro { return Expression1()(values...) / Expression2()(values...); }
//};
//
//template <class Expression1, class Expression2, int id>
//class Derivative<DivideExpression<Expression1, Expression2>, id> {
//public:
//    using ResultType = decltype(div_derivative<Expression1, Expression2>());
//    eval_macro { return ResultType()(values...); }
//};
//
//template <class Expression1, class Expression2>
//constexpr DivideExpression<Expression1, Expression2> operator/(const Expression1 & e1, const Expression2 & e2) {
//    return DivideExpression<Expression1, Expression2>();
//}

#endif //COMPILETIMEDIFFERENTIATION_BINARY_OPERATIONS_H
