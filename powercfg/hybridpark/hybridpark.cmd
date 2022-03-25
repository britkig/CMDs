@ECHO OFF
cd /d %SYSTEMROOT%

powercfg.exe -setactive scheme_balanced

powercfg.exe -setacvalueindex scheme_current SUB_ENERGYSAVER ESBRIGHTNESS 100
powercfg.exe -setdcvalueindex scheme_current SUB_ENERGYSAVER ESBRIGHTNESS 50

powercfg.exe -setacvalueindex scheme_current SUB_ENERGYSAVER ESPOLICY 1
powercfg.exe -setdcvalueindex scheme_current SUB_ENERGYSAVER ESPOLICY 1

powercfg.exe -setacvalueindex scheme_current SUB_GRAPHICS GPUPREFERENCEPOLICY 1
powercfg.exe -setdcvalueindex scheme_current SUB_GRAPHICS GPUPREFERENCEPOLICY 1

powercfg.exe -setacvalueindex scheme_current SUB_VIDEO VIDEOADAPT 1
powercfg.exe -setdcvalueindex scheme_current SUB_VIDEO VIDEOADAPT 1

powercfg.exe -setacvalueindex scheme_current SUB_VIDEO ADAPTBRIGHT 1
powercfg.exe -setdcvalueindex scheme_current SUB_VIDEO ADAPTBRIGHT 1

powercfg.exe -setacvalueindex scheme_current SUB_NONE PERSONALITY 2
powercfg.exe -setdcvalueindex scheme_current SUB_NONE PERSONALITY 0

powercfg.exe -setacvalueindex scheme_current SUB_NONE DEVICEIDLE 1
powercfg.exe -setdcvalueindex scheme_current SUB_NONE DEVICEIDLE 1

powercfg.exe -setacvalueindex scheme_current SUB_INTSTEER MODE 3
powercfg.exe -setdcvalueindex scheme_current SUB_INTSTEER MODE 3

powercfg.exe -setacvalueindex scheme_current SUB_PCIEXPRESS ASPM 2
powercfg.exe -setdcvalueindex scheme_current SUB_PCIEXPRESS ASPM 2

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPCONCURRENCY 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPCONCURRENCY 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDISTRIBUTION 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDISTRIBUTION 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPHEADROOM 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPHEADROOM 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPOVERUTIL 90
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPOVERUTIL 90

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPINCREASETIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPINCREASETIME 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDECREASETIME 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDECREASETIME 10

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMINCORES 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMINCORES 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMINCORES1 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMINCORES1 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMAXCORES 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMAXCORES 100
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPMAXCORES1 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPMAXCORES1 100
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR DISTRIBUTEUTIL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR DISTRIBUTEUTIL 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR HETEROCLASS0FLOORPERF 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR HETEROCLASS0FLOORPERF 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SCHEDPOLICY 2
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SCHEDPOLICY 4

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR SHORTSCHEDPOLICY 4
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR SHORTSCHEDPOLICY 3

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFBOOSTMODE 3
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFBOOSTMODE 3
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFBOOSTPOL 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFBOOSTPOL 50

::CORE SPEED INCREASE AGGRESSION
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFEPP 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFEPP 100
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFEPP1 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFEPP1 100

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTIME 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTIME 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTIME1 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTIME1 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR HETERODECREASETIME 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR HETERODECREASETIME 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTIME 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTIME1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTIME1 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR HETEROINCREASETIME 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR HETEROINCREASETIME 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD1 100
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECTHRESHOLD1 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCTHRESHOLD1 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR HETEROCLASS1INITIALPERF 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR HETEROCLASS1INITIALPERF 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPDECREASEPOL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPDECREASEPOL 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPINCREASEPOL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPINCREASEPOL 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK 0
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK1 0
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR LATENCYHINTUNPARK1 0

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR LATENCYHINTPERF 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR LATENCYHINTPERF 50
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR LATENCYHINTPERF1 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR LATENCYHINTPERF1 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPPERF 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPPERF 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR CPPERF1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR CPPERF1 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCPOL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCPOL 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFINCPOL1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFINCPOL1 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECPOL 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECPOL 1
powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDECPOL1 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDECPOL1 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR IDLESCALING 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR IDLESCALING 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR IDLEPROMOTE 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR IDLEPROMOTE 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR IDLEDEMOTE 50
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR IDLEDEMOTE 50

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR PERFDUTYCYCLING 1
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR PERFDUTYCYCLING 1

powercfg.exe -setacvalueindex scheme_current SUB_PROCESSOR THROTTLING 2
powercfg.exe -setdcvalueindex scheme_current SUB_PROCESSOR THROTTLING 2

powercfg.exe -setactive scheme_current
pause
