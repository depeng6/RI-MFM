function  im= Concate_images( image_1, image_2)
    [ M1,~, B1]= size( image_1);
    [ M2,~, B2]= size( image_2);
    if ( B1== 1&& B2== 3)
        temp= image_1;
        image_1(:,:, 1)= temp; image_1(:,:, 2)= temp; image_1(:,:, 3)= temp;
        elseif ( B1== 3&& B2== 1)
        temp= image_2;
        image_2(:,:, 1)= temp; image_2(:,:, 2)= temp; image_2(:,:, 3)= temp;
    end
    
    if ( M1< M2)
        image_1( M2, 1)= 0;
    else 
        image_2( M1, 1)= 0;
    end
    im=[ image_1, image_2];
end