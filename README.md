# Use-Ternary

  A PowerShell function that emulates a ternary operator (`condition ? trueValue : falseValue`) in PowerShell 5.0. It simplifies conditional expressions, improving readability while maintaining efficiency.

## 📌 Usage

  Use-Ternary allows for inline conditional expressions, making scripts cleaner and more concise.

**Basic Conditional Assignment:** Performs a simple conditional check and assigns a value.

  $x = 10
  $result = Use-Ternary ($x -gt 5) "Greater" "Lesser"
  Write-Output $result
    
    # Output: Greater

## Inline Command Execution: Executes different commands based on the condition.

  Use-Ternary ($true) (Write-Output "Executed True Block") (Write-Output "Executed False Block")
    
    # Output: Executed True Block

## Assigning Different Data Types: Demonstrates how Use-Ternary handles arrays, numbers, and strings.

  $num = 5
  $message = Use-Ternary ($num -eq 5) @(1,2,3) "Not Matched"
  Write-Output $message
    
    # Output: 1 2 3

## Using with Objects: Evaluates properties within a hash table (object).

  $person = @{ Name = "John"; Age = 30 }
  $ageGroup = Use-Ternary ($person.Age -ge 18) "Adult" "Minor"
  Write-Output "The person is an $ageGroup"  
    
    # Output: The person is an Adult

## Using Inside a Loop: Can be used within loops to process values dynamically.

  foreach ($i in 1..5) {
      $type = Use-Ternary ($i % 2 -eq 0) "Even" "Odd"
      Write-Output "$i is $type"
  }
      
    # Output:
    # 1 is Odd
    # 2 is Even
    # 3 is Odd
    # 4 is Even
    # 5 is Odd

## Nested Use-Ternary Calls: Demonstrates a nested ternary-style conditional for multi-level evaluation.

  $score = 85
  $grade = Use-Ternary ($score -ge 90) "A" (Use-Ternary ($score -ge 80) "B" "C")
  Write-Output "Grade: $grade"
    
    # Output: Grade: B

📥 Installation
To use Use-Ternary, download the script and import it into your PowerShell session:

  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/fluxnull/Use-Ternary/main/Use-Ternary.ps1" -OutFile "Use-Ternary.ps1"
  . .\Use-Ternary.ps1  # Import function
