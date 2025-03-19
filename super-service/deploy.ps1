Write-Host "Running automated tests..."
dotnet test ./test/SuperService.UnitTests.csproj
if ($LASTEXITCODE -ne 0) {
    Write-Host "Tests failed. Exiting deployment."
    exit 1
}


Write-Host "Stopping and removing existing container..."
docker stop super-service-container 2> $null
docker rm super-service-container 2> $null

# Step 2: Build the Docker image
Write-Host "Building Docker image..."
docker build -t super-service:dotnet1.2 .

# Step 3: Run the Docker container
Write-Host "Running Docker container..."
docker run -d -p 8080:5000 --name super-service-container super-service:dotnet1.2

Write-Host "Deployment complete. Application is running at http://localhost:8080/time"