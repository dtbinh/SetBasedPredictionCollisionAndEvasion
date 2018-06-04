% function x = SingleIntegrator(x0, u, ts)

function x = SingleIntegrator(x0, u, ts)

    [m,n] = size(u);
    
    x = zeros(2,n+1);
    x(1,1) = x0(1);
    x(2,1) = x0(2);
    
    % apply integrator dynamics
    for i = 1:n
        x(1,i+1) = x(1,i) + ts*u(1,i);
        x(2,i+1) = x(2,i) + ts*u(2,i);
    end
end