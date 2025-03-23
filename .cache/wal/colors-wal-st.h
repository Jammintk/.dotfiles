const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000D1B", /* black   */
  [1] = "#875742", /* red     */
  [2] = "#9f6c50", /* green   */
  [3] = "#013b6f", /* yellow  */
  [4] = "#004575", /* blue    */
  [5] = "#0178a3", /* magenta */
  [6] = "#0d9ab7", /* cyan    */
  [7] = "#8c9297", /* white   */

  /* 8 bright colors */
  [8]  = "#57606b",  /* black   */
  [9]  = "#B47458",  /* red     */
  [10] = "#D4916B", /* green   */
  [11] = "#024F94", /* yellow  */
  [12] = "#015D9D", /* blue    */
  [13] = "#02A1DA", /* magenta */
  [14] = "#12CEF5", /* cyan    */
  [15] = "#bfc2c6", /* white   */

  /* special colors */
  [256] = "#000D1B", /* background */
  [257] = "#bfc2c6", /* foreground */
  [258] = "#bfc2c6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
