clc
clear
directory = '.\input\';
StrOut='.\out\';%重新保存图片的路径
files = dir(directory);
files = files(3:end);
N = numel(files);
for i = 1:N
    if files(i).name(1) ~= '.'
        img = imread(strcat(directory,files(i).name));
        % im = double(imrotate(imresize(im, [1080, 1920]), 0))/255;
        % img = imresize(img,[108,108]);%修改大小
        imwrite(img,[StrOut '\' '1' '-' num2str(i) '.jpg']);%保存
    end
end