function  matchment= Showmatch( I1, I2, loc1, loc2)

    I3= Concate_images( I1, I2);
    figure, matchment= imshow( I3,[]);
    hold on
    cols= size( I1, 2);

    for  i= 1: size( loc1, 1)
        line([ loc1( i, 1), loc2( i, 1)+ cols],[ loc1( i, 2), loc2( i, 2)], 'Color', 'b');
        plot( loc1( i, 1), loc1( i, 2), 'gx', 'Color', 'y')
        plot( loc2( i, 1)+ cols, loc2( i, 2), 'g+', 'Color', 'g')
    end

end
   
