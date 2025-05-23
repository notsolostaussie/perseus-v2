# Automatically generated by: ros2nix --output-as-nix-pkg-name --distro jazzy --fetch
{
  lib,
  buildRosPackage,
  fetchFromGitHub,
  ament-lint-auto,
  ament-lint-common,
  nav2-bringup,
  nav2-minimal-tb3-sim,
  nav2-util,
  opennav-coverage,
  opennav-coverage-bt,
  opennav-coverage-msgs,
  opennav-coverage-navigator,
  opennav-row-coverage,
  rclcpp,
  rclcpp-action,
}:
buildRosPackage rec {
  pname = "ros-jazzy-opennav-coverage-demo";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "open-navigation";
    repo = "opennav_coverage";
    rev = "194250501889ce8896c5ee8b80a4d1317750be0e";
    sha256 = "0nqi8d99qs9cqb22x66kzzf9zgylayji0ibpg0ff47plwx32zs0l";
  };

  buildType = "ament_python";
  sourceRoot = "${src.name}/opennav_coverage_demo/";
  checkInputs = [
    ament-lint-auto
    ament-lint-common
  ];
  propagatedBuildInputs = [
    nav2-bringup
    nav2-minimal-tb3-sim
    nav2-util
    opennav-coverage
    opennav-coverage-bt
    opennav-coverage-msgs
    opennav-coverage-navigator
    opennav-row-coverage
    rclcpp
    rclcpp-action
  ];

  meta = {
    description = "A demo using the Coverage Server, BT Nodes, and Coverage Navigator";
    license = with lib.licenses; [ asl20 ];
  };
}
