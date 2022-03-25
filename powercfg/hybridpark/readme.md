# "Hybrid Park" Plan
- Enables Core Parking (but at least one core, or at least one core on each installed processor package motherboards with multiple sockets, will always be awake)
- Reduces CPU speed aggression (to use full spread between supported min and max speeds)
- Changes hardware interrupt handling to be processed only by already-active cores
- Biases lower CPU speeds whilst on DC (laptops/UPS)
- Switches PCI-express power management to favour maximum savings

## Notes
- Not recommended for use in competitive gaming
- Better power savings can be achieved on Intel processors by enabling C-States in your BIOS/UEFI. For best savings, enable "No Limit" if shown to dynamically enable all supported C-States supported by your CPU model.
