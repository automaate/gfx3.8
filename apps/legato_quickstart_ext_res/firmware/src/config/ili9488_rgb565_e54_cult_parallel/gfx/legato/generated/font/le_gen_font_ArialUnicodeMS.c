#include "gfx/legato/generated/le_gen_assets.h"

/*********************************
 * Legato Font Asset
 * Name:         ArialUnicodeMS
 * Height:       16
 * Baseline:     12
 * Style:        Antialias
 * Glyph Count:  97
 * Range Count:  2
 * Glyph Ranges: 0x0A
                 0x20-0x7F
 *********************************/
/*********************************
 * font glyph kerning table description
 *
 * unsigned int - number of glyphs
 * for each glyph:
 *     unsigned short - codepoint         * the glyph's codepoint
 *     short          - width             * the glyph's width in pixels
 *     short          - height            * the glyph's height in pixels
 *     short          - advance           * the glyph's advance value in pixels
 *     short          - bearingX          * the glyph's bearing value in pixels on the X axis
 *     short          - bearingY          * the glyph's bearing value in pixels on the Y axis
 *     unsigned short - flags             * status flags for this glyph
 *     unsigned short - data row width    * the size of a row of glyph data in bytes
 *     unsigned int   - data table offset * the offset into the corresponding font data table
 ********************************/
