# CONFIG-NIXVIM

![Static Badge](https://img.shields.io/badge/NixOS-NixVim-036ffc?style=for-the-badge&logo=NixOS&labelColor=ffffff&color=036ffc)

---

The configuration was a lot of fun. It was a really good experience compared
to the lua configuration. The project _Nixvim_ offers reasonable abstractions.

## Usage

This is my custom Neovim configuration using Nixvim. Nixvim is a project that
allow one to have a declarative configuration using the Nix language. It is a
standalone setup, meaning one can run it everywhere using the following command:

```sh
nix run github:jctemp/config-nixvim
```

One can also use it in a configuration by installing it user- or system-wide.
After adding the repository in the flake `inputs` set, one can add a package
for a system via an override.

```nix

overlays = [
    (final: prev: {
        nvim = inputs.config-nixvim.packages.${system}.default;
    })
];
pkgs = import inputs.nixpkgs {
    inherit system overlays;
    config.allowUnfree = true;
};
```

