Yagi-Uda Antenna Design in MATLAB


This repository contains the source code for the design, modeling, and simulation of a Yagi-Uda antenna operating at a center frequency of 1 GHz.


The design utilizes the MATLAB Antenna Toolbox to define the geometry, assign materials, and calculate performance metrics such as efficiency and radiation pattern.


📋 File Description


antenna1.m: Main MATLAB script containing parameter definitions, antenna object creation, and visualization/analysis commands.

🛠 System Requirements


To run this code, you need:

MATLAB (Recommended version: R2018b or higher).

Antenna Toolbox (Mandatory).

⚙️ Technical Design Specifications

The code implements a Yagi-Uda antenna with the following characteristics:

Design Frequency: $1 \text{ GHz}$

Elements: 4 elements in total.

1 Reflector.

1 Exciter Element (Folded dipole converted to equivalent strip).

2 Directors.

Material: Copper.

Conductor Thickness: $700 \mu m$.

Geometric Parameters

Element

Length (mm)

Spacing (mm)

Reflector

141.5

88.13

Exciter

139.1

N/A

Director 1

131.9

65.95

Director 2

126.5

80.34

Note: The exciter is initially modeled with a wire radius of $6.745 \times 10^{-4}$ m and is converted to an equivalent strip width using the cylinder2strip function.

🚀 Usage Instructions

Clone this repository or download the antenna1.m file.

git clone [https://github.com/edoajg/yagiAntenna.git](https://github.com/edoajg/yagiAntenna.git)


Open MATLAB and navigate to the project folder.

Run the script from the command window:

antenna1


📊 Expected Results

Running the script will generate three figures:

Structure Visualization: Displays the 3D geometry of the Yagi antenna with directors, exciter, and reflector in position.

Efficiency Plot: Shows the antenna efficiency across the frequency range of $0.5 \text{ GHz}$ to $1.5 \text{ GHz}$.

Radiation Pattern: Displays the 3D radiation pattern of the antenna at the operating frequency of $1 \text{ GHz}$.
