Function Launch-PSSession {
    Param (
        [Parameter(Mandatory)]$ComputerName,
        [ValidateSet("Black","DarkBlue","DarkGreen","DarkCyan","DarkRed","DarkYellow","Gray","DarkGray")]$BackgroundColour
    )
    $colourPairs = [Management.Automation.PSObject]@{
        Black = "Yellow"
        DarkBlue = "White"
        DarkGreen = "White"
        DarkCyan = "White"
        DarkRed = "Yellow"
        DarkYellow = "DarkGreen"
        Gray = "DarkBlue"
        DarkGray = "Yellow"
    }
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    If ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        $userLevel = "Administrator"
    }
    Else {
        $userLevel = "User"
    }
    # Connect to PSSession
    New-PSSession $ComputerName | Enter-PSSession
    # Set the Window Title
    $host.UI.rawUI.WindowTitle = "[" + $ComputerName.toUpper() + "] " + $userLevel + ": Windows PowerShell"
    # Set the Background Colour
    $host.UI.rawUI.BackgroundColor = $BackgroundColour
    # Set the Foreground Colour
    $host.UI.rawUI.ForegroundColor = $colourPairs.$BackgroundColour
    # Clear the screen?
    Clear-Host
}