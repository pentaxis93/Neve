{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "supermaven";
      src = pkgs.fetchFromGitHub {
        owner = "supermaven-inc";
        repo = "supermaven-nvim";
        rev = "4621e779e69c2b09807a3c545ed43697d826ef83";
        hash = "sha256-D6vzW4fxWwxveaCnJs4d6HmCgoapyU3P8my6PRcxUCo=";
      };
    })
  ];
  extraConfigLua = ''
    require('supermaven-nvim').setup({})
  '';
}
