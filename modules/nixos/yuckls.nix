{
  fetchFromGitHub,
  buildDotnetModule,
  dotnet-sdk,
}:
let
  dotnet_8 = dotnet-sdk;
in

buildDotnetModule {
  pname = "yuckls";
  version = "";

  src = fetchFromGitHub {
    owner = "Eugenenoble2005";
    repo = "YuckLS";
    rev = "dffe86db9c0616c516ee9620f8bf8d57759ffb11";
    hash = "sha256-SA39EfwCZyMMxK3zDH25lbOc+Ih3gMDufFyhyQ/es0s=";
  };

  projectFile = "YuckLS/YuckLS.csproj";

  dotnet-sdk = dotnet_8;
  nugetDeps = ./deps.nix;
}
