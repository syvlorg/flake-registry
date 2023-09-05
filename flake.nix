{
  inputs = {
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };
  outputs = inputs@{ self, ... }:
    with builtins; {
      registry = fromJSON (readFile ./flake-registry.json);
    };
}
