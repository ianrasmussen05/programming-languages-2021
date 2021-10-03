with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    ghc 
    haskellPackages.BNFC
    haskellPackages.alex
    haskellPackages.happy
  ];
}
