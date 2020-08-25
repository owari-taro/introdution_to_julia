using LinearAlgebra, Statistics, Plots



plot(x_vals, y_vals, arrow = true, color = :blue,
     legend = :none, xlims = (-5, 5), ylims = (-5, 5),
     annotations = [(2.2, 4.4, "[2, 4]"),
                    (-3.3, 3.3, "[-3, 3]"),
                    (-4.4, -3.85, "[-4, -3.5]")],
     xticks = -5:1:5, yticks = -5:1:5,
     framestyle = :origin)





x = [2]
scalars = [-2 1 2]
vals = [0 0 0; x * scalars]
labels = [(-3.6, -4.2, "-2x"), (2.4, 1.8, "x"), (4.4, 3.8, "2x")]
     
plot(vals, vals, arrow = true, color = [:red :red :blue],
          legend = :none, xlims = (-5, 5), ylims = (-5, 5),
          annotations = labels, xticks = -5:1:5, yticks = -5:1:5,
          framestyle = :origin)