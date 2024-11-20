{
  services.kanata = {
    enable = true;
    keyboards = {
      kanata.extraDefCfg = "process-unmapped-keys yes";
      kanata.config = ''
        (defsrc 
         a
         d
         k
        )

        (defvar 
          tap-time 200
          hold-time 200
          tt $tap-time
          ht $hold-time
        )

        (defalias 
          a-mod (tap-hold $tt $ht a lmet)
          d-mod (tap-hold $tt $ht d lsft)
          k-mod (tap-hold $tt $ht k rsft)
        )

        (deflayer base
          @a-mod
          @d-mod
          @k-mod
        )
      '';
    };
  };
}
