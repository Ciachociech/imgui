C++23 changes:
    Language features:
        [N] - () optional for lambdas (P1102R2)
        [D] - Literal suffix for (signed) size_t (P0330R8)
        [N] - multidimensional subscript operator (P2128R6)
        [N] - if consteval (P1938R3)
        [D] - narrowing contextual conversions in static_assert and constexpr if (P1401R5)
        [N] - mixed string literal concatenation (P2201R1)
        [N] - deducing this (P0847R7)
        [N] - auto(x)/auto{x} (P0849R8)
        [N] - change scope of lambda trailing-return-type (P2036R3)
        [D] - #elifdef and #elifndef (P2334R1)
        [N] - attributes on lambdas (P2173R1)
        [N] - remove non-encodable wide character... (P2362R3)
        [N] - labels at the end of compound statements (P2324R2)
        [D] - simpler implicit move (P2266R3)
        [N] - permitting static constexpr vars in constexpr functions (P2647R1)
        [B] - extending the lifetime of temporaries... (P2718R0)
    Library features:
        [N] - stacktrace library (P0881R7, P2301R1)
        [N] - std::unreachable (P0627R6)
        [N] - <expected> (P0323R12, P2549R1)
        [N] - formatted output library <print> (P2093R14, P2539R4) - extends time so much
        
C++20 changes:
    Language features:
        [N] - allow lambda capture [=, this) (P0409R2)
        [D] - __VA_OPT__ (P0306R4, P1042R1)
        [D] - designated initializers (P0329R4)
        [N] - template-parameter-list for generic lambdas (P0428R2)
        [N] - lambdas in unevaluated contexts (P0315R4)
        [D] - init-statements for range-based for (R0614R1)
        [?] - adl and function templates that are not visible (P0846R0)
        [D] - attributes likely/unlikely (P0479R5)
        [?] - no_unique_address (P0840R2)
        [N] - allow structured bindings to accessible members (P0969R0)
        [N] - class types in non-type template parameters (P0732R2)
        [N] - prohibit aggregates with user-declared constructors (P1008R1)
        [D] - consistency improvements for comparisions (P1120R0)
        [N] - coroutines (P0912R5)
        [N] - modules (P1103R3)
        [N] - permit conversions to arrays of unknown bound (P0388R4)
        [N] - constinit (P1143R2)
        [N] - deprecate comma operator in subscripts (P1161R3)
        [N] - using enum (P1099R5)
    Library features:
        [] - fixing operator>> (P0487R1)

Older standards:
[E] - auto types in for loops

Legend:
D - done
E - edit in progress
N - not applicable
P - planned
