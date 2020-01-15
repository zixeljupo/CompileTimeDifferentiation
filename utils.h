#ifndef COMPILETIMEDIFFERENTIATION_UTILS_H
#define COMPILETIMEDIFFERENTIATION_UTILS_H

#include <vector>

//#define eval_macro \
//template <class ValueType> \
//constexpr ValueType operator()(const std::vector<ValueType> & values) const

#define eval_macro \
template <typename... Args> \
constexpr double operator()(const Args... values) const

namespace meta {
    struct ignore final {
        template <typename... Ts>
        constexpr ignore(Ts&&...) noexcept {}
    };
}

namespace meta {
    template <typename>
    using eat = ignore;

    template <std::size_t>
    using eat_n = ignore;
}

namespace detail {
    template <std::size_t N, typename = std::make_index_sequence<N>>
    struct at;

    template <std::size_t N, std::size_t... skip>
    struct at<N, std::index_sequence<skip...>> {
        template <typename Tp, typename... Us>
        constexpr decltype(auto) operator()(meta::eat_n<skip>..., Tp&& x,
                                            Us&&...) const noexcept {
            return std::forward<Tp>(x);
        }
    };
}

namespace fused {
    template <std::size_t N, typename... Ts>
    constexpr decltype(auto) nth(Ts&&... args) {
        return detail::at<N>{}(std::forward<Ts>(args)...);
    }
}

#endif //COMPILETIMEDIFFERENTIATION_UTILS_H
