with import <nixpkgs> { };

rustPlatform.buildRustPackage rec {
  pname = "penrose";
  version = "3c3caa255e13868fe276ea597a717a32f741f82f"; # 0.1.9
  src = ./.;

  checkPhase = "";
  cargoSha256 = "17ldqr3asrdcsh4l29m3b5r37r5d0b3npq1lrgjmxb6vlx6a36qh";
  verifyCargoDeps = true;

  meta = with stdenv.lib; {
    description = "a tiling window manager library built in Rust with the style of Xmonad";
    homepage = https://github.com/sminez/penrose;
    license = licenses.mit;
    platforms = platforms.linux;
    maintainers = [ "dev@andrewplaza.dev" ];
  };
}
