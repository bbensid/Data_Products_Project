library(shiny)
library(plotrix)
library(sp)
shinyServer(
  function(input, output) {
    output$circle <- renderPrint({input$circle})
    output$line <- renderPrint({input$line})
    plotInput <- reactive({
        ##pdf() for the pdf output
        pdf(file="plot.pdf",paper="special", width=11.69,height=8.27)
        ##setting the common parameters for the pdf saving and the preview
        typelist <- c(rep("circle", input$circle),rep("line",input$line))
        seeds <- sample(1:100,12)
        ##create the plot for the pdf saving
        par(mar = rep(0,4))
        plot(1, type="n", axes=FALSE, 
             xlab="", ylab="",
             xlim = c(-10,10), ylim=c(-10,10),
             frame.plot=FALSE,
             bty = "n")
        
        for (p in 1:length(typelist)) {
            if (typelist[p] == "circle") {
                set.seed(seeds[p])
                x <-sample(-10:10,2)
                for (i in seq(0.5,100,0.5)) {
                    draw.circle(x[1],x[2],i,nv=100,border=NULL,
                                col=NA,lty=1,lwd=0.5) 
                }
            } else {
                set.seed(seeds[p])
                x<-sample(-10:10,2)
                nv <- 36
                angle.inc <- 2 * pi/nv
                angles <- seq(0, 2 * pi - angle.inc, by = angle.inc)
                for (l in 1:nv) {
                    if (cos(angles[l])==0) {abline(v=x,lty=1,lwd=0.5)
                    }else {
                        bb<- sin(angles[l])/cos(angles[l])
                        aa <- x[2]-x[1]*bb
                        abline(a=aa,b=bb,lty=1,lwd=0.5)
                    }
                }
            } 
        }
        ##need to dev.off 
        dev.off()
        ##recreate the plot for the preview
        par(mar = rep(0,4))
        plot(1, type="n", axes=FALSE, 
             xlab="", ylab="",
             xlim = c(-10,10), ylim=c(-10,10),
             frame.plot=FALSE,
             bty = "n")
        
        for (p in 1:length(typelist)) {
            if (typelist[p] == "circle") {
                set.seed(seeds[p])
                x <-sample(-10:10,2)
                for (i in seq(0.5,100,0.5)) {
                    draw.circle(x[1],x[2],i,nv=100,border=NULL,
                                col=NA,lty=1,lwd=0.5) 
                }
            } else {
                set.seed(seeds[p])
                x<-sample(-10:10,2)
                nv <- 36
                angle.inc <- 2 * pi/nv
                angles <- seq(0, 2 * pi - angle.inc, by = angle.inc)
                for (l in 1:nv) {
                    if (cos(angles[l])==0) {abline(v=x,lty=1,lwd=0.5)
                    }else {
                        bb<- sin(angles[l])/cos(angles[l])
                        aa <- x[2]-x[1]*bb
                        abline(a=aa,b=bb,lty=1,lwd=0.5)
                    }
                }
            }
        }
    })
##run the preview
output$newPlot <- renderPlot({plotInput() })
##creates the pdf
output$pdflink <- downloadHandler(
    filename <- "NiceGeometricalColoringFrame.pdf",
    content <- function(file) {
        file.copy("plot.pdf", file)
    }
)
  }
)
