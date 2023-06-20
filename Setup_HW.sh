Setup CAN and GPS script



import os

# Configure GPS hardware
os.system("config-pin P2_37 uart")  # Configure P2_37 as UART4 RX
os.system("config-pin P2_35 uart")  # Configure P2_35 as UART4 TX

# Configure CAN hardware
os.system("config-pin P1_28 can")   # Configure P1_28 as CAN RX
os.system("config-pin P1_26 can")   # Configure P1_26 as CAN TX

# Load the CAN kernel modules
os.system("sudo modprobe can")
os.system("sudo modprobe can-dev")

# Set up the CAN interface
os.system("sudo ip link set can0 up type can bitrate 500000")  # Adjust the bitrate as needed

# Continue with GPS setup code...
