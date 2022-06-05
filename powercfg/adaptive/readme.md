# "Adaptive" Plan
- **Sets the "Balanced" Windows power plan as the active plan then modifies it with a custom set of tweaks to adjust how workloads are distributed, allowing some core to deep-sleep for longer without interruption.**
- Enables Core Parking* (but at least one core will always be awake, and one core will always be active in each package on multi-socketed platforms)
- Reduces CPU performance-savings bias to 50% (to enable more frequent use of minimum CPU speeds but keeping maximum performance available if needed)
- Changes hardware interrupt handling to be processed only by already-active cores
- Biases lower CPU speeds whilst on DC (laptops/UPS)
- Switches PCIe power management to favour maximum savings (ASPM)
- Enables adaptive display brightness (when a supported light sensor is detected)

## Technical Notes
> - Core parking is a feature of Windows, not the processor itself
> - *Intel Platforms:* Better power savings can be achieved on Intel processors by enabling C-States in your BIOS/UEFI; for best results, enable "No Limit" if shown to dynamically enable all C-States supported by your CPU model
> - Even if no errors occur, this script has no actual effect on virtual machines (it may show that it is working in the virtual machine's Task Manager, but it is ultimately up to the hosting OS as to how workloads are distributed)
## Notes
> - **Not recommended for deployment on machines used in competitive gaming, to operate/control/manipulate medical apparatus, or where precision-timing is required**
> - No third-party utilities required, uses the built-in `powercfg.exe` utility that is shipped with Windows
> - The power savings achieved varies by processor make and model; please check your UEFI/BIOS settings and enable required hardware features such as C-States and ASPM.
> - May cause an increase in the frequency of frame dropping in some games when the amount of required processing power spikes due to significant changes on the amount of displayed content
> - Errors may appear during script execution if a certain feature is not supported or certain brand of hardware is not present
