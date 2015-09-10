ValueFrame = uicontrol(f, "style", "frame", "position", [15 480 305 80]...
,"tag", "valueFrame", "ForegroundColor", [0/255 0/255 0/255],...
"border", createBorder("titled", createBorder("line", "lightGray", 1), ...
_("View Panel"), "center", "top", createBorderFont("", 11, "normal"),...
 "black"));
//
timeLabel = uicontrol(f, "style", "text", "position", ...
[45 505 40 30], "string", "t = ", "fontsize", 25);
//
timeValue = uicontrol(f, "style", "text", "position", ...
[85 505 60 30], "string", string(%time)+"s", "fontsize", 25)
//
tempLabel = uicontrol(f, "style", "text", "position", ...
[160 505 50 30], "string", "T = ", "fontsize", 25);
//
tempValue = uicontrol(f, "style", "text", "position", ...
[210 505 105 30], "string", string(%temp)+"ºC", "fontsize", 25)
//
minTempSlider = uicontrol("style", "slider", "position", [45 30 15 440], ...
"min", 0, "max", 45, "sliderstep", [1 5], "value" , %MinTemp, ...
"callback", "changeMinTemp", "tag", "minTempSlider");
//
maxTempSlider = uicontrol("style", "slider", "position", [20 30 15 440], ...
"min", 0, "max", 45, "sliderstep", [1 5], "value" , %MaxTemp, ...
"callback", "changeMaxTemp", "tag", "maxTempSlider");

//
mAcq=uimenu(f,'label', 'Acquisition');
mExport=uimenu(f,'label', "Export Data", "callback", "exportValues");
//
mAcq1=uimenu(mAcq,'label', "Start", "callback", "launchSensor");
mAcq2=uimenu(mAcq,'label', "Stop", "callback", "stopSensor");
mAcq3=uimenu(mAcq,'label', "Reset", "callback", "resetDisplay");