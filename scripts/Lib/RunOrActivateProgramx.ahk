
; Function to run a program or activate an already running instance 
RunOrActivateProgram(Program, WorkingDir="", WindowSize=""){ 
    SplitPath Program, ExeFile 
    Process, Exist, %ExeFile% 
    PID = %ErrorLevel% 
    if (PID = 0) { 
    Run, %Program%, %WorkingDir%, %WindowSize% 
    }else{ 
    WinActivate, ahk_pid %PID% 
    } 
}
