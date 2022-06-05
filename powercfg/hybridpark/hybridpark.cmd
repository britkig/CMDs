::@ECHO OFF
cd /d %SYSTEMROOT%
::powercfg.exe /restoredefaultschemes

::	Set "Balanced" as active scheme
powercfg.exe -setactive scheme_balanced

powercfg.exe -setacvalueindex scheme_current SUB_NONE PERSONALITY 2
powercfg.exe -setdcvalueindex scheme_current SUB_NONE PERSONALITY 0

::	Process interrupts on active cores
powercfg.exe -setacvalueindex scheme_current SUB_INTSTEER MODE 3
powercfg.exe -setdcvalueindex scheme_current SUB_INTSTEER MODE 3

::	Target Load 50%
powercfg.exe -setacvalueindex scheme_current SUB_INTSTEER PERPROCLOAD 5000
powercfg.exe -setdcvalueindex scheme_current SUB_INTSTEER PERPROCLOAD 5000

::	Enable core parking (at least one core is always active)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMINCORES 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMINCORES 0

::	Maximum used cores (All on AC, half on DC/battery)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMAXCORES 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMAXCORES 100

::	Task Distribution
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPCONCURRENCY 90
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPCONCURRENCY 90
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDISTRIBUTION 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDISTRIBUTION 100
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPHEADROOM 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPHEADROOM 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPOVERUTIL 90
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPOVERUTIL 90

::	Performance-Efficiency Bias (0 = max performance, 100 = max efficiency)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFEPP 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFEPP 100

::	Core Unparking Policy
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPINCREASEPOL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPINCREASEPOL 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDECREASEPOL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDECREASEPOL 1

::	Cooling Policy (0 = passive, 1 = active)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0

::	Core Parking Utility Distribution
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR DISTRIBUTEUTIL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR DISTRIBUTEUTIL 1

::	Performance boosting algorithm (non-aggressive efficient)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFBOOSTMODE 3
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFBOOSTMODE 3

::	Schedule short-running threads on efficient cores (heterogenous SKUs only)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SHORTSCHEDPOLICY 3
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SHORTSCHEDPOLICY 4

::	Schedule long-running threads on efficient cores (heterogenous SKUs only)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SCHEDPOLICY 2
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SCHEDPOLICY 4

::	Enable duty cycling (if supported)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDUTYCYCLING 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDUTYCYCLING 1

::	Disable wake timers
powercfg.exe -setacvalueindex scheme_current SUB_SLEEP RTCWAKE 0
powercfg.exe -setdcvalueindex scheme_current SUB_SLEEP RTCWAKE 0

::	USB3 Power Saving
powercfg.exe -setacvalueindex scheme_current SUB_SLEEP d4e98f31-5ffe-4ce1-be31-1b38b384c009 3
powercfg.exe -setdcvalueindex scheme_current SUB_SLEEP d4e98f31-5ffe-4ce1-be31-1b38b384c009 3

::	GPU performance (0 = performance, 1 = efficiency)
powercfg.exe -setacvalueindex scheme_current SUB_GRAPHICS GPUPREFERENCEPOLICY 1
powercfg.exe -setdcvalueindex scheme_current SUB_GRAPHICS GPUPREFERENCEPOLICY 1

::	EnergyStar saving
powercfg.exe -setacvalueindex scheme_current SUB_ENERGYSAVER ESPOLICY 1
powercfg.exe -setdcvalueindex scheme_current SUB_ENERGYSAVER ESPOLICY 1

::	Adaptive display (if supported)
powercfg.exe -setacvalueindex scheme_current SUB_VIDEO VIDEOADAPT 1
powercfg.exe -setdcvalueindex scheme_current SUB_VIDEO VIDEOADAPT 1

::	PCI Express Link-State Power Saving
powercfg.exe -setacvalueindex scheme_current SUB_PCIEXPRESS ASPM 2
powercfg.exe -setdcvalueindex scheme_current SUB_PCIEXPRESS ASPM 2

::	Wifi efficiency settings (0 = max performance, 3 = max efficiency)
powercfg.exe -setacvalueindex scheme_current 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 3
powercfg.exe -setdcvalueindex scheme_current 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 3

::	Intel GPU Power Saving
powercfg.exe -setacvalueindex scheme_current 44f3beca-a7c0-460e-9df2-bb8b99e0cba6 3619c3f2-afb2-4afc-b0e9-e7fef372de36 1
powercfg.exe -setdcvalueindex scheme_current 44f3beca-a7c0-460e-9df2-bb8b99e0cba6 3619c3f2-afb2-4afc-b0e9-e7fef372de36 0

::	Re-apply new settings
powercfg.exe -setactive scheme_current
