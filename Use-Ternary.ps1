function Use-Ternary {
    <#
    .SYNOPSIS
        Evaluates a ternary condition and returns a value based on the result.

    .DESCRIPTION
        This function simulates a ternary operator like C#'s `?:` and returns either 
        the true or false result depending on the condition.

    .PARAMETER Condition
        The boolean condition to evaluate.

    .PARAMETER TrueValue
        The value to return if the condition is `$true`.

    .PARAMETER FalseValue
        The value to return if the condition is `$false`.

    .EXAMPLE
        PS> Use-Ternary -Condition ($x -gt 10) -TrueValue "Greater" -FalseValue "Smaller"
        Returns "Greater" if $x is greater than 10, otherwise returns "Smaller".

    .EXAMPLE
        PS> Use-Ternary -Condition (Test-Path "C:\test.txt") -TrueValue "File Exists" -FalseValue "File Not Found"
        Returns "File Exists" if C:\test.txt exists, otherwise "File Not Found".

    .EXAMPLE
        PS> $result = Use-Ternary -Condition ($var -eq $null) -TrueValue "Null Detected" -FalseValue "Value Exists"
        Returns "Null Detected" if $var is `$null`, otherwise returns "Value Exists".

    .NOTES
        Version: 1.0.1
        Author: David Wingerson
        Optimized for PowerShell 5.0+ and 7.0+
        Uses .NET direct execution for maximum speed.

    .LINK
        https://github.com/fluxnull
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [bool]$Condition,

        [Parameter(Mandatory = $true, Position = 1)]
        $TrueValue,

        [Parameter(Mandatory = $true, Position = 2)]
        $FalseValue
    )

    process {
        $Map = New-Object 'System.Collections.Generic.Dictionary[bool, object]'
        $Map.Add($true, $TrueValue)
        $Map.Add($false, $FalseValue)

        return $Map[$Condition]
    }
}
