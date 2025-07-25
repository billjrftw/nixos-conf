{
	description = "My first flake!";

	inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    };

	outputs = { self, nixpkgs, ... }: 
  let
    lib = nixpkgs.lib;
  in 
  {
      nixosConfigurations = {
          # hostname
          bazinga = lib.nixosSystem {
              system = "x86_64-linux";
              modules = [ ./configuration.nix ];
            };
        };
    };
}
