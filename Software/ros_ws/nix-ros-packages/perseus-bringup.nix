# Automatically generated by: ros2nix --output-dir=nix-ros-packages --output-as-nix-pkg-name --no-default --flake --distro humble
{ lib, buildRosPackage, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interfaces }:
buildRosPackage rec {
  pname = "ros-humble-perseus-bringup";
  version = "0.0.0";

  src = ./../src/perseus_bringup;

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake hardware-interfaces ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ "TODO-License-declaration" ];
  };
}
