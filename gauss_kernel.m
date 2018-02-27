function [filter] = gauss_kernel(filter_size,sigma)
%Function that calculates the 2D gaussian for a kernel from the scalar
%inputs filter_size (the window size for the kernel) and sigma (the
%standard deviation of the gaussian distribution.

%Preallocate
filter = zeros(filter_size);

for ii = 1:filter_size
    for jj = 1:filter_size
        
        %Get the location in the window
        loc(1) = floor(-filter_size/2)+ii;
        loc(2) = floor(-filter_size/2)+jj;
        
        %Calculate the value of the gaussian for the current location
        filter(ii,jj) = exp(-(loc(1)^2 + loc(2)^2)/(2*sigma^2));
        
    end
end

%normalize by the sum of the elements
filter = filter./sum(filter(:));
