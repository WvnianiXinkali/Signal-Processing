# 📡 Radar-Based Object Tracking System  
**Signal Processing & Motion Analysis with MATLAB**  

---

## 📖 Overview  
This project demonstrates a radar-based system for detecting and tracking moving objects. By simulating real-world challenges like environmental noise, signal reflection, and Doppler effects, it calculates precise coordinates and velocity using three radar detectors. Developed in MATLAB, the system combines principles from signal processing, physics, and mathematics to achieve robust object tracking.  

---

## 🌟 Key Features  
- **Noise-Resistant Signal Detection**: Simulates Gaussian noise and uses Fourier analysis for signal isolation.  
- **Triangulation**: Resolves positional ambiguity with three radars for centimeter-level accuracy.  
- **Motion Tracking**: Predicts collision timing and distance using kinematic modeling.  
- **Doppler Compensation**: Adjusts signal frequency shifts caused by object motion.  
- **Visual Validation**: Compares system outputs (blue) against ground truth (red) for performance analysis.  

---

## 🛠️ Installation & Usage  
1. **Requirements**:  
   - MATLAB R2020a or later  
   - Signal Processing Toolbox  

2. **Clone Repository**:  
   ```bash  
   git clone https://github.com/your-username/radar-tracking.git

## 📊 Results
The system was tested over 50 iterations (see visualization below):

Accuracy: Achieved <2% error in stationary object localization.

Latency: Processed signals in real-time (under 50ms per detection cycle).

Robustness: Maintained tracking through simulated Doppler shifts up to 1.5kHz.

![image](https://github.com/user-attachments/assets/c247e2f3-9f49-43f8-9a20-f65d328c0ded)

![image](https://github.com/user-attachments/assets/c26271d9-ea49-4fd5-b96e-d5e32cc57a68)

The outcome is visualized for 
n
=
n=50 iterations, comparing our system (blue) against ground truth measurements (red) across all radar detectors.



