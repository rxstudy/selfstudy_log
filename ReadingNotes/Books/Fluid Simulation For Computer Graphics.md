---
type: book
title: Fluid Simulation For Computer Graphics
status: reading
started: 2026-11-11
finished:
author:
edition:
current_chapter:
current_page:
tags:
  - fluid-simulation
  - computer-graphics
---
# Fluid Simulation For Computer Graphics

## Reading goal
- What do I want to understand or implement?

## Next session
- Record the edition and current chapter/page in the properties above.
- Add notes for the section I am currently reading.

## Reading log
| Date | Chapter / pages | Main takeaway | Next step |
| --- | --- | --- | --- |
| 2026-11-11 | | | |
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

The pseudo code:
1. Start with divergence-free velocity field $\vec{u}^0$
2. For time step $n = 0, 1, 2, \ldots$
	1. Determine ${\Delta t}$ to go from $t_n$ to $t_{n+1}$
	2. Let $\vec{u}^A = \text{advect}(\vec{u}^n, \Delta t, \vec{u}^n)$
	3. Let $\vec{u}^B = \vec{u}^A + \Delta t \vec{g}$
	4. Set $\vec{u}^{n+1} = \text{project}(\Delta t, \vec{u}^B)$





## Concepts 
| Term                                  | Meaning                                                                                            | Example                                                           | Typical mathematical form                                                                                             |
| ------------------------------------- | -------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Advection**                         | Transport of a quantity by the fluid’s bulk velocity.                                              | A current carries warm water or dye downstream.                   | $\mathbf u\cdot\nabla q$ on the left-hand side of a transport equation.                                               |
| **Diffusion**                         | Spreading caused by microscopic motion or mixing, typically from higher to lower concentration.    | Dye spreads through still water.                                  | $\kappa\nabla^2q$, for constant diffusivity $\kappa$.                                                                 |
| **Conduction**                        | Heat transfer due to a temperature gradient; bulk motion is not required.                          | Heat spreads through stationary water or a metal rod.             | $\alpha\nabla^2T$, for constant thermal diffusivity $\alpha$.                                                         |
| **Convection**                        | Heat or mass transfer involving bulk fluid motion; commonly includes both advection and diffusion. | Circulating water transfers heat in a pot.                        | Often combines $\mathbf u\cdot\nabla T$ and $\alpha\nabla^2T$.                                                        |
| **Dissipation**                       | Conversion of organized energy, such as fluid kinetic energy, into internal energy.                | Viscosity damps motion and produces heat.                         | $\Phi=2\mu\,\mathbf S:\mathbf S\geq0$ for incompressible Newtonian flow, where $\mathbf S$ is the strain-rate tensor. |
| **Sources / sinks**                   | Local addition or removal of a transported quantity.                                               | A heater adds thermal energy; a reaction consumes a substance.    | $S_q$.                                                                                                                |

