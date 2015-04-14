pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        options(digits=4) 
        # loading library
        require (data.table)
        # getting list of file
        lsFileFull <- list.files (directory, full.names = TRUE)
        #creates an empty data frame for cbind & rbind
        dat <- data.frame() 
        dat2 <- data.frame() 
        # Looping 
        for (i in id) {                                
                dat <- fread(lsFileFull[i]) 
                dat2 <- data.frame(rbind(dat2,dat))
        }
        # return result 
        
        
        x <-  paste(c(pollutant),  collapse="");
        mean( dat2[[x, exact = FALSE]], na.rm = TRUE)
        
}

