## Chapter 1: The Equations of Fluids

### Naiver-Stoke equation

Introduce the Navier-Stokes equations

$$
 \begin{aligned}
   \frac{\partial \vec{u}}{\partial t} + \vec{u}\cdot \nabla \vec{u} +
     \frac{1}{\rho} \nabla p &= \vec{g} + \nu \nabla \cdot \nabla \vec{u} \\
   \nabla \cdot \vec{u} &= 0
 \end{aligned}
$$

 **Lagrangian picture vs Eulerian picture**:
- Lagrangian follows the particle through the velocity field $\vec{u}$ to measure the quantity $q$ on the particle
- Eulerian stands still at a grid point and measures the change in $q$

 **Material derivative**  of a quantity $q$ : 
$$\frac{Dq(t, \vec{x})}{Dt} = \partial_tq + \vec{u}\cdot \nabla q$$
**Intuition**: $D_t q$  is the Lagrangian view,  $\partial_t q$ is the Eulerian view.  

**Example**: at time 0,  the water at point $A$ is 20$\celsius$  and  40$\celsius$ at point $B$,   a water particle arrives from $A$ to $B$ at time $t=1s$.  At $t$, the water at $B$ is replaced by particle from $A$, so its temperature has drop to $20\celsius$ , the Eulerian view of this quantity $\partial_t q = -20 \celsius/s$,   the same water particle hasn't changed in temperature so the Lagrangian view of this quantity is unchanged $D_t q = 0$.    $\vec{u}\cdot \nabla q$ records the spatial temperature gradient along the velocity field in this case is  $+20 \celsius / s$  because water is flowing from cold area to hot area.  So the above equation holds $0 = -20 + 20$

We reason that the NS equation is just $F=ma$ in essence: 
$$ m\frac{D\vec{u}}{Dt} = m\vec{g}  \underbrace{-V \nabla p}_{\text{pressure gradient force}} + \underbrace{ V \mu \nabla^2\vec{u} }_{\text{viscosity force}}$$
The pressure gradient is the net pressure exerted on the surface of this fluid blob surface, multiplying the blob volume $V$ gives the net force on this blob. (negative gradient means we want the steepest descent which points from high pressure to low pressure region)

The Laplacian on $\vec{u}$ measures how much difference the velocity at that point is from the adjacent average. "It detects bump or lump in the velocity field." and any bump/lump difference in velocity will create a force called viscosity to try to force the particle to move at average velocity (or a force that smooths local velocity variation).

If we divide both side by the blob volume $V$, we get the first part of the NS equation. 

The second part of NS equation is incompressibility. Even sound waves are tiny perturbation in volume so we don't need to consider compressibility for animation. 

$$ \frac{dV}{dt} = \int \int_{\partial V} \vec{u} \cdot \vec{n} = \int\int\int_V \nabla \cdot \vec{u} = 0 \qquad \longrightarrow \qquad  \nabla \cdot \vec{u} = 0$$ Change of fluid volume $V$ is just summing up the fluid trying to leave the boundary (taking the normal component of the velocity) or  by stokes' theorem,  adding up all the divergence of the velocity field inside the volume.  (Divergence is positive at a point if there's a fluid source and negative if there is a sink ).  
- **Positive divergence:** net outward flow from a small region; a material element expands.
- **Negative divergence:** net inward flow into a small region; a material element contracts.
- **Zero divergence:** a material element preserves volume, though it may move, rotate, and change shape.


### Euler equations (Dropping the viscosity term)
Numerical simulation will bring back a term that can be used for viscosity anyway.

### Boundary Condition
We consider two type of boundary conditions: 
**Solid walls**:  We don't want fluid flow into the wall, so we will have   $\vec{u}\cdot \vec{n} = \vec{u}_{\text{wall}} \cdot \vec{n}$ to make the liquid's relatively at rest against the wall. This is called **no-stick condition**


