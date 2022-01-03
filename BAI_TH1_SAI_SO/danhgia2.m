function [p_L,p_R,aEp_t] = danhgia2(p_e,p_t,rEp)
    aEp = p_t * rEp;
    p_L = p_t - aEp;
    p_R = p_t + aEp;
    
    if p_L <= p_e && p_R >= p_e
        aEp_t = {'Dung'};
    else
        aEp_t = {'Sai'};
    end
end