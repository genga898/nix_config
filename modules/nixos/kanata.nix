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
         c
         n
         lsft
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
          c-mod (tap-hold $tt $ht c ctl)
          n-mod (tap-hold $tt $ht n alt)
          lsft-mod (tap-dance $tt(esc C-c))
        )

        (deflayer base
          @a-mod
          @d-mod
          @k-mod
          @c-mod
          @n-mod
          @lsft-mod
        )
      '';
    };
  };
}
