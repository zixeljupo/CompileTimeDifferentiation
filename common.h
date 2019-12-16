#ifndef COMPILETIMEDIFFERENTIATION_COMMON_H
#define COMPILETIMEDIFFERENTIATION_COMMON_H

template <class T, T t>
class Const {
public:
    using ResultType = int;

    template <class ValueType>
    constexpr auto operator()(const ValueType & value) const {
        return t;
    }
};

class Var {
public:
    using ResultType = int;

    template <class ValueType>
    constexpr ValueType operator()(const ValueType & value) const {
        return value;
    }
};

#endif //COMPILETIMEDIFFERENTIATION_COMMON_H
