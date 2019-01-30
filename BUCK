load('//:buckaroo_macros.bzl', 'buckaroo_deps')

cxx_library(
  name = 'readline',
  header_namespace = '',
  exported_headers = {
    'readline/readline.h': 'readline.h',
    'readline/history.h': 'history.h',
    'readline/rlstdc.h': 'rlstdc.h',
    'readline/rltypedefs.h': 'rltypedefs.h',
    'readline/chardefs.h': 'chardefs.h',
    'readline/keymaps.h': 'keymaps.h',
    'readline/tilde.h': 'tilde.h',
  },
  headers = glob([
    '*.h',
  ]),
  srcs = glob([
    '*.c',
  ], exclude = [
    'savestring.c',
    'emacs_keymap.c',
    'vi_keymap.c',
  ]),
  deps = buckaroo_deps(),
  visibility = [
    'PUBLIC',
  ],
)
