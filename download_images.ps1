$images = @(
    @{
        url = "https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=600&h=400&fit=crop"
        filename = "tech-symposium-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=600&h=400&fit=crop"
        filename = "coding-competition-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=600&h=400&fit=crop"
        filename = "dance-competition-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=600&h=400&fit=crop"
        filename = "music-festival-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=600&h=400&fit=crop"
        filename = "ai-workshop-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=600&h=400&fit=crop"
        filename = "web-dev-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?w=600&h=400&fit=crop"
        filename = "treasure-hunt-1.jpg"
    },
    @{
        url = "https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=600&h=400&fit=crop"
        filename = "gaming-tournament-1.jpg"
    }
)

# Create gallery directory if it doesn't exist
$galleryPath = Join-Path -Path (Get-Location) -ChildPath "images\gallery"
if (-not (Test-Path $galleryPath)) {
    New-Item -ItemType Directory -Path $galleryPath -Force | Out-Null
}

foreach ($image in $images) {
    Write-Host "Downloading $($image.filename)..."
    $outputPath = Join-Path -Path $galleryPath -ChildPath $image.filename
    Invoke-WebRequest -Uri $image.url -OutFile $outputPath
    Write-Host "Downloaded $($image.filename)"
}

Write-Host "All images downloaded successfully!" 