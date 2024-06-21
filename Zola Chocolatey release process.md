# Zola Chocolatey Package Update Instructions

## Preparation

1. Check the [Zola GitHub releases page](https://github.com/getzola/zola/releases) for the latest version.
2. Note the new version number (e.g., `0.20.0`).

## Update Process

### 1. Update `zola.nuspec`

1. Open `zola.nuspec` in your text editor.
2. Update the version number in the `<version>` tag.
3. Update the changelog based on the [Zola CHANGELOG.md](https://github.com/getzola/zola/blob/master/CHANGELOG.md?plain=1).

**Note**: if the changelog includes special characters like `<` or `>`, you need to escape them:

- Replace `<` with `&lt;`
- Replace `>` with `&gt;`
- Replace `&` with `&amp;`

### 2. Update `chocolateyInstall.ps1`

#### Download the Windows release ZIP

Choose the appropriate method based on your operating system:

<details>
<summary>Windows (PowerShell)</summary>

```powershell
$version = "0.20.0"  # Replace with the new version number.
$url = "https://github.com/getzola/zola/releases/download/v$version/zola-v$version-x86_64-pc-windows-msvc.zip"
Invoke-WebRequest -Uri $url -OutFile "zola-$version.zip"
```

</details>

<details>
<summary>GNU+Linux/macOS (Bash)</summary>

```bash
version="0.20.0"  # Replace with the new version number.
url="https://github.com/getzola/zola/releases/download/v$version/zola-v$version-x86_64-pc-windows-msvc.zip"
curl -L -o "zola-$version.zip" "$url"
```

</details>

#### Calculate the SHA256 checksum

<details>
<summary>Windows (PowerShell)</summary>

```powershell
$checksum = (Get-FileHash -Path "zola-$version.zip" -Algorithm SHA256).Hash.ToLower()
echo $checksum
```

</details>

<details>
<summary>GNU+Linux/macOS (Bash)</summary>

```bash
checksum=$(shasum -a 256 "zola-$version.zip" | awk '{print $1}')
echo $checksum
```

</details>

#### Update the file

1. Open `chocolateyInstall.ps1` in your text editor.
2. Update the `checksum` variable with the new SHA256 checksum.

## Package and Push

### On Windows

1. Navigate to the directory containing your updated Zola package:

```powershell
cd path\to\chocolatey-packages\zola
```

2. Pack the updated package:

```powershell
choco pack .\zola.nuspec
```

3. Test the newly created package:

```powershell
choco install zola --version="$version" --source="." -fy
```

This command installs the package from the local directory, forcing the installation (-f) and automatically answering yes to prompts (-y).

4. Verify the installation:

```powershell
zola --version
```

Ensure that the version number matches the one you just packaged.

5. Test basic functionality:

```powershell
zola init test
cd test
zola build
```

If these commands complete without errors, your package is working correctly.

6. Uninstall the test package:

```powershell
choco uninstall zola -y
```

7. If all tests pass, push the new package to Chocolatey:

```powershell
choco push zola.$version.nupkg --key=YOUR_API_KEY_HERE
```

Replace `YOUR_API_KEY_HERE` with your actual Chocolatey API key.
