function H_kn = H(k,n)
    syms t;
    f = t;
    for i = 1:n
        f = f * (t-i);
    end
    f = f/(t-k);
    I_kn = int(f,t,0,n);
    
    H_kn = ((-1)^(n-k)*nchoosek(n,k))/(n*factorial(n))*I_kn;
end