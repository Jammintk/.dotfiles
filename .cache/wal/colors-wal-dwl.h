/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x000D1Bff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xbfc2c6ff, 0x000D1Bff, 0x57606bff },
	[SchemeSel]  = { 0xbfc2c6ff, 0x9f6c50ff, 0x875742ff },
	[SchemeUrg]  = { 0xbfc2c6ff, 0x875742ff, 0x9f6c50ff },
};
