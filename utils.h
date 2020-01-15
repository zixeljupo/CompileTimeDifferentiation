#ifndef COMPILETIMEDIFFERENTIATION_UTILS_H
#define COMPILETIMEDIFFERENTIATION_UTILS_H

#include <vector>

//#define eval_macro \
//template <class ValueType> \
//constexpr ValueType operator()(const std::vector<ValueType> & values) const

#define eval_macro \
template <typename... Args> \
constexpr double operator()(const Args&... values) const

//template<int n, typename T, typename... Args>
//void extract_impl(T value, Args... args) {
//    extract_impl<n - 1>(s, args...);
//}
//
//template<typename T, typename... Args>
//void extract_impl(T value, Args... args) {
//    return value;
//}
//
//template<int n, typename... Args>
//void extract(Args... args)
//{
//    extract_impl<n>(args);
//}

#include <utility>
#include <tuple>
#include <cassert>

//struct type_erasure {};
//
//template<class T>
//struct wrapper : type_erasure {
//    wrapper(T w) : w_(w) { }
//    T w_;
//    constexpr decltype(auto) get() { return w_; }
//};
//
//template<class T>
//constexpr wrapper<T> wrapper_for(T x) {
//    return { x };
//}
//
//template <typename ignore>
//struct lookup;
//
//template <std::size_t... ignore>
//struct lookup<std::index_sequence<ignore...>> {
//    template <typename nth>
//    static decltype(auto)
//    constexpr at_position(decltype(ignore, type_erasure())..., wrapper<nth> w, ...) {
//        return w.get();
//    }
//};
//
//template<std::size_t index, typename... Args>
//constexpr auto getNth(Args... args) {
//    return lookup<std::make_index_sequence<index>>::at_position(
//            wrapper_for(args)...
//    );
//}

//struct type_erasure { };
//
//template<class T>
//struct wrapper : type_erasure {
//    constexpr wrapper(T&& w) : w_(std::forward<T>(w)) { }
//    T&& w_;
//    constexpr decltype(auto) get() { return std::forward<T>(w_); }
//};
//
//template<class T>
//constexpr wrapper<T> wrapper_for(T&& x) {
//    return { std::forward<T>(x) };
//}
//
//template <typename ignore>
//struct lookup;
//
//template <std::size_t... ignore>
//struct lookup<std::index_sequence<ignore...>> {
//    template <typename nth>
//    constexpr static decltype(auto)
//    at_position(decltype(ignore, type_erasure())..., wrapper<nth> w, ...) {
//        return w.get();
//    }
//
//    template<typename... Ts>
//    constexpr static auto
//    all_after(decltype(ignore, type_erasure())..., Ts&&... args) {
//        return std::forward_as_tuple(args.get()...);
//    }
//};
//
//template<std::size_t index, typename... Args>
//constexpr auto getNth(Args&&... args) {
//    return lookup<std::make_index_sequence<index>>::at_position(
//            wrapper_for(std::forward<Args>(args))...
//    );
//}
//
//template<std::size_t index, typename... Args>
//constexpr auto getAllAfter(Args&&... args) {
//    return lookup<std::make_index_sequence<index + 1>>::all_after(
//            wrapper_for(std::forward<Args>(args))...
//    );
//}

#endif //COMPILETIMEDIFFERENTIATION_UTILS_H
