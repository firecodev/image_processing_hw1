function [outim] = gammaTrans(im,gamma)
outim = zeros(size(im), "uint8");

[M,N] = size(im);

for i=1:M
    for j=1:N
        outim(i,j) = uint8( (( double(im(i,j))/double(255) ).^gamma) * 255 );
    end
end

end