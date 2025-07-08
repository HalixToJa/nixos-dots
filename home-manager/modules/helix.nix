{ pkgs, ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "autumn";
      editor.cursor-shape = {
        normal = "bar";
        insert = "bar";
        select = "underline";
      };
    };
  };
}
