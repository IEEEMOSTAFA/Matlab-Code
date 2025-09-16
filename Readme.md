Experiment: Unipolar and Polar Line Coding
Content
Objectives

Introduction and Theoretical Concepts

Problem Statement

Equipment/Software Used

Source Code

Output

Discussion and Analysis

Conclusion

1. Objectives
To understand the concept of line coding in digital communication

To implement and visualize Unipolar NRZ and Polar NRZ-L encoding schemes

To analyze the differences between unipolar and polar encoding techniques

To examine the characteristics of each encoding scheme including DC component, synchronization, and bandwidth requirements

2. Introduction and Theoretical Concepts
Line coding is the process of converting digital data into digital signals for transmission over a communication channel. It involves representing binary data (0s and 1s) as voltage or current levels.

Unipolar NRZ (Non-Return to Zero):

Binary 1 is represented by a positive voltage (+V)

Binary 0 is represented by zero voltage (0)

Simple implementation but has a DC component

No synchronization capability for long sequences of 0s

Polar NRZ-L (Non-Return to Zero-Level):

Binary 1 is represented by a negative voltage (-V)

Binary 0 is represented by a positive voltage (+V)

No DC component when bits are balanced

Better than unipolar but still lacks synchronization for long sequences of same bits

3. Problem Statement
To generate and visualize the waveform patterns for Unipolar NRZ and Polar NRZ-L encoding schemes for a given binary sequence, and to analyze their characteristics and differences.

4. Equipment/Software Used
MATLAB software

Plotting functions for waveform visualization

5. Source Code
Unipolar NRZ Encoding
matlab
% Unipolar NRZ Encoding
m = [1 0 1 1 0 0 0 1 1 1];   % Binary sequence
n = length(m);
x = [];
y = [];

for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 0 0];
    else
        y=[y 1 1];
    end
end

figure;
plot(x,y),axis([0,n,-2,2]);
xlabel('Time (bit periods)');
ylabel('Amplitude');
title('Unipolar NRZ Encoding');
grid on;

for i = 1:n
    text(i-0.5, 1.2, num2str(m(i)));
end
Polar NRZ-L Encoding
matlab
% Polar NRZ-L Encoding
m = [1 0 1 1 0 1 1 0 1 0];   % Binary sequence
n = length(m);
x = [];
y = [];

for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 1 1];
    else
        y=[y -1 -1];
    end
end

figure;
plot(x,y),axis([0,n,-2,2]);
xlabel('Time (bit periods)');
ylabel('Amplitude');
title('Polar NRZ-L Encoding');
grid on;

for i = 1:n
    text(i-0.5, 1.2, num2str(m(i)));
end
6. Output
The code generates two separate plots:

Unipolar NRZ Encoding:

Binary 1s are represented by a constant positive voltage level (+1)

Binary 0s are represented by zero voltage (0)

The waveform stays at zero for consecutive 0s and at +1 for consecutive 1s

Polar NRZ-L Encoding:

Binary 1s are represented by a constant negative voltage level (-1)

Binary 0s are represented by a constant positive voltage level (+1)

The waveform alternates between positive and negative voltage levels based on the bit pattern

Both plots include the binary values displayed above the waveform for reference.

7. Discussion and Analysis
Characteristics of Unipolar NRZ:
DC Component: Has a significant DC component as the signal is always positive

Synchronization: Poor synchronization capability, especially for long sequences of 0s

Bandwidth: Requires low bandwidth

Error Detection: No inherent error detection capability

Implementation: Simple to implement

Characteristics of Polar NRZ-L:
DC Component: No DC component when the number of 1s and 0s are balanced

Synchronization: Better than unipolar but still poor for long sequences of same bits

Bandwidth: Similar to unipolar NRZ, requires low bandwidth

Error Detection: Limited error detection capability

Implementation: Slightly more complex than unipolar

Comparison:
Polar NRZ-L is generally preferred over Unipolar NRZ due to the absence of DC component

Both schemes lack synchronization capabilities, making them unsuitable for long-distance transmission without additional synchronization mechanisms

Unipolar NRZ is simpler but less efficient than Polar NRZ-L

8. Conclusion
This experiment successfully demonstrated the implementation and visualization of Unipolar NRZ and Polar NRZ-L line coding techniques. The key differences between these encoding schemes were observed and analyzed, particularly regarding their DC components, synchronization capabilities, and implementation complexities.

Polar NRZ-L encoding proves to be more efficient than Unipolar NRZ due to its lack of DC component, making it more suitable for practical communication systems. However, both schemes have limitations in synchronization, which would necessitate additional techniques for reliable data transmission in real-world applications.