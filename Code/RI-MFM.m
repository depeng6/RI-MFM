clear; close all; clc;



dir_ir='dataset\Homemade_IR-VIS\\IR/';
dir_vi='dataset\Homemade_IR-VIS\\VI/';

% ir_name = 'IR_';
% vi_name = 'VI_';

ir_name = 'ir_';
vi_name = 'vi_';

for i=1:100

    filename_ir = strcat(dir_ir, ir_name, num2str(i), '.jpg');  
    image_1 = imread(filename_ir);  
    
    filename_vi = strcat(dir_vi, vi_name, num2str(i), '.jpg');  
    image_2 = imread(filename_vi);  
    [location1,location2] = main(image_1,image_2);
    
%     figure(1),imshow(image_1);
%     close(1);
    
    
end










