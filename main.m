clc
close all     
clear all;   
%% test a gray image 
f_ori=imread('brain.bmp');
fn=imnoise(f_ori,'gaussian',0.03);
%% parameters
cluster=5; % the number of clustering centers
se=5; % the parameter of structuing element used for morphological reconstruction
w_size=3; % the size of fitlering window
%% segment an image corrupted by noise
tic 
[center1,U1,~,t1]=FRFCM(double(fn),cluster,se,w_size);
Time1=toc;
disp(strcat('running time is: ',num2str(Time1)))
f_seg=fcm_image(f_ori,U1,center1);
imshow(fn),title('Original image');
figure,imshow(f_seg);title('segmentated result');
