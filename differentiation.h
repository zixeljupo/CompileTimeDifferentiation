#ifndef COMPILETIMEDIFFERENTIATION_DIFFERENTIATION_H
#define COMPILETIMEDIFFERENTIATION_DIFFERENTIATION_H

#include "common.h"

// default template
template <class Expression>
class Derivative {
public:
    using ResultType = int;

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return (ValueType)0;
    }
};

template <>
class Derivative<Var> {
public:
    using ResultType = int;

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

#endif //COMPILETIMEDIFFERENTIATION_DIFFERENTIATION_H
