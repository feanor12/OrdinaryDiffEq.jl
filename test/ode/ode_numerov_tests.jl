using OrdinaryDiffEq, Test

alg = Numerov()

function f(du,u,p,t)
  print(du,u,p,t)
  du[1] = 3.0*u[2] 
  du[2] = u[1]
end

prob = ODEProblem(f,[0.0;0],(0,1)) 

sol = solve(prob, alg, dt = 0.1, dense=false)
