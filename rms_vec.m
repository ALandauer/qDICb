function x = rms_vec(x)
%find the rms value of an input vector
x = x(:);
x = sqrt(sum((x.^2))/length(x));


