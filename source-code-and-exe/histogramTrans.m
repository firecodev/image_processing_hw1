function [outim] = histogramTrans(im)
outim = zeros(size(im), "uint8");

[M,N] = size(im);
totalPixel = M*N;

ntable = zeros([1 256], "uint32"); % number of pixel of each gray level

for i=1:M
    for j=1:N
        idx = im(i,j) + 1; % idx = gray level + 1
        ntable(idx) = ntable(idx) + 1;
    end
end

ptable = zeros([1 256], "double"); % probibility of each gray level (PDF)

for i=1:256
    ptable(i) = double(ntable(i)) / double(totalPixel);
end

ctable = zeros([1 256], "double"); % accumulated probibility of each gray level (CDF)

ctable(1) = ptable(1);
for i=2:256
    ctable(i) = ctable(i-1) + ptable(i);
end

for i=1:M
    for j=1:N
        outim(i,j) = uint8( ctable( im(i,j)+1 ) * 255 );
    end
end

end

