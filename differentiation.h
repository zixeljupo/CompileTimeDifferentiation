#ifndef COMPILETIMEDIFFERENTIATION_DIFFERENTIATION_H
#define COMPILETIMEDIFFERENTIATION_DIFFERENTIATION_H

#include "common.h"
#include "utils.h"

// default template
template <class Expression, int id>
class Derivative {
public:
    using ResultType = int;
    eval_macro { return (double)0; }
};

template <int id>
class Derivative<Var<id>, id> {
public:
    using ResultType = int;
    eval_macro { return (double)1; }
};

template <class Expression, int id>
class Derivative<Derivative<Expression, id>, id> {
public:
    using ResultType = Derivative<typename Derivative<Expression, id>::ResultType, id>;
    eval_macro { return ResultType()(values...); }
};

template <int id, class Expression>
constexpr Derivative<Expression, id> D(const Expression & expression) {
    return Derivative<Expression, id>();
}

#endif //COMPILETIMEDIFFERENTIATION_DIFFERENTIATION_H
