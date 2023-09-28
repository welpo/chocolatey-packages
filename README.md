# Chocolatey Packages 🍫

A repository for maintaining and distributing up-to-date Chocolatey packages.

[Chocolatey](https://chocolatey.org/) is a package manager for Windows. It simplifies the process of managing software on Windows systems, automating installations, updates, and removals.

## 📦 Packages

### Zola

[Zola](https://www.getzola.org/) is a fast single-binary static site generator.

See the package on the Chocolatey Community Repository [here](https://community.chocolatey.org/packages/zola).

**Installation:**

```powershell
choco install zola
```

**Pack and Install Locally:**

To create the package, run:

```powershell
choco pack .\zola\zola.nuspec
```

To install the created package:

```powershell
choco install zola --version="0.17.2" --source="." -fy
```

**Fork Details:**

Originally hosted in [gsomix's ChocolateyPackages repository](https://github.com/gsomix/ChocolateyPackages), this package has been forked to continue active maintenance and community support, as the original repository is no longer being updated.

## 👥 Contributing

Contributions are welcome. Feel free to open an issue or submit a pull request.

## 📄 License

All package code is licensed under the terms of the MIT License.
