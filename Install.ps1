# Define the source folder containing the DLL files
$sourceFolder = ".\dlls_x64"

# Define the destination root folder where the DLLs will be copied
$destinationRoot = "C:\Program Files\Oculus\Support"

# Get all the folders in the destination root folder
$destinationFolders = Get-ChildItem -Path $destinationRoot -Directory

# Loop through each destination folder
foreach ($folder in $destinationFolders) {
    # Define the destination path for each folder
    $destinationPath = $folder.FullName

    # Copy all DLL files from the source folder to the current destination folder
    Copy-Item -Path "$sourceFolder\*.dll" -Destination $destinationPath -Force
}

Write-Host "DLL files have been successfully copied and overwritten."
