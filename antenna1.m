d=design(dipole,1e9);
radius=6.7450e-04; %Radius of thin wires
d.Width=cylinder2strip(radius); %Converting into equivalent stripwidth d.Length=139.1e-03;
d.TiltAxis=[0 1 0]; d.Tilt=-90;
ant=design(yagiUda,1e9); ant.Exciter=d;
ant.NumDirectors=2;
ant.DirectorLength=[131.9e-03;126.5e-03]; ant.DirectorSpacing=[65.95e-03;80.34e-03]; ant.ReflectorLength=141.5e-03;
ant.ReflectorSpacing=88.13e-03;



ant.Exciter.Conductor = metal('Copper');%Choose conductor from the metal catalog
%ant.Exciter.Conductor.Conductivity = 1e5;%Same value used in the reference paper

ant.Conductor = metal('Copper');%Choose the conductor from the metal catalog
%ant.Conductor.Conductivity = 1e5;%same value used in the reference paper

ant.Exciter.Conductor.Thickness = 700*1e-6;
ant.Conductor.Thickness = 700*1e-6;

figure;
show(ant)

f = linspace(0.5e9, 1.5e9, 31);
figure;
efficiency(ant,f)

figure
pattern(ant,1e9)

