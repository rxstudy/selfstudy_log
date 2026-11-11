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

## Chapter notes
<!-- Repeat this section for each chapter; use the book's actual chapter titles. -->
### Chapter 1: The Equations of Fluids

#### Main idea
Introduce the Navier-Stokes equations

$$
 \begin{aligned}
   \frac{\partial \vec{u}}{\partial t} + \vec{u}\cdot \nabla \vec{u} +
     \frac{1}{\rho} \nabla \rho &= \vec{g} + \nu \nabla \cdot \nabla \vec{u} \\
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


#### Questions
- [ ]

## Concepts
<!-- Link focused notes here as they develop, e.g. [[Pressure projection]]. -->

## Experiments
- [ ] Choose a small implementation or numerical experiment from the current section.

## Summary in my own words

## References
<!-- Include page/section numbers for quotations, equations, and figures. -->