const uint8_t ArialUnicodeMS_glyphs[1944] =
{
    0x61,0x00,0x00,0x00,0x0A,0x00,0x0C,0x00,0x0C,0x00,0x10,0x00,0x02,0x00,0x0C,0x00,
    0x00,0x00,0x0C,0x00,0x00,0x00,0x00,0x00,0x20,0x00,0x00,0x00,0x00,0x00,0x04,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x00,0x00,0x00,0x21,0x00,0x03,0x00,
    0x0B,0x00,0x04,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x03,0x00,0x90,0x00,0x00,0x00,
    0x22,0x00,0x06,0x00,0x04,0x00,0x06,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x06,0x00,
    0xB1,0x00,0x00,0x00,0x23,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x09,0x00,0xC9,0x00,0x00,0x00,0x24,0x00,0x09,0x00,0x0D,0x00,0x09,0x00,
    0x00,0x00,0x0C,0x00,0x00,0x00,0x09,0x00,0x2C,0x01,0x00,0x00,0x25,0x00,0x0D,0x00,
    0x0B,0x00,0x0E,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x0D,0x00,0xA1,0x01,0x00,0x00,
    0x26,0x00,0x0B,0x00,0x0B,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,
    0x30,0x02,0x00,0x00,0x27,0x00,0x03,0x00,0x04,0x00,0x03,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x03,0x00,0xA9,0x02,0x00,0x00,0x28,0x00,0x05,0x00,0x0E,0x00,0x05,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x05,0x00,0xB5,0x02,0x00,0x00,0x29,0x00,0x05,0x00,
    0x0E,0x00,0x05,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x05,0x00,0xFB,0x02,0x00,0x00,
    0x2A,0x00,0x06,0x00,0x04,0x00,0x06,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x06,0x00,
    0x41,0x03,0x00,0x00,0x2B,0x00,0x09,0x00,0x07,0x00,0x09,0x00,0x00,0x00,0x09,0x00,
    0x00,0x00,0x09,0x00,0x59,0x03,0x00,0x00,0x2C,0x00,0x03,0x00,0x04,0x00,0x04,0x00,
    0x01,0x00,0x02,0x00,0x00,0x00,0x03,0x00,0x98,0x03,0x00,0x00,0x2D,0x00,0x05,0x00,
    0x01,0x00,0x05,0x00,0x00,0x00,0x05,0x00,0x00,0x00,0x05,0x00,0xA4,0x03,0x00,0x00,
    0x2E,0x00,0x03,0x00,0x02,0x00,0x04,0x00,0x01,0x00,0x02,0x00,0x00,0x00,0x03,0x00,
    0xA9,0x03,0x00,0x00,0x2F,0x00,0x05,0x00,0x0B,0x00,0x04,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x05,0x00,0xAF,0x03,0x00,0x00,0x30,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0xE6,0x03,0x00,0x00,0x31,0x00,0x05,0x00,
    0x0B,0x00,0x09,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x05,0x00,0x49,0x04,0x00,0x00,
    0x32,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,
    0x80,0x04,0x00,0x00,0x33,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x09,0x00,0xE3,0x04,0x00,0x00,0x34,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0x46,0x05,0x00,0x00,0x35,0x00,0x09,0x00,
    0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0xA9,0x05,0x00,0x00,
    0x36,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,
    0x0C,0x06,0x00,0x00,0x37,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x09,0x00,0x6F,0x06,0x00,0x00,0x38,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0xD2,0x06,0x00,0x00,0x39,0x00,0x09,0x00,
    0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0x35,0x07,0x00,0x00,
    0x3A,0x00,0x03,0x00,0x08,0x00,0x04,0x00,0x01,0x00,0x08,0x00,0x00,0x00,0x03,0x00,
    0x98,0x07,0x00,0x00,0x3B,0x00,0x03,0x00,0x0A,0x00,0x04,0x00,0x01,0x00,0x08,0x00,
    0x00,0x00,0x03,0x00,0xB0,0x07,0x00,0x00,0x3C,0x00,0x09,0x00,0x07,0x00,0x09,0x00,
    0x00,0x00,0x09,0x00,0x00,0x00,0x09,0x00,0xCE,0x07,0x00,0x00,0x3D,0x00,0x09,0x00,
    0x05,0x00,0x09,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x09,0x00,0x0D,0x08,0x00,0x00,
    0x3E,0x00,0x09,0x00,0x07,0x00,0x09,0x00,0x00,0x00,0x09,0x00,0x00,0x00,0x09,0x00,
    0x3A,0x08,0x00,0x00,0x3F,0x00,0x09,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x09,0x00,0x79,0x08,0x00,0x00,0x40,0x00,0x10,0x00,0x0E,0x00,0x10,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x10,0x00,0xDC,0x08,0x00,0x00,0x41,0x00,0x0C,0x00,
    0x0B,0x00,0x0B,0x00,0xFF,0xFF,0x0B,0x00,0x00,0x00,0x0C,0x00,0xBC,0x09,0x00,0x00,
    0x42,0x00,0x09,0x00,0x0B,0x00,0x0B,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,
    0x40,0x0A,0x00,0x00,0x43,0x00,0x0B,0x00,0x0B,0x00,0x0C,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x0B,0x00,0xA3,0x0A,0x00,0x00,0x44,0x00,0x0A,0x00,0x0B,0x00,0x0C,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x0A,0x00,0x1C,0x0B,0x00,0x00,0x45,0x00,0x09,0x00,
    0x0B,0x00,0x0B,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0x8A,0x0B,0x00,0x00,
    0x46,0x00,0x09,0x00,0x0B,0x00,0x0A,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,
    0xED,0x0B,0x00,0x00,0x47,0x00,0x0C,0x00,0x0B,0x00,0x0C,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x0C,0x00,0x50,0x0C,0x00,0x00,0x48,0x00,0x0A,0x00,0x0B,0x00,0x0C,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x0A,0x00,0xD4,0x0C,0x00,0x00,0x49,0x00,0x02,0x00,
    0x0B,0x00,0x04,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x02,0x00,0x42,0x0D,0x00,0x00,
    0x4A,0x00,0x07,0x00,0x0B,0x00,0x08,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x07,0x00,
    0x58,0x0D,0x00,0x00,0x4B,0x00,0x0A,0x00,0x0B,0x00,0x0B,0x00,0x01,0x00,0x0B,0x00,
    0x00,0x00,0x0A,0x00,0xA5,0x0D,0x00,0x00,0x4C,0x00,0x08,0x00,0x0B,0x00,0x09,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x08,0x00,0x13,0x0E,0x00,0x00,0x4D,0x00,0x0C,0x00,
    0x0B,0x00,0x0D,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x0C,0x00,0x6B,0x0E,0x00,0x00,
    0x4E,0x00,0x0A,0x00,0x0B,0x00,0x0C,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x0A,0x00,
    0xEF,0x0E,0x00,0x00,0x4F,0x00,0x0C,0x00,0x0B,0x00,0x0C,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x0C,0x00,0x5D,0x0F,0x00,0x00,0x50,0x00,0x09,0x00,0x0B,0x00,0x0B,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x09,0x00,0xE1,0x0F,0x00,0x00,0x51,0x00,0x0C,0x00,
    0x0C,0x00,0x0C,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x0C,0x00,0x44,0x10,0x00,0x00,
    0x52,0x00,0x0B,0x00,0x0B,0x00,0x0C,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,
    0xD4,0x10,0x00,0x00,0x53,0x00,0x0A,0x00,0x0B,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x0A,0x00,0x4D,0x11,0x00,0x00,0x54,0x00,0x0A,0x00,0x0B,0x00,0x0A,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x0A,0x00,0xBB,0x11,0x00,0x00,0x55,0x00,0x0A,0x00,
    0x0B,0x00,0x0C,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x0A,0x00,0x29,0x12,0x00,0x00,
    0x56,0x00,0x0B,0x00,0x0B,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,
    0x97,0x12,0x00,0x00,0x57,0x00,0x0F,0x00,0x0B,0x00,0x0F,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x0F,0x00,0x10,0x13,0x00,0x00,0x58,0x00,0x0B,0x00,0x0B,0x00,0x0B,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,0xB5,0x13,0x00,0x00,0x59,0x00,0x0B,0x00,
    0x0B,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x0B,0x00,0x2E,0x14,0x00,0x00,
    0x5A,0x00,0x0A,0x00,0x0B,0x00,0x0A,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x0A,0x00,
    0xA7,0x14,0x00,0x00,0x5B,0x00,0x04,0x00,0x0E,0x00,0x04,0x00,0x01,0x00,0x0B,0x00,
    0x00,0x00,0x04,0x00,0x15,0x15,0x00,0x00,0x5C,0x00,0x05,0x00,0x0B,0x00,0x04,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x05,0x00,0x4D,0x15,0x00,0x00,0x5D,0x00,0x04,0x00,
    0x0E,0x00,0x04,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x04,0x00,0x84,0x15,0x00,0x00,
    0x5E,0x00,0x08,0x00,0x06,0x00,0x08,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x08,0x00,
    0xBC,0x15,0x00,0x00,0x5F,0x00,0x0A,0x00,0x01,0x00,0x08,0x00,0xFF,0xFF,0xFF,0xFF,
    0x00,0x00,0x0A,0x00,0xEC,0x15,0x00,0x00,0x60,0x00,0x04,0x00,0x03,0x00,0x05,0x00,
    0x00,0x00,0x0C,0x00,0x00,0x00,0x04,0x00,0xF6,0x15,0x00,0x00,0x61,0x00,0x09,0x00,
    0x08,0x00,0x09,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x09,0x00,0x02,0x16,0x00,0x00,
    0x62,0x00,0x08,0x00,0x0B,0x00,0x09,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x08,0x00,
    0x4A,0x16,0x00,0x00,0x63,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x00,0x00,0x08,0x00,
    0x00,0x00,0x08,0x00,0xA2,0x16,0x00,0x00,0x64,0x00,0x08,0x00,0x0B,0x00,0x09,0x00,
    0x00,0x00,0x0B,0x00,0x00,0x00,0x08,0x00,0xE2,0x16,0x00,0x00,0x65,0x00,0x09,0x00,
    0x08,0x00,0x09,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x09,0x00,0x3A,0x17,0x00,0x00,
    0x66,0x00,0x05,0x00,0x0B,0x00,0x04,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x05,0x00,
    0x82,0x17,0x00,0x00,0x67,0x00,0x08,0x00,0x0B,0x00,0x09,0x00,0x00,0x00,0x08,0x00,
    0x00,0x00,0x08,0x00,0xB9,0x17,0x00,0x00,0x68,0x00,0x07,0x00,0x0B,0x00,0x09,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x07,0x00,0x11,0x18,0x00,0x00,0x69,0x00,0x02,0x00,
    0x0B,0x00,0x04,0x00,0x01,0x00,0x0B,0x00,0x00,0x00,0x02,0x00,0x5E,0x18,0x00,0x00,
    0x6A,0x00,0x04,0x00,0x0E,0x00,0x04,0x00,0xFF,0xFF,0x0B,0x00,0x00,0x00,0x04,0x00,
    0x74,0x18,0x00,0x00,0x6B,0x00,0x07,0x00,0x0B,0x00,0x08,0x00,0x01,0x00,0x0B,0x00,
    0x00,0x00,0x07,0x00,0xAC,0x18,0x00,0x00,0x6C,0x00,0x02,0x00,0x0B,0x00,0x04,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x02,0x00,0xF9,0x18,0x00,0x00,0x6D,0x00,0x0C,0x00,
    0x08,0x00,0x0D,0x00,0x01,0x00,0x08,0x00,0x00,0x00,0x0C,0x00,0x0F,0x19,0x00,0x00,
    0x6E,0x00,0x07,0x00,0x08,0x00,0x09,0x00,0x01,0x00,0x08,0x00,0x00,0x00,0x07,0x00,
    0x6F,0x19,0x00,0x00,0x6F,0x00,0x09,0x00,0x08,0x00,0x09,0x00,0x00,0x00,0x08,0x00,
    0x00,0x00,0x09,0x00,0xA7,0x19,0x00,0x00,0x70,0x00,0x08,0x00,0x0B,0x00,0x09,0x00,
    0x01,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0xEF,0x19,0x00,0x00,0x71,0x00,0x08,0x00,
    0x0B,0x00,0x09,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0x47,0x1A,0x00,0x00,
    0x72,0x00,0x05,0x00,0x08,0x00,0x05,0x00,0x01,0x00,0x08,0x00,0x00,0x00,0x05,0x00,
    0x9F,0x1A,0x00,0x00,0x73,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x00,0x00,0x08,0x00,
    0x00,0x00,0x08,0x00,0xC7,0x1A,0x00,0x00,0x74,0x00,0x05,0x00,0x0A,0x00,0x04,0x00,
    0x00,0x00,0x0A,0x00,0x00,0x00,0x05,0x00,0x07,0x1B,0x00,0x00,0x75,0x00,0x07,0x00,
    0x08,0x00,0x09,0x00,0x01,0x00,0x08,0x00,0x00,0x00,0x07,0x00,0x39,0x1B,0x00,0x00,
    0x76,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x08,0x00,
    0x71,0x1B,0x00,0x00,0x77,0x00,0x0C,0x00,0x08,0x00,0x0C,0x00,0x00,0x00,0x08,0x00,
    0x00,0x00,0x0C,0x00,0xB1,0x1B,0x00,0x00,0x78,0x00,0x08,0x00,0x08,0x00,0x08,0x00,
    0x00,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0x11,0x1C,0x00,0x00,0x79,0x00,0x08,0x00,
    0x0B,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0x51,0x1C,0x00,0x00,
    0x7A,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x08,0x00,
    0xA9,0x1C,0x00,0x00,0x7B,0x00,0x05,0x00,0x0E,0x00,0x05,0x00,0x00,0x00,0x0B,0x00,
    0x00,0x00,0x05,0x00,0xE9,0x1C,0x00,0x00,0x7C,0x00,0x02,0x00,0x0E,0x00,0x04,0x00,
    0x01,0x00,0x0B,0x00,0x00,0x00,0x02,0x00,0x2F,0x1D,0x00,0x00,0x7D,0x00,0x05,0x00,
    0x0E,0x00,0x05,0x00,0x00,0x00,0x0B,0x00,0x00,0x00,0x05,0x00,0x4B,0x1D,0x00,0x00,
    0x7E,0x00,0x09,0x00,0x04,0x00,0x09,0x00,0x00,0x00,0x07,0x00,0x00,0x00,0x09,0x00,
    0x91,0x1D,0x00,0x00,0x7F,0x00,0x0C,0x00,0x0C,0x00,0x10,0x00,0x02,0x00,0x0C,0x00,
    0x00,0x00,0x0C,0x00,0xB5,0x1D,0x00,0x00,
};

leRasterFont ArialUnicodeMS =
{
    {
        {
            1, // data location id
            (void*)0, // external data address
            7749, // data size
        },
        LE_RASTER_FONT,
    },
    16,
    12,
    LE_FONT_BPP_8, // bits per pixel
    ArialUnicodeMS_glyphs, // glyph table
};
