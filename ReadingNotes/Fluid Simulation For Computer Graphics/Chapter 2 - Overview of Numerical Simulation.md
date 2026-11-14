## Chapter 2: Overview of Numerical Simulation 
The NS equation with no viscosity is the following:
$$
 \begin{aligned}
   \frac{\partial \vec{u}}{\partial t} + \vec{u}\cdot \nabla \vec{u} +
     \frac{1}{\rho} \nabla p &= \vec{g}  \\
   \nabla \cdot \vec{u} &= 0
 \end{aligned}
$$
We can split the NS equation into sub equations to solve:
1. Use forward Euler to discretize we get the following (notice we use pressure at time $n+1$ by choice to for the pressure to make new velocity incompressible) : $$ u^{n+1} = \underbrace{\underbrace{u^n - \Delta t (u^n \nabla) u^n}_{w^n_1} + \Delta t\vec{g}}_{w^n_2} +
     \frac{\Delta t}{\rho} \nabla p^{n+1}  $$
 2. We can now split the equations as the following and their forms correspond to solving a different set of PDEs 
 $$ \begin{aligned}
	   w^n_1 &= u^n - \Delta t (u^n \nabla) u^n   &&\Rightarrow \frac{w^n_1 - u^n}{\Delta t} + (u^n\nabla)u^n = 0 &&\Rightarrow \frac{Dw^n_1}{Ds} = 0 ,   \text{ (where }w^{n-1}_1 = u^n ) \\
	  w^n_2 &= w^n_1 + \Delta t \vec{g}  &&\Rightarrow \frac{w^n_2 - w^n_1}{\Delta t} = \vec{g}  &&\Rightarrow \frac{\partial w_2}{\partial t} = \vec{g},   \text{ (where }w^{n-1}_2 = w^n_1 )\\
	  u^{n+1} &= w^n_2 + \frac{\Delta t}{\rho}\nabla p^{n+1}  &&\Rightarrow \frac{u^{n+1} - w^n_2 }{\Delta t} = \frac{1}{\rho}\nabla p^{n+1}  &&\Rightarrow \frac{\partial u }{\partial t} = \frac{1}{\rho}\nabla p, (\text{where }u^n = w^n_2)\\
 \end{aligned}$$

The subproblem PDEs are Advection, Body forces, Pressure Projection(Incompressibility). Note that we have $\nabla \cdot \vec{u} = 0$  divergence free as condition for the last equation the pressure projection. 

### **Algorithm**:
1. Start with divergence-free velocity field $\vec{u}^0$
2. For time step $n = 0, 1, 2, \ldots$
	1. Determine ${\Delta t}$ to go from $t_n$ to $t_{n+1}$
	2. Let $\vec{u}^A = \text{advect}(\vec{u}^n, \Delta t, \vec{u}^n)$
	3. Let $\vec{u}^B = \vec{u}^A + \Delta t \vec{g}$
	4. Set $\vec{u}^{n+1} = \text{project}(\Delta t, \vec{u}^B)$





