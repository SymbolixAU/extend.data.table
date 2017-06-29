

# library(data.table)
#
# dt_extend <- data.table(id = 1:5,
# 												val = letters[1:5])
#
# save("dt_extend", file = "./data/dt_extend.rda")




# I've created a small test package [`extend.data.table`](https://github.com/SymbolixAU/extend.data.table) that I'm using to test how to correctly extend `data.table` objects in my own packages.
#
# As part of the package I've included a `dt_extend` .rda, created using
#
# '
# library(data.table)
#
# dt_extend <- data.table(id = 1:5,
# 												val = letters[1:5])
#
# save("dt_extend", file = "./data/dt_extend.rda")
#
#
# I can load the package and the data comes with it as expected:
#
# 	library(extend.data.table)
#
# dt_extend
# # id val
# # 1:  1   a
# # 2:  2   b
# # 3:  3   c
# # 4:  4   d
# # 5:  5   e
#
# # str(dt_extend)
# # Classes ‘data.table’ and 'data.frame':	5 obs. of  2 variables:
# # 	$ id : int  1 2 3 4 5
# # $ val: chr  "a" "b" "c" "d" ...
# # - attr(*, ".internal.selfref")=<externalptr>
#
#
# As `dt_extend` is a `data.table` object it is created with a `.internal.selfref` pointer.
#
#
#
#
# ## install from github
# devtools::install_github("SymbolixAU/extend.data.table")
#




