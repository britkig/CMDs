@ECHO OFF
cd /d %SYSTEMROOT%
::powercfg.exe /restoredefaultschemes

::	Set "Balanced" as active scheme
powercfg.exe -setactive scheme_balanced

::	(settings ending in a "1" are for efficiency cores)

::powercfg.exe -setacvalueindex scheme_current SUB_NONE CONSOLELOCK 0
::powercfg.exe -setdcvalueindex scheme_current SUB_NONE CONSOLELOCK 0
powercfg.exe -setacvalueindex scheme_current SUB_NONE CONNECTIVITYINSTANDBY 1
powercfg.exe -setdcvalueindex scheme_current SUB_NONE CONNECTIVITYINSTANDBY 1
powercfg.exe -setacvalueindex scheme_current SUB_NONE DEVICEIDLE 1
powercfg.exe -setdcvalueindex scheme_current SUB_NONE DEVICEIDLE 1
powercfg.exe -setacvalueindex scheme_current SUB_NONE DISCONNECTEDSTANDBYMODE 1
powercfg.exe -setdcvalueindex scheme_current SUB_NONE DISCONNECTEDSTANDBYMODE 1
powercfg.exe -setacvalueindex scheme_current SUB_NONE PERSONALITY 2
powercfg.exe -setdcvalueindex scheme_current SUB_NONE PERSONALITY 0

powercfg.exe -setacvalueindex scheme_current SUB_ENERGYSAVER ESPOLICY 1
powercfg.exe -setdcvalueindex scheme_current SUB_ENERGYSAVER ESPOLICY 1

::	GPU performance (0 = performance, 1 = efficiency)
powercfg.exe -setacvalueindex scheme_current SUB_GRAPHICS GPUPREFERENCEPOLICY 1
powercfg.exe -setdcvalueindex scheme_current SUB_GRAPHICS GPUPREFERENCEPOLICY 1

::	Process hardware interrupts on active cores only
powercfg.exe -setacvalueindex scheme_current SUB_INTSTEER MODE 3
powercfg.exe -setdcvalueindex scheme_current SUB_INTSTEER MODE 3

::	Per socket Load (0=0% - 10000=100%)
powercfg.exe -setacvalueindex scheme_current SUB_INTSTEER PERPROCLOAD 5000
powercfg.exe -setdcvalueindex scheme_current SUB_INTSTEER PERPROCLOAD 5000

::	Disk power level
powercfg.exe -setacvalueindex scheme_current SUB_DISK DISKMAXPOWER 50
powercfg.exe -setdcvalueindex scheme_current SUB_DISK DISKMAXPOWER 50
powercfg.exe -setacvalueindex scheme_current SUB_DISK 0b2d69d7-a2a1-449c-9680-f91c70521c60 4
powercfg.exe -setdcvalueindex scheme_current SUB_DISK 0b2d69d7-a2a1-449c-9680-f91c70521c60 4

::	Adaptive display (if supported)
powercfg.exe -setacvalueindex scheme_current SUB_VIDEO VIDEOADAPT 1
powercfg.exe -setdcvalueindex scheme_current SUB_VIDEO VIDEOADAPT 1

::	Disable wake timers
powercfg.exe -setacvalueindex scheme_current SUB_SLEEP RTCWAKE 0
powercfg.exe -setdcvalueindex scheme_current SUB_SLEEP RTCWAKE 0

::	PCI Express Link-State Power Saving
powercfg.exe -setacvalueindex scheme_current SUB_PCIEXPRESS ASPM 2
powercfg.exe -setdcvalueindex scheme_current SUB_PCIEXPRESS ASPM 2

::	Wifi efficiency settings (0 = max performance, 3 = max efficiency)
powercfg.exe -setacvalueindex scheme_current 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 3
powercfg.exe -setdcvalueindex scheme_current 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 3

::	Intel GPU Power Saving (if present)
powercfg.exe -setacvalueindex scheme_current 44f3beca-a7c0-460e-9df2-bb8b99e0cba6 3619c3f2-afb2-4afc-b0e9-e7fef372de36 2
powercfg.exe -setdcvalueindex scheme_current 44f3beca-a7c0-460e-9df2-bb8b99e0cba6 3619c3f2-afb2-4afc-b0e9-e7fef372de36 0

::	CPU

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFAUTONOMOUS 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFAUTONOMOUS 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFAUTONOMOUSWINDOW 5000
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFAUTONOMOUSWINDOW 5000

::	Performance-Efficiency Bias (0 = max performance, 100 = max efficiency)

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFEPP 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFEPP1 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFEPP 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFEPP1 100

::	Enable duty cycling (if supported)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDUTYCYCLING 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDUTYCYCLING 1

powercfg.exe -setacvalueindex scheme_current SUB_NONE IDLESCALING 1
powercfg.exe -setdcvalueindex scheme_current SUB_NONE IDLESCALING 1

::	Performance boosting algorithm (non-aggressive efficient)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFBOOSTMODE 3
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFBOOSTMODE 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFBOOSTPOL 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFBOOSTPOL 50

::	Cooling Policy (0 = passive, 1 = active)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0

::	Task Distribution
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPCONCURRENCY 99
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPCONCURRENCY 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDISTRIBUTION 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDISTRIBUTION 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPHEADROOM 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPHEADROOM 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMINCORES 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMINCORES 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMAXCORES 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMAXCORES 100
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMINCORES1 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMINCORES1 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMAXCORES1 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMAXCORES1 100
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPOVERUTIL 95
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPOVERUTIL 95
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR DISTRIBUTEUTIL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR DISTRIBUTEUTIL 1

::	Core Unparking Policy (ideal mode)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPINCREASEPOL 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDECREASEPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPINCREASEPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDECREASEPOL 0

::	Core parking time measuring window
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPINCREASETIME 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDECREASETIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPINCREASETIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDECREASETIME 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR HETEROINCREASETIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR HETERODECREASETIME 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK1 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK1 0

::	Core speed tuning

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD1 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD1 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD1 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD1 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTIME 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTIME 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTIME1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTIME1 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTIME1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTIME1 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCPOL 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECPOL 0

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCPOL1 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECPOL1 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCPOL1 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECPOL1 0

::	HETEROGENOUS CPUS WITH TWO CORE TYPES PRESENT

::	Schedule short-running threads on efficient cores (heterogenous SKUs only)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SHORTSCHEDPOLICY 3
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SHORTSCHEDPOLICY 3

::	Schedule long-running threads on performance cores (heterogenous SKUs only)
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SCHEDPOLICY 4
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SCHEDPOLICY 3

::	Disable turbo for efficient cores
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PROCTHROTTLEMAX1 99
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PROCTHROTTLEMAX1 99


powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR HETEROCLASS1INITIALPERF 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR HETEROCLASS1INITIALPERF 0

::	USB3 Power Saving
powercfg.exe -setacvalueindex scheme_current SUB_SLEEP d4e98f31-5ffe-4ce1-be31-1b38b384c009 3
powercfg.exe -setdcvalueindex scheme_current SUB_SLEEP d4e98f31-5ffe-4ce1-be31-1b38b384c009 3

::	Apply new settings
powercfg.exe -setactive scheme_current

#pause
