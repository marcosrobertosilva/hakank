#=
  From
  "Probabilistic logic programming and its applications"
  Luc De Raedt, Leuven
  https://www.youtube.com/watch?v=3lnVBqxjC88
  @ 3:44

  """
  Mike has a bag of marbles with 4 white, 8 blue, and
  6 red marbles. He pulls out one marble from the bag
  and it is red. What is the probability that the
  second marble he pulls out of the bag is white?

  The answer is 0.234931.
  """

  Cf ~/cplint/bag_of_marbles.pl
     ~/blog/bag_of_marbles.blog
     ~/psi/bag_of_marbles.psi
     ~/webppl/bag_of_marbles.wppl

  Also see bag_of_marbles2.jl for an alternative approach (using recursion).

=#

using Turing, StatsPlots, DataFrames
include("jl_utils.jl")

#=
Distributions of variable draw1 (num:0)
2.00000 =>   46948  (0.469480)
3.00000 =>   29289  (0.292890)
1.00000 =>   23763  (0.237630)

White is 1 so the probability is 0.237630

=#

@model function bag_of_marbles()

    white = 1
    blue  = 2
    red   = 3
    colors = [white,blue,red]

    start = [4,8,6];

    draw0 ~ Categorical(simplex([start[white],start[blue],start[red]]))


    if draw0 == white
        draw1 ~ Categorical(simplex([start[white]-1,start[blue],start[red]]))
    elseif draw0==blue
        draw1 ~ Categorical(simplex([start[white],start[blue]-1,start[red]]))
    else
        # red
        draw1 ~ Categorical([start[white],start[blue],start[red]-1]|>simplex);
    end

    true ~ Dirac(draw0 == red)

    return draw1==white

end

model = bag_of_marbles()
num_chains = 4

# HH has problem with this!
# chains = sample(model, MH(), MCMCThreads(), 100_000, num_chains)
# chains = sample(model, MH(), 100_000)

# chains = sample(model, PG(15), MCMCThreads(), 10_000, num_chains)
chains = sample(model, SMC(1000), MCMCThreads(), 10_000, num_chains)

# Note: IS don't generate chains the same way as MH, PG, and SMC!
# chains = sample(model, IS(), MCMCThreads(), 1000, num_chains)

display(chains)

show_var_dist_pct(chains,:draw0)
println("\ndraw1: The probability of drawing white is the probability for 1.0")
show_var_dist_pct(chains,:draw1)

# println("\ndraw1==white:")
# genq = generated_quantities(model,chains)
# show_var_dist_pct(genq,20)
# println("quantile:")
# println(quantile(vec(genq), [0.0, 0.025, 0.25, 0.5, 0.75, 0.975, 1.0]))
