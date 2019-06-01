# Launch-PSSession
Launch-PSSession repackages the native powershell cmdlet `Enter-PSSession`, allowing you to specify a new background colour for the console.  It automatically chooses an appropriate text colour for the specified background colour.
## Usage
### Parameters
#### ComputerName
The computer to which you wish to create a new Remote PSSession.

Argument | Value
--- | ---
Type | String
Position | Named
Default value | None
Accept pipeline input | False
Accept wildcard characters | False
Mandatory | True
#### BackgroundColour
Choose a background colour for the console.  You can choose from the following options:
* Black
* DarkBlue
* DarkGreen
* DarkCyan
* DarkRed
* DarkYellow
* Gray
* DarkGray

Argument | Value
--- | ---
Type | String
Position | Named
Default value | None
Accept pipeline input | False
Accept wildcard characters | False
Mandatory | False
### Syntax
```powershell
Launch-PSSession -ComputerName myserver.example.com -BackgroundColour DarkRed
```