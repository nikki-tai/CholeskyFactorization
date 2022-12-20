function chol(T::Matrix)
    m, n = size(T)
    L=zeros(m,n)
    for i=1:n
        for j=1:i
            
            sum = float(0)
            for k=1:j
                sum += (L[i,k] * L[j,k])
            end
            if i==j
                L[i,i] = sqrt((T[i,i]-sum))
            else
                L[i,j] = (float(1.0)/(L[j,j]*(T[i,j]-sum)))
            end
        end
        if L[i,i]==0 
            println("not allowed")
        end
    end
    return L
end


T = [2.0 1.0 ; 1.0 2.0]
chol(T)

