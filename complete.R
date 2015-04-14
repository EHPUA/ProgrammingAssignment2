complete  <- function(directory, id = 1:332) {
        # loading library
        library (data.table)
        # getting list of file
        lsFileFull <- list.files (directory, full.names = TRUE)
        #creates an empty data frame for cbind & rbind
        dat <- data.frame() 
        dat2 <- data.frame() 
        # Looping with For loop
        for (i in id) {                                
                dat <- fread(lsFileFull[i])
                x <- sum(complete.cases(dat))
                dat <- data.frame(cbind(id=i,nobs=x)) 
                dat2 <- data.frame(rbind(dat2,dat))
        }
        # return result 
        return (dat2)
}
