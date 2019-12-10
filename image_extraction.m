clc;
clear all;
close all;

Video_data = VideoReader('./video.mp4');
get(Video_data)
for img = 0:Video_data.NumberOfFrames;
    filename = strcat('frame',num2str(img),'.jpg');
    VidFrames = read(Video_data, img);
    imwrite(VidFrames, filename);
end
