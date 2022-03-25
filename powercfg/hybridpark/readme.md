# "Hybrid Park" Plan
- **Sets the "Balanced" Windows power plan as the active plan then modifies it**
- Enables Core Parking (but at least one core, or at least one core on each installed processor package motherboards with multiple sockets, will always be awake)
- Reduces CPU speed aggression value to 50% (to enable full spread of supported CPU speeds more evenly)
- Changes hardware interrupt handling to be processed only by already-active cores
- Biases lower CPU speeds whilst on DC (laptops/UPS)
- Switches PCI-express power management to favour maximum savings (ASPM)
- Enables adaptive display brightness (when a supported light sensor is detected)
## Notes
> - Not recommended for deployment to machines used in competitive gaming or where precision-timing is required
> - No third-party utilities required, uses the built-in `powercfg.exe` utility that is shipped with Windows
> - Errors may appear if a certain feature is not supported or the OS is too old
> - *Intel Platforms:* Better power savings can be achieved on Intel processors by enabling C-States in your BIOS/UEFI. For best savings, enable "No Limit" if shown to dynamically enable all C-States supported by your CPU model
