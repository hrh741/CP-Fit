function info = readInfoFile(infoFname)

file = fileread(infoFname);
fileText = regexp(file, '\r\n|\r|\n', 'split')';

% fitting strategy
info.fitStrat.ishift = str2num(fileText{3});
info.fitStrat.isave = str2double(fileText{5});
info.fitStrat.iplot = str2double(fileText{7});

% GA inputs
info.GAinp.gaType = str2double(fileText{10});
info.GAinp.iSingleRunGA = str2double(fileText{12});
if (fileText{14} == ' ')
    info.GAinp.A = [];
else
    info.GAinp.A = str2num(fileText{14});
end
if (fileText{16} == ' ')
    info.GAinp.b = [];
else
    info.GAinp.b = str2num(fileText{16});
end
if (fileText{18} == ' ')
    info.GAinp.Aeq = [];
else
    info.GAinp.Aeq = str2num(fileText{18});
end
if (fileText{20} == ' ')
    info.GAinp.beq = [];
else
    info.GAinp.beq = str2num(fileText{20});
end
if (fileText{22} == ' ')
    info.GAinp.nonlcon = [];
else
    info.GAinp.nonlcon = fileText{22};
end
info.GAinp.IntCon = str2num(fileText{24});

if (fileText{27} == ' ')
    info.modelInfo.paramFilePath = '/';
else
    info.modelInfo.paramFilePath = ['/',fileText{27},'/'];
end
info.modelInfo.paramFileName = fileText{29};

% system information
info.sysInfo.slurmFlag = str2double(fileText{32});
info.sysInfo.exeName = fileText{34};
info.sysInfo.parNode = str2double(fileText{36});
info.sysInfo.parTasks = str2double(fileText{38});
info.sysInfo.poolSize = str2double(fileText{40});
info.sysInfo.slurmMaxTime = fileText{42};
info.sysInfo.slurmJobName = fileText{44};
info.sysInfo.slurmPartition = fileText{46};
info.sysInfo.slurmMaxRam = str2double(fileText{48});
info.sysInfo.slurmNParallelJobs = str2double(fileText{50});

end