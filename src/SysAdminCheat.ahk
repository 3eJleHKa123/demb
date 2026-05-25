#Requires AutoHotkey v2.0
global gui1 := ""
global showing := false
global pages := ["ipconfig /all`nping 8.8.8.8`ntracert 8.8.8.8",
"netstat -ano`ntasklist`nGet-Service",
"ssh user@host`nsystemctl status`ndocker ps"]

ShowCheat() {
    global gui1, showing, pages
    if !showing {
        gui1 := Gui("+AlwaysOnTop -Caption +ToolWindow")
        gui1.BackColor := "1E1E1E"
        gui1.SetFont("s11 cFFFFFF", "Consolas")
        gui1.AddText("w450 h250 vTxt", pages[1])
        gui1.Show("x1000 y200 NoActivate")
        showing := true
    }
}
HideCheat() {
    global gui1, showing
    if showing {
        gui1.Destroy()
        showing := false
    }
}

F12:: ShowCheat()
F12 Up:: HideCheat()
