clc
clear
directory = '.\input\';
StrOut='.\out\';%���±���ͼƬ��·��
files = dir(directory);
files = files(3:end);
N = numel(files);
for i = 1:N
    if files(i).name(1) ~= '.'
        img = imread(strcat(directory,files(i).name));
        % im = double(imrotate(imresize(im, [1080, 1920]), 0))/255;
        % img = imresize(img,[108,108]);%�޸Ĵ�С
        imwrite(img,[StrOut '\' '1' '-' num2str(i) '.jpg']);%����
    end
end