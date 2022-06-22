function  image_output= preprocess(image)

    if length(size(image))>2
        I=rgb2gray(image);
    end
    I=double(image)/255; %归一化处理

    
    X = I;
    r = 5;
    lambda = 0.49;%1/64;
    base = WeightedGuidedImageFilter(X, X, r, lambda);
    detail=I-base;

    X = base;
    r=5;
    lambda=0.81;
    base1=WeightedGuidedImageFilter(X, X, r, lambda);
    detail1=X-base1;

    I=uint8((base*1.2+detail)*255);
    [x,y,z] = size(I);
    if z == 3
        I = rgb2gray(I);
    end
    minV = double(min(min(I)));
    maxV = double(max(max(I)));
    base_CLAHE = (Enhance_image(I,x,y,minV,maxV,1,1,255,255));

    image_output = ((base*0.7+detail*1.4)*1.4);


end



























