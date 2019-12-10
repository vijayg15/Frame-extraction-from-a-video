clc;
clear all;
close all;

Video_data = VideoReader('D:/OMAXE/2018_0506_012841_014.mp4');
get(Video_data)
for img = 8379:Video_data.NumberOfFrames;
    filename = strcat('frame',num2str(img),'.jpg');
    VidFrames = read(Video_data, img);
    imwrite(VidFrames, filename);
end
