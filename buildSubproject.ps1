param (
    [string]$lab = "LAB1",
    [switch]$run
)

$buildDirectory = "./build"


try {
    if(Test-Path -Path $buildDirectory) {
        Write-Host "Directory already exists"
        Remove-Item -Path $buildDirectory -Recurse -Force
    }
    
    New-Item -Path $buildDirectory -ItemType Directory
    
    Set-Location -Path $buildDirectory
    
    $labToBuild = switch ($lab) {
        "LAB1" {"BUILD_LAB1=ON"}
        default {throw "Invalid lab specified"}
    }

    $runProgram = ""
    if($run -eq $false) {
        $runProgram = ""
    } else {
        $runProgram = "--target run"
    }
    
    cmake -G "MinGW Makefiles" -D $labToBuild  ..
    
    $buildArguments = @('.', $runProgram).Where({ $_ })  # Это удалит пустые строки из аргументов
    cmake --build $buildArguments

    # cmake --build . $runProgram
} finally {
    Set-Location -Path .. 
}



