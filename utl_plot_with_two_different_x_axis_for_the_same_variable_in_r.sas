Plot with two different x axis for the same variable in R

see github
https://tinyurl.com/yd2mchct
https://github.com/rogerjdeangelis/utl_plot_with_two_different_x_axis_for_the_same_variable_in_r/blob/master/utl_plot_with_two_different_x_axis_for_the_same_variable_in_r.png
https://tinyurl.com/yap8mcff
https://github.com/rogerjdeangelis/utl_plot_with_two_different_x_axis_for_the_same_variable_in_r

https://tinyurl.com/ybsvzt7f
https://stackoverflow.com/questions/51833159/plot-with-two-different-x-axis-for-the-same-variable-in-r

R Evans profile
https://stackoverflow.com/users/3358272/r2evans


INPUT
=====

 SD1.HAVE total obs=4

    X    Y

    2    2
    4    4
    6    6
    8    8


 EXAMPLE OUTPUT
 --------------

                  Logarithmic Labels

        1                         2            3
       2                         2            2
      -+------------+------------+------------+-
   Y  |                                        |
    8 +                                       *+
      |                                        |
      |                                        |
      |                                        |
      |                                        |
      |                                        |
      |                                        |
    6 +                          *             +
      |                                        |
      |                                        |
      |                                        |
      |                                        |
      |                                        |
      |                                        |
    4 +             *                          +
      |                                        |
      |                                        |
      |                                        |
      |                                        |
      |                                        |
      |                                        |
    2 +*                                       +
      -+------------+------------+------------+-
       2            4            6            8

                Linear Labels


 PROCESS
 =======

%utl_submit_r64('
 library(ggplot2);
 library(haven);
 xy<-read_sas("d:/sd1/have.sas7bdat");
 png("d:/png/utl_plot_with_two_different_x_axis_for_the_same_variable_in_r.png");
 ggplot(xy,aes(X, Y)) +
 geom_point() +
 theme(text = element_text(size = 25)) +
 scale_x_continuous(sec.axis=sec_axis(~., breaks=c(2,4,6,8),
   labels=c(expression(~2^1),expression(~2^2)," ",expression(~2^3))));
png();
');


OUTPUT
======

https://tinyurl.com/yd2mchct


