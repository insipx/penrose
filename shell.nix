with import <nixpkgs> { overlays = [ (import /home/insipx/.config/nixpkgs/overlays/rust-overlay.nix) ]; };

pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.zlib
    pkgs.gcc
    pkgs.pkg-config
    pkgs.glib
    pkgs.cairo
    pkgs.pango
    pkgs.python3
    pkgs.xorg.libX11
    pkgs.xorg.libxcb
    pkgs.xorg.xcbutilkeysyms
    pkgs.xorg.xcbutil
    pkgs.xcb-util-cursor
    pkgs.libxkbcommon
    pkgs.xorg.xorgserver
    pkgs.latest.rustChannels.stable.rust
  ];
}

