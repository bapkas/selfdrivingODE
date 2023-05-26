% Beräknar hastigheten för en bil givet dess avstånd till bilen framför: x. 

function [v] = hastighet(x)

v_max = 25;
d = 75;

if x <= 0
    v = 0;    
elseif x >= d
    v = v_max;
else
    v = v_max / d * x;
end

end