# "Hybrid Park" Plan
- **Sets the "Balanced" Windows power plan as the active plan then modifies it**
- Enables Core Parking (but at least one core will always be awake, and one core will always be active in each package on multi-socketed platforms)
- Reduces CPU speed aggression percentage to 50% (to enable more frequent use of minimum CPU speeds)
- Changes hardware interrupt handling to be processed only by already-active cores
- Biases lower CPU speeds whilst on DC (laptops/UPS)
- Switches PCIe power management to favour maximum savings (ASPM)
- Enables adaptive display brightness (when a supported light sensor is detected)
## Technical Notes
> - *Intel Platforms:* Better power savings can be achieved on Intel processors by enabling C-States in your BIOS/UEFI. For best results, enable "No Limit" if shown to dynamically enable all C-States supported by your CPU model
> - Even if no errors occur this script has no real effect on virtual machines workloads (though it may show that it is working in the virtual machine's Task Manager, but it is ultimately up to the hosting OS as to how workloads are distributed)
## Notes
> - **Not recommended for deployment on machines used in competitive gaming, to operate/control/manipulate medical apparatus, or where precision-timing is required**
> - No third-party utilities required, uses the built-in `powercfg.exe` utility that is shipped with Windows
> - May cause an increase in frame drops in some games when the amount of on-screen content changes significantly
> - Errors may appear if a certain feature is not supported or the OS is too old
