# Automatically generated by: ros2nix --no-default
{
  lib,
  buildRosPackage,
  ament-cmake,
  ament-lint-auto,
  ament-lint-common,
}:
buildRosPackage rec {
  pname = "ros-rolling-autonomy";
  version = "0.0.0";

  src = ./.;

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [
    ament-lint-auto
    ament-lint-common
  ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ "TODO-License-declaration" ];
  };
}
