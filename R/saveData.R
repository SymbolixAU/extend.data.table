

library(data.table)
## create data.table
dt_extend <- data.table(id = 1:5,
								val = letters[1:5])

## create two attributes:
## - extend.data.table  onto data.table
## - extended           onto the 'val' column
setattr(dt_extend, 'class', c('extended.data.table', class(dt_extend)))
setattr(dt_extend[['val']], 'extended', 'print')

## Method to format the 'extended' column
print.extended.data.table <- function(edt){

	print("data.table:::.global$print")
	print(data.table:::.global$print)
	print("data.table::shouldPrint(x)")
	print(data.table::shouldPrint(edt))

	## find the 'extended' column
	cols <- sapply(edt, function(x) names(attributes(x)))
	cols <- names(which(cols == "extended"))

	## more than one column can have the 'extended' attribute
	edt <- edt[,
						 lapply(.SD, function(y) { paste0("formatted: ", y) } ),
						 by = setdiff(names(edt), cols),
						 .SDcols = cols
						 ]

	data.table:::.global$print

	## now call data.table print
	NextMethod()
}

# `[.extended.data.table` <- function(edt){
# 	# print("[data.table::shouldPrint()")
# 	# print(data.table::shouldPrint(edt))
# 	NextMethod()
# }

## these all print as expected
dt_extend
str(dt_extend)

## why does this update AND print?
dt_extend[, val2 := val]







