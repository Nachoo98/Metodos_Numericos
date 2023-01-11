clc
clear all
close all

f=@(x)x^2-2;
fp=@(x)2*x;
x0=1;
tol=0.00001;

R=NR(x0,f,fp,tol)