# Set the below storage account name and key to target the correct storage account.
# These can be found in the Azure Portal
$StorageAccountName = "ACCOUNT_NAME"
$StorageAccountKey = "SECRET_KEY"

# Sets a search prefix on containers
# Examples:
# * - All containers
# website* - Containers starting with the name "website"
$ContainerSearchPrefix = "tiles"

########################################################################
# Do not modify anything below this line
########################################################################
Function SetContentEncoding
{
    param(
        [Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageBlob] $Blob, 
        [string] $ContentEncoding
    )

    $CloudBlockBlob = [Microsoft.Azure.Storage.Blob.CloudBlockBlob] $Blob.ICloudBlob

    $CloudBlockBlob.Properties.ContentEncoding = $ContentEncoding
    $task = $CloudBlockBlob.SetPropertiesAsync()
    $task.Wait()
    
    Write-Host $task.Status
}

Function ProcessContainers
{
    param(
        [Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageContainer[]] $Containers
    )

    foreach($Container in $Containers)
    {
        Write-Host "Processing Container:" $Container.Name -ForegroundColor white

        $Blobs = Get-AzStorageBlob -Context $Context -Container $Container.Name

        foreach($Blob in $Blobs)
        {
            Write-Host "Processing Blob:" $Blob.Name

            $Extn = [IO.Path]::GetExtension($Blob.Name)
            $ContentEncoding = ""

            switch ($Extn) {
                ".pbf" { $ContentEncoding = "gzip" }
                Default { $ContentEncoding = "" }
            }

            Write-Host "Blob file extension is" $Extn "- this will change the content type to" $ContentEncoding


            if ($ContentEncoding -ne "") {
                SetContentEncoding $Blob $ContentEncoding
            }      
        }

        Write-Host "Completed Processing Container" $Container.Name
    }
}

$Context = New-AzStorageContext -StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountKey
$Containers = Get-AzStorageContainer -Context $Context -Name $ContainerSearchPrefix

ProcessContainers $Containers