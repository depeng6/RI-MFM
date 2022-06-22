function  [location1, location2]= main(image_1,image_2)
    Pyramid_resize = 3;   
    Pyramid_sigma = 1.6;  
    NumLay = 4;  
    Sig = 20;     
    Thr = 50;    
    Rad = 15;    
    N = 200;       
    trans_form = 'affine';  % 变换模型

    num_1 = 3;
    num_2 = 3;
    sig_scale = Get_Scale(Pyramid_sigma,NumLay);
    ratio = sqrt(size(image_1,1)*size(image_1,2)/(size(image_2,1)*size(image_2,2)));

    I1 = preprocess(image_1);
    I2 = preprocess(image_2);
  
    feture_1 = detect_feature(image_1,Thr,floor(Rad*ratio),N,num_1,Pyramid_resize);

    feture_2 = detect_feature(image_2,Thr,Rad,N,num_2,Pyramid_resize);



%     des_1 = descriptor_feature(image_1,feture_1,num_1,NumLay,Pyramid_resize,sig_scale);
% 
%     des_2 = descriptor_feature(image_2,feture_2,num_2,NumLay,Pyramid_resize,sig_scale);
% 
%     [location1,location2] = match_feature(I1,I2,des_1,des_2,num_1,num_2,NumLay);
end

















