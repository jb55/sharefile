{ nixpkgs ? import <nixpkgs> {} }:
let drv =
{ stdenv
, perlPackages
, makeWrapper
, perl
, rsync
, openssh
, fetchFromGitHub
}:
stdenv.mkDerivation rec {
  name = "sharefile-${version}";
  version = "1.1.0";
  buildInputs = [ perl perlPackages.URI perlPackages.URIEscapeXS makeWrapper rsync openssh ];

  src = ./.;

  installPhase = ''
    mkdir -p $out/bin

    cp sharefile $out/bin
    cp hashshare $out/bin
    cp hashname $out/bin
    cp share_last_ss $out/bin

    for prog in $(echo "$out/bin/"*)
    do
      wrapProgram "$prog" \
        --prefix PERL5LIB : "$PERL5LIB" \
        --prefix PATH : "$out/bin:{perl}/bin"
    done
  '';
};
in
nixpkgs.callPackage drv {}
