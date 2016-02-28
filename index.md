---
title       : An App for goemetrical coloring pages
subtitle    : Create and download nice simple-to-very-complex coloring frames
author      : bbensid
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

- Coloring books are very common for education purposes. As a non-verbal medium they can easily go beyond linguistical barriers. But they can also attract the attention of children to concepts that they won't be interested in otherwise, like geometry.

- [Roger Burrow](https://en.wikipedia.org/wiki/Roger_Burrows) is one of the first to have published a coloring book exclusively dedicated to complex geometrical forms, ["Images: The Ultimate Coloring Experience"](https://www.google.ch/search?q=Images:+The+Ultimate+Coloring+Experience&safe=off&tbm=isch&tbo=u&source=univ&sa=X&ved=0ahUKEwjripbXiZrLAhUL1RoKHWRRBWEQsAQIOA&biw=1123&bih=571).

- This application is enabling you to create an original geometrical coloring page (called "frame"), to save it as PDF and download it on your computer, ready to be printed for you and your children to enjoy coloring it in a variety of colors or just in black and white.

--- .class #id 

## Creating the frame and preview

- The coloring frame creation is based on two basic forms:
    - The line-based form
    - The circle-based form
- The line-based form is a set of 36 lines, all crossing at the same randomely selected focal point and separated by the same angle of 10°.
- The circle-based form is a set of 200 concentric circles, which center is also randomely selected, with a radius growing by 0.5.
- The App user can choose how many line or circle-based forms he or she wishes to see on the coloring frame, and the algorithm will randomely select as many focal points and build the relevant forms from them.

--- .class #id 

## Example of frames

- The final frame could be very simple, with only one line or circle-based form :

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

- To very complex lace-like frames like here :

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)


--- .class #id 

## The final output and conclusion

- The nice feature of this application is that you can directly download a pre-formatted PDF file with the coloring frame you have just created.
- The PDF is formatted such as there is no margins, so you can directly print it and enjoy starting cloring it.

- In conclusion, this relatively simple application allows you to simply create original geometrical coloring frames and download them as pre-formatted PDF files to be readly printed and enjoyed.


