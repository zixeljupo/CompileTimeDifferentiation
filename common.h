#ifndef COMPILETIMEDIFFERENTIATION_COMMON_H
#define COMPILETIMEDIFFERENTIATION_COMMON_H

#include "utils.h"

//template <class T, T t>
//class Const {
//public:
//    using ResultType = int;
//    eval_macro { return t; }
//};

template <int id>
class Var {
public:
    using ResultType = int;
    eval_macro { return getNth<id>(values...); }
};

#endif //COMPILETIMEDIFFERENTIATION_COMMON_H
