function E = shape_error(Xc, Yc, Xr, Yr)

E = mean( sqrt((Xc - Xr).^2 + (Yc - Yr).^2) );

end
