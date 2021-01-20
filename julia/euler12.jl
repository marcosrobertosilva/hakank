#=

  Euler #12 in Julia.

  Problem 12
  """
  The sequence of triangle numbers is generated by adding the natural numbers.
  So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
  The first ten terms would be:

  1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

  Let us list the factors of the first seven triangle numbers:

       1: 1
       3: 1,3
       6: 1,2,3,6
      10: 1,2,5,10
      15: 1,3,5,15
      21: 1,3,7,21
      28: 1,2,4,7,14,28

  We can see that the 7th triangle number, 28, is the first triangle number
  to have over five divisors.

  Which is the first triangle number to have over five-hundred divisors?")
  """

  This Julia program was created by Hakan Kjellerstrand, hakank@gmail.com
  See also my Julia page: http://www.hakank.org/julia/

=#

include("Euler.jl")

#
# This is basically factors + collect together so it's not general
# enough for placing in Euler.jl
#
function factors_map(n::Int64)
    if n == one(n)
        return Dict{Int64,Int64}(1=>1)
    end
    m = Dict{Int64,Int64}();
    while n % 2 === zero(n)
        if !haskey(m,2)
            m[2] = zero(0)
        end
        m[2] += one(n);
        # n = round(Int, n/2);
        n = n//2
    end
    t = 3
    while n > 1 && t < ceil(Int,sqrt(n))
        while n % t == 0
            if !haskey(m,t)
                m[t] = 0
            end
            m[t] += 1
            n //= t
        end
        t += 2
    end
    if n > 1
        if !haskey(m,n)
            m[n] = 0
        end
        m[n] += 1
    end
    return m;
end


# Brute force
# 459.90159305s !
 function euler12a_dont_run()
    len = 0
    i = 0
    tnum = 0
    while len <= 500
        i+=1
        tnum += i
        divs = all_divisors(tnum)
        len = length(divs)
        if i % 1000 === 0
            println("i:$i tnum:$tnum len: $len")
        end
    end
    return tnum;
end

# 0.13744243s
function euler12b()
    len = 0
    i = 0
    tnum = 0
    while len <= 500
        i+=1
        tnum += i
        f = factors_map(tnum)
        len = prod(values(f).|>(i->i+1))
    end
    return tnum
end

# 0.16336305s
function euler12c()
    len = 0
    i = 0
    tnum = 0
    while len <= 500
        i+=1
        tnum += i
        len = prod(values(collect_list(factors(tnum))).|>j->j+1)
    end
    return tnum
end


# run_euler(euler12a); # DON'T RUN! Too slow.
run_euler(euler12b);
# run_euler(euler12c);
