#ifndef NVIM_UI_H
#define NVIM_UI_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "nvim/api/private/defs.h"
#include "nvim/event/multiqueue.h"
#include "nvim/globals.h"
#include "nvim/highlight_defs.h"
#include "nvim/macros.h"
#include "nvim/memory.h"
#include "nvim/types.h"

struct ui_t;

typedef enum {
  kUICmdline = 0,
  kUIPopupmenu,
  kUITabline,
  kUIWildmenu,
  kUIMessages,
#define kUIGlobalCount kUILinegrid
  kUILinegrid,
  kUIMultigrid,
  kUIHlState,
  kUITermColors,
  kUIFloatDebug,
  kUIExtCount,
} UIExtension;

EXTERN const char *ui_ext_names[] INIT(= {
  "ext_cmdline",
  "ext_popupmenu",
  "ext_tabline",
  "ext_wildmenu",
  "ext_messages",
  "ext_linegrid",
  "ext_multigrid",
  "ext_hlstate",
  "ext_termcolors",
  "_debug_float",
});

typedef struct ui_t UI;

enum {
  kLineFlagWrap = 1,
  kLineFlagInvalid = 2,
};

typedef int LineFlags;

struct ui_t {
  bool rgb;
  bool override;  ///< Force highest-requested UI capabilities.
  bool composed;
  bool ui_ext[kUIExtCount];  ///< Externalized UI capabilities.
  int width;
  int height;
  int pum_nlines;  /// actual nr. lines shown in PUM
  bool pum_pos;  /// UI reports back pum position?
  double pum_row;
  double pum_col;
  double pum_height;
  double pum_width;
  void *data;

#ifdef INCLUDE_GENERATED_DECLARATIONS
# include "ui_events.generated.h"
#endif

  void (*inspect)(UI *ui, Dictionary *info);
};

#ifdef CUSTOM_UI
extern void custom_ui_start(void);
extern void custom_ui_rpcevent_subscribed(void);
#endif

typedef struct ui_event_callback {
  LuaRef cb;
  bool ext_widgets[kUIGlobalCount];
} UIEventCallback;

// uncrustify:off
#ifdef INCLUDE_GENERATED_DECLARATIONS
# include "ui.h.generated.h"
# include "ui_events_call.h.generated.h"
#endif
// uncrustify:on

EXTERN MultiQueue *resize_events;
#endif  // NVIM_UI_H
