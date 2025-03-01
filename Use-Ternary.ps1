function Use-Ternary {
    param (
        [Parameter(Mandatory=$true)]
        [bool]$Condition,

        [Parameter(Mandatory=$true)]
        [object]$TrueValue,

        [Parameter(Mandatory=$true)]
        [object]$FalseValue
    )

    if ($Condition) { return $TrueValue } else { return $FalseValue }
}

# Example Usage:
# $result = Use-Ternary ($x -gt 5) "Greater" "Lesser"
# Write-Output $result
