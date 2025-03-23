static const char norm_fg[] = "#bfc2c6";
static const char norm_bg[] = "#000D1B";
static const char norm_border[] = "#57606b";

static const char sel_fg[] = "#bfc2c6";
static const char sel_bg[] = "#9f6c50";
static const char sel_border[] = "#bfc2c6";

static const char urg_fg[] = "#bfc2c6";
static const char urg_bg[] = "#875742";
static const char urg_border[] = "#875742";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
