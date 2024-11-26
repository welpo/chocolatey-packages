# Chocolatey Packages 🍫

A repository for maintaining and distributing up-to-date Chocolatey packages.

[Chocolatey](https://chocolatey.org/) is a package manager for Windows. It simplifies the process of managing software on Windows systems, automating installations, updates, and removals.

## 📦 Packages

### Installation

Packages can be installed from the Chocolatey Community Repository:

```powershell
choco install git-sumi
choco install shuku
choco install zola
```

For local development, create and test packages with:

```powershell
choco pack .\<package>\<package>.nuspec
choco install <package> --version="<version>" --source="." -fy
```

### git-sumi

[git-sumi](https://sumi.rs) ([repo](https://github.com/welpo/git-sumi)) is the non-opinionated Rust-based commit message linter.

Package: [community.chocolatey.org/packages/git-sumi](https://community.chocolatey.org/packages/git-sumi)

### shuku

[shuku](https://github.com/welpo/shuku) creates dialogue-only versions of media using subtitles, designed for language learners.

Package: [community.chocolatey.org/packages/shuku](https://community.chocolatey.org/packages/shuku)

### Zola

[Zola](https://www.getzola.org/) ([repo](https://github.com/getzola/zola/)) is a fast single-binary static site generator.

Package: [community.chocolatey.org/packages/zola](https://community.chocolatey.org/packages/zola)

**Fork details:**

Originally hosted in [gsomix's ChocolateyPackages repository](https://github.com/gsomix/ChocolateyPackages), this package has been forked to continue active maintenance and community support, as the original repository is no longer being updated.

## 👥 Contributing

Contributions are welcome. Feel free to open an issue or submit a pull request.

## 📄 License

All package code is licensed under the terms of the MIT License.
