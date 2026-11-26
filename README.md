# Robotic Fish Dynamics

A MATLAB simulation of a multi-link robotic fish driven by a traveling-wave joint input. The model integrates joint states with `ode45` and includes kinematics, dynamics, energy calculations, and shape-fidelity metrics.

## Run

From the repository root in MATLAB:

```matlab
addpath(genpath(fullfile(pwd, 'Fish_pro')));
run(fullfile('Fish_pro', 'main.m'));
```

[main_symbolic.m](Fish_pro/main_symbolic.m) contains a symbolic derivation and uses Symbolic Math Toolbox. The [STEP assembly](cad/robot-fish-assembly.step) can be opened in a STEP-compatible CAD viewer.
