#include QMK_KEYBOARD_H

enum layers {
    _BASE,
    _NUM,
    _SYM,
    _NAV
};

// Home-row mods (your order: GUI, ALT, CTRL, SHIFT)
#define HM_A   LGUI_T(KC_A)
#define HM_S   LALT_T(KC_S)
#define HM_D   LCTL_T(KC_D)
#define HM_F   LSFT_T(KC_F)

#define HM_J   RSFT_T(KC_J)
#define HM_K   RCTL_T(KC_K)
#define HM_L   RALT_T(KC_L)
#define HM_SCL RGUI_T(KC_SCLN)

// Thumbs (from your diagram: t s b e)
// Tab (tap) / Number (hold), Space, Backspace, Enter (tap) / Symbol (hold)
#define NUM_TAB  LT(_NUM, KC_TAB)
#define NAV_SPC  LT(_NAV, KC_SPC)
#define SYM_ENT  LT(_SYM, KC_ENT)

// Aliases for NAV layer
#define UNDO LCTL(KC_Z)
#define REDO LCTL(LSFT(KC_Z))
#define COPY LCTL(KC_C)
#define PASTE LCTL(KC_V)
#define CUT LCTL(KC_X)

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

    /* BASE
     * | Q | W | E | R | T | Y | U | I | O | P |
     * | A | S | D | F | G | H | J | K | L | ; |
     * | Z | X | C | V | B | N | M | , | . | / |
     *             | t | s | b | e |
     *
     * Home row mods:
     * A=GUI, S=ALT, D=CTRL, F=SHIFT
     * ;=GUI, L=ALT, K=CTRL, J=SHIFT
     */
    [_BASE] = LAYOUT_split_3x5_2(
        KC_Q,   KC_W,   KC_E,   KC_R,   KC_T,      KC_Y,   KC_U,   KC_I,    KC_O,    KC_P,
        HM_A,   HM_S,   HM_D,   HM_F,   KC_G,      KC_H,   HM_J,   HM_K,    HM_L,    HM_SCL,
        KC_Z,   KC_X,   KC_C,   KC_V,   KC_B,      KC_N,   KC_M,   KC_COMM, KC_DOT,  KC_SLSH,
                        NUM_TAB, NAV_SPC,          KC_BSPC, SYM_ENT
    ),

    /* NUM (right-hand centered numpad; left hand provides mods on home row)
     * |   |   |   |   |   | * | 7 | 8 | 9 | = |
     * | G | A | C | S |   | / | 4 | 5 | 6 | + |
     * |   |   |   |   |   | ^ | 1 | 2 | 3 | - |
     *             | H |   | 0 | . |
     *
     * Notes:
     * - Left home row = GUI/ALT/CTRL/SHIFT while holding NUM_TAB
     * - Right thumbs become 0 and . on this layer (matches your diagram)
     */
    [_NUM] = LAYOUT_split_3x5_2(
        _______, _______, _______, _______, _______,   KC_ASTR, KC_7,   KC_8,   KC_9,   KC_PLUS,
        KC_LGUI, KC_LALT, KC_LCTL, KC_LSFT, _______,   KC_SLSH, KC_4,   KC_5,   KC_6,   KC_EQL,
        _______, _______, _______, _______, _______,   KC_CIRC, KC_1,   KC_2,   KC_3,   KC_MINS,
                          _______, _______,            KC_0,    KC_DOT
    ),

    /* SYM (left-hand symbols; right-hand has ~ and ` + mods on home row)
     * | ! | @ | # | $ | % |   | ~ | ` |   |   |
     * | < | ( | [ | { | & |   | S | C | A | G |
     * | > | ) | ] | } | \ |   |   |   |   |   |
     *             | ' | _ |   | H |
     *
     * Notes:
     * - ' is KC_QUOT (Shift gives ")
     * - Right home row = SHIFT/CTRL/ALT/GUI on columns 2..5 (as you wrote)
     */
    [_SYM] = LAYOUT_split_3x5_2(
        KC_EXLM, KC_AT,   KC_HASH, KC_DLR,  KC_PERC,   _______, KC_TILD, KC_GRV,  _______, _______,
        KC_LT,   KC_LPRN, KC_LBRC, KC_LCBR, KC_AMPR,   _______, KC_LSFT, KC_LCTL, KC_LALT, KC_LGUI,
        KC_GT,   KC_RPRN, KC_RBRC, KC_RCBR, KC_BSLS,   _______, _______, _______, _______, _______,
                          KC_QUOT, KC_UNDS,            _______, _______
    ),

    /* NAV (from your Miryoku nav layer image)
     * |   |   |   |   |   | R | P | C | X | U |
     * | G | A | C | S |   | C | L | D | U | R |
     * |   |   |   |   |   | I | H | D | U | E |
     *             |   | H | b | e |
     *
     * Right side:
     * - Row 1: Again(Redo), Paste, Copy, Cut, Undo
     * - Row 2: Caps, Left, Down, Up, Right
     * - Row 3: Insert, Home, PgDn, PgUp, End
     *
     * Right thumb:
     * - backspace, esc
     */
    [_NAV] = LAYOUT_split_3x5_2(
        _______, _______, _______, _______, _______,   REDO, PASTE, COPY, CUT,  UNDO,
        KC_LGUI, KC_LALT, KC_LCTL, KC_LSFT, _______,   KC_LEFT, KC_DOWN, KC_UP, KC_RGHT,   KC_CAPS,
        _______, _______, _______, _______, _______,   KC_DEL,  KC_HOME, KC_PGDN, KC_PGUP, KC_END,
                          _______, _______,            KC_BSPC, KC_ESC
    )
};

