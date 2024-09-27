function main()
 
    gma.cmd("Off Page Thru");
    gma.cmd("Off Sequence Thru");
    gma.cmd("Off Effect Thru");
    gma.cmd("Off Timecode Thru");
    gma.cmd("Off Timer Thru");
    gma.cmd("Off Exec Thru");
    time = os.time();
    weekdaynum = os.date("%w", time);
    amOrPm = os.date("%p", time);
    gma.cmd("Page 1");
    gma.sleep(1)
    if weekdaynum == '6' then 
      if amOrPm == "PM" then
        gma.echo("Sunday PM!")
        gma.cmd("Select Executor \"PM\"");
        gma.cmd("Go Executor \"PM\"  Cue 1");
        gma.cmd("Executor  At 100");
      else
        gma.echo("Sunday AM!");
        gma.cmd("Select Executor \"AM\"");
        gma.cmd("Go Executor \"AM\"  Cue 1");
        gma.cmd("Executor At 100");
      end
    else
        gma.cmd("Select Executor \"AM\"");
        gma.cmd("Go Executor \"AM\"  Cue 1");
        gma.cmd("Executor At 100");
    end
    gma.cmd("Off Macro Thru");
    gma.sleep(1)
    gma.cmd("Executor At 100"); 
    
    gma.gui.msgbox ("Clean Start", "Clean Console State Loaded. <3 Joel");
    gma.cmd("Off Plugin Thru");
    
       

end

function finalize()
end

return main, finalize; 
