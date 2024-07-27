.class public Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
.super Landroid/view/View;

# interfaces
.implements Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;


# static fields
.field protected static BASE_TEXT_SIZE_PIXELS:I = 0x0

.field protected static DEFAULT_TAB_LENGTH_SPACES:I = 0x0

.field protected static EMPTY_CARET_WIDTH_SCALE:F = 0.0f

.field private static PICKER_SETS:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCROLL_DOWN:I = 0x1

.field public static final SCROLL_LEFT:I = 0x2

.field protected static SCROLL_PERIOD:J = 0x0L

.field public static final SCROLL_RIGHT:I = 0x3

.field public static final SCROLL_UP:I

.field protected static SEL_CARET_HEIGHT_SCALE:F


# instance fields
.field private _alphaWidth:I

.field protected _autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

.field protected _autoIndentWidth:I

.field private _boldTypeface:Landroid/graphics/Typeface;

.field private _brush:Landroid/graphics/Paint;

.field private _brushLine:Landroid/graphics/Paint;

.field protected _caretPosition:I

.field private _caretRow:I

.field private _caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

.field private _caretX:I

.field private _caretY:I

.field private _clipboardManager:Landroid/text/ClipboardManager;

.field private _clipboardPanel:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

.field protected _colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

.field private _defTypeface:Landroid/graphics/Typeface;

.field private _emoji:C

.field private _fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

.field protected _hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

.field private _inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

.field protected _isAutoIndent:Z

.field protected _isEdited:Z

.field protected _isHighlightRow:Z

.field private _isLayout:Z

.field protected _isLongPressCaps:Z

.field private _italicTypeface:Landroid/graphics/Typeface;

.field private _leftOffset:I

.field protected _navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

.field private _rowLis:Lcom/myopicmobile/textwarrior/common/RowListener;

.field private final _scrollCaretDownTask:Ljava/lang/Runnable;

.field private final _scrollCaretLeftTask:Ljava/lang/Runnable;

.field private final _scrollCaretRightTask:Ljava/lang/Runnable;

.field private final _scrollCaretUpTask:Ljava/lang/Runnable;

.field private final _scroller:Landroid/widget/Scroller;

.field private _selModeLis:Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

.field protected _selectionAnchor:I

.field protected _selectionEdge:I

.field private _showLineNumbers:Z

.field protected _showNonPrinting:Z

.field private _spaceWidth:I

.field protected _tabLength:I

.field private _textLis:Lcom/myopicmobile/textwarrior/android/TextChangeListener;

.field private _topOffset:I

.field private _xExtent:I

.field private _zoomFactor:F

.field private mLastScroll:J


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->EMPTY_CARET_WIDTH_SCALE:F

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->SEL_CARET_HEIGHT_SCALE:F

    const/4 v0, 0x4

    sput v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->DEFAULT_TAB_LENGTH_SPACES:I

    const/16 v0, 0x10

    sput v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    const/16 v0, 0xfa

    int-to-long v0, v0

    sput-wide v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->SCROLL_PERIOD:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isEdited:Z

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    sget v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->DEFAULT_TAB_LENGTH_SPACES:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isHighlightRow:Z

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isAutoIndent:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    int-to-float v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_defTypeface:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v0, v2, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000003;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000003;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000005;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000005;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000006;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000006;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isEdited:Z

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    sget v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->DEFAULT_TAB_LENGTH_SPACES:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isHighlightRow:Z

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isAutoIndent:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    int-to-float v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_defTypeface:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v0, v2, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000003;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000003;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000005;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000005;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000006;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000006;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isEdited:Z

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    sget v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->DEFAULT_TAB_LENGTH_SPACES:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isHighlightRow:Z

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isAutoIndent:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    int-to-float v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_defTypeface:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v0, v2, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000003;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000003;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000005;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000005;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000006;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000006;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->initView()V

    return-void
.end method

.method static synthetic access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateRows(II)V

    return-void
.end method

.method static synthetic access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateFromRow(I)V

    return-void
.end method

.method static synthetic access$1000045(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 1

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateCaretRow()V

    return-void
.end method

.method static synthetic access$1000046(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 1

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateSelectionRows()V

    return-void
.end method

.method static synthetic access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/RowListener;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_rowLis:Lcom/myopicmobile/textwarrior/common/RowListener;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selModeLis:Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    return v0
.end method

.method static synthetic access$L1000010(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/ClipboardPanel;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardPanel:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_textLis:Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    return-object v0
.end method

.method static synthetic access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

    return-object v0
.end method

.method static synthetic access$L1000052(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$L1000054(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$L1000056(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$L1000058(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/common/RowListener;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_rowLis:Lcom/myopicmobile/textwarrior/common/RowListener;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selModeLis:Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V
    .registers 2

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    return-void
.end method

.method static synthetic access$S1000010(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardPanel:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    return-void
.end method

.method static synthetic access$S1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/TextChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_textLis:Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    return-void
.end method

.method static synthetic access$S1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/common/Pair;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

    return-void
.end method

.method static synthetic access$S1000052(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$S1000054(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$S1000056(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$S1000058(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    return-void
.end method

.method private doOptionHighlightRow(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isHighlightRow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaintBaseline(I)I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v3, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LINE_HIGHLIGHT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretY:I

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawTextBackground(Landroid/graphics/Canvas;III)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const/high16 v2, -0x78000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private drawCaret(Landroid/graphics/Canvas;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput p2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretX:I

    iput p3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretY:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_DISABLED:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawTextBackground(Landroid/graphics/Canvas;III)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawChar(Landroid/graphics/Canvas;CII)I
    .registers 15

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {p0, p2, p3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getAdvance(CI)I

    move-result v8

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    if-gt p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    :cond_0
    sparse-switch p2, :sswitch_data_0

    iget-char v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    if-eqz v0, :cond_3

    iget-char v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v1, v3, [C

    aput-char v0, v1, v2

    aput-char p2, v1, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    int-to-char v0, v2

    iput-char v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    :cond_1
    :goto_0
    return v8

    :sswitch_0
    iput-char p2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v3, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v1, v3}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "\u00b7"

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    const-string v1, " "

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v3, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v1, v3}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "\u21b5"

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v3, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v1, v3}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "\u00bb"

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v1, v9, [C

    aput-char p2, v1, v2

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method private drawLineNum(Landroid/graphics/Canvas;Ljava/lang/String;II)I
    .registers 8

    int-to-float v0, p3

    int-to-float v1, p4

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    return v0
.end method

.method private drawSelectedText(Landroid/graphics/Canvas;CII)I
    .registers 10

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getAdvance(C)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v4, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v3, v4}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p3, p4, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawTextBackground(Landroid/graphics/Canvas;III)V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v4, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v3, v4}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawChar(Landroid/graphics/Canvas;CII)I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return v1
.end method

.method private drawTextBackground(Landroid/graphics/Canvas;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "III)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    int-to-float v1, p2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    add-int v3, p2, p4

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, p3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBeginPaintRow(Landroid/graphics/Canvas;)I
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private getEndPaintRow(Landroid/graphics/Canvas;)I
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private handleLongPressCaps(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    goto :goto_0
.end method

.method private handleLongPressDialogDisplay(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :goto_0
    sget-object v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->showCharacterPicker(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    goto :goto_1
.end method

.method private handleNavigationKey(ILandroid/view/KeyEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateCaretRow()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateSelectionRows()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretRight(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretLeft(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretDown()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretUp()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardManager:Landroid/text/ClipboardManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    sget v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    sget v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setLongClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setHapticFeedbackEnabled(Z)V

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000000;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000000;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_rowLis:Lcom/myopicmobile/textwarrior/common/RowListener;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selModeLis:Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_textLis:Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->resetView()V

    new-instance v0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardPanel:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LanguageLua;->getInstance()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v0

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setLanguage(Lcom/myopicmobile/textwarrior/common/Language;)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    return-void
.end method

.method private invalidateCaretRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateRows(II)V

    return-void
.end method

.method private invalidateFromRow(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Invalid startRow"

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->getCaretBloat()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-super {p0, v1, v0, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private invalidateRows(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Invalid startRow and/or endRow"

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->getCaretBloat()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v4, v5, p2

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    invoke-super {p0, v1, v2, v3, v0}, Landroid/view/View;->invalidate(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private invalidateSelectionRows()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateRows(II)V

    return-void
.end method

.method private final isPointInView(II)Z
    .registers 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeCharColumnVisible(I)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCharExtent(I)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-le v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_alphaWidth:I

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    sub-int v0, v2, v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_alphaWidth:I

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private makeCharRowVisible(I)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v0

    sub-int v0, v1, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentHeight()I

    move-result v3

    add-int/2addr v1, v3

    if-le v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private makeCharVisible(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid charOffset given"

    invoke-static {v0, v3}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharRowVisible(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharColumnVisible(I)I

    move-result v3

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollBy(II)V

    move v2, v1

    goto :goto_1
.end method

.method private reachedNextSpan(ILcom/myopicmobile/textwarrior/common/Pair;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private realDraw(Landroid/graphics/Canvas;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getBeginPaintRow(Landroid/graphics/Canvas;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v15

    if-gez v15, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isWordWrap()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3, v15}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findLineNumber(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move v9, v3

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getEndPaintRow(Landroid/graphics/Canvas;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaintBaseline(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getSpans()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    const-string v4, "No spans to paint in TextWarrior.paint()"

    invoke-static {v3, v4}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v4, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move-object v10, v3

    :goto_3
    invoke-virtual {v10}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v3

    add-int v12, v4, v3

    move/from16 v0, v21

    if-ge v5, v0, :cond_7

    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myopicmobile/textwarrior/common/Pair;

    move-object v11, v3

    :goto_4
    if-eqz v11, :cond_2

    if-le v12, v15, :cond_13

    :cond_2
    invoke-virtual {v10}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v16

    invoke-virtual {v10}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_defTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    invoke-virtual {v10}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getTokenColor(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    sget-object v5, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v4, v5}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v3, 0x0

    move-object v6, v10

    move-object v7, v11

    move/from16 v17, v14

    move v8, v13

    move v5, v9

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->doOptionHighlightRow(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v18, 0x1

    move v9, v3

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x0

    check-cast v3, Lcom/myopicmobile/textwarrior/common/Pair;

    move-object v11, v3

    move v13, v5

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_5

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRow(I)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowSize(I)I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    if-eqz v4, :cond_12

    if-eq v5, v3, :cond_12

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawLineNum(Landroid/graphics/Canvas;Ljava/lang/String;II)I

    move v4, v5

    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    const/4 v10, 0x0

    move v9, v12

    move v13, v3

    move v14, v10

    move/from16 v11, v16

    :goto_8
    move/from16 v0, v23

    if-lt v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    add-int/lit8 v10, v15, -0x1

    invoke-virtual {v3, v10}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    const/16 v10, 0xa

    if-ne v3, v10, :cond_9

    add-int/lit8 v5, v5, 0x1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    if-le v13, v10, :cond_a

    move-object/from16 v0, p0

    iput v13, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    :cond_a
    add-int v10, v17, v3

    add-int/lit8 v13, v18, 0x1

    move/from16 v16, v11

    move v12, v9

    move/from16 v17, v10

    move/from16 v18, v13

    move v3, v4

    goto/16 :goto_6

    :cond_b
    if-eqz v7, :cond_11

    if-lt v15, v9, :cond_11

    invoke-virtual {v7}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v3

    add-int/2addr v9, v3

    invoke-virtual {v7}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v10

    if-eq v11, v10, :cond_c

    invoke-virtual {v7}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_defTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    invoke-virtual {v7}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getTokenColor(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_c
    move/from16 v0, v21

    if-ge v8, v0, :cond_e

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myopicmobile/textwarrior/common/Pair;

    add-int/lit8 v8, v8, 0x1

    move-object v6, v7

    :goto_a
    add-int/lit8 v7, v15, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    if-ne v7, v11, :cond_f

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretSpan:Lcom/myopicmobile/textwarrior/common/Pair;

    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v7, v15}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v11, v15}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->inSelectionRange(I)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v7, v13, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawSelectedText(Landroid/graphics/Canvas;CII)I

    move-result v7

    add-int/2addr v7, v13

    move v12, v7

    :goto_c
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object v7, v3

    move v13, v12

    move v11, v10

    goto/16 :goto_8

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_9

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    check-cast v3, Lcom/myopicmobile/textwarrior/common/Pair;

    move-object v6, v7

    goto :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget v7, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    if-ne v15, v7, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawCaret(Landroid/graphics/Canvas;II)V

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v7, v13, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->drawChar(Landroid/graphics/Canvas;CII)I

    move-result v7

    add-int/2addr v7, v13

    move v12, v7

    goto :goto_c

    :cond_11
    move-object v3, v7

    move v10, v11

    goto :goto_a

    :cond_12
    move v4, v3

    goto/16 :goto_7

    :cond_13
    move-object v10, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method private resetView()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    iput v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->clearSpans()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_rowLis:Lcom/myopicmobile/textwarrior/common/RowListener;

    invoke-interface {v0, v1}, Lcom/myopicmobile/textwarrior/common/RowListener;->onRowChange(I)V

    invoke-virtual {p0, v1, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollTo(II)V

    return-void
.end method

.method private showCharacterPicker(Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    new-instance v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;

    invoke-direct {v1, p0, v3, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Landroid/text/SpannableStringBuilder;Z)V

    invoke-virtual {v0, v1}, Landroid/text/method/CharacterPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    return-void
.end method

.method private useAllDimensions(I)I
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    const v0, 0x7fffffff

    const-string v1, "MeasureSpec cannot be UNSPECIFIED. Setting dimensions to max."

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    :cond_0
    return v0
.end method


# virtual methods
.method autoScrollCaret(I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v1, "Invalid scroll direction"

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnFirstRowOfFile()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnLastRowOfFile()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnEOF()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelSpanning()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->cancelSpanning()V

    return-void
.end method

.method protected caretOnEOF()Z
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected caretOnFirstRowOfFile()Z
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected caretOnLastRowOfFile()Z
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method coordToCharIndex(II)I
    .registers 15

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v0

    div-int v1, p2, v0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v0

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRow(I)Ljava/lang/String;

    move-result-object v6

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v2

    move v1, v2

    :goto_1
    if-lt v5, v7, :cond_4

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_6

    add-int/2addr v0, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    if-ge v4, p1, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v9, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v10, v11, [C

    aput-char v8, v10, v2

    aput-char v1, v10, v3

    invoke-virtual {v9, v10, v2, v11}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    move v1, v3

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getEOLAdvance()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSpaceAdvance()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getTabAdvance(I)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v8}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCharAdvance(C)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_2

    :cond_6
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method coordToCharIndexStrict(II)I
    .registers 16

    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v1

    div-int v1, p2, v1

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v6

    if-ltz v6, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRow(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v2

    move v1, v2

    move v4, v2

    :goto_1
    if-lt v5, v8, :cond_3

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_0

    add-int v0, v6, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_0

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    if-ge v4, p1, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v10, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v11, v12, [C

    aput-char v9, v11, v2

    aput-char v1, v11, v3

    invoke-virtual {v10, v11, v2, v12}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    move v1, v3

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getEOLAdvance()I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSpaceAdvance()I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getTabAdvance(I)I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v9}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCharAdvance(C)I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public copy()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->copy(Landroid/text/ClipboardManager;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    return-void
.end method

.method public copy(Landroid/text/ClipboardManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/ClipboardManager;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->copy(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method public createDocumentProvider()Lcom/myopicmobile/textwarrior/common/DocumentProvider;
    .registers 3

    new-instance v0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;-><init>(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V

    return-object v0
.end method

.method public cut()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->cut(Landroid/text/ClipboardManager;)V

    :cond_0
    return-void
.end method

.method public cut(Landroid/text/ClipboardManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/ClipboardManager;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->cut(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method flingScroll(II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getMaxScrollY()I

    move-result v8

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->postInvalidate()V

    return-void
.end method

.method public focusCaret()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    return-void
.end method

.method public focusSelectionEnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->focusSelection(Z)V

    return-void
.end method

.method public focusSelectionStart()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->focusSelection(Z)V

    return-void
.end method

.method public format()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->createDocumentProvider()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    invoke-static {v0, v1}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->format(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->beginBatchEdit()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore([CIJ)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->endBatchEdit()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->respan()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    return-void
.end method

.method public getAdvance(C)I
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v3, v5, [C

    aput-char v1, v3, v0

    aput-char p1, v3, v4

    invoke-virtual {v2, v3, v0, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSpaceAdvance()I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getEOLAdvance()I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getTabAdvance()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v2, v4, [C

    aput-char p1, v2, v0

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method public getAdvance(CI)I
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_emoji:C

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v3, v5, [C

    aput-char v1, v3, v0

    aput-char p1, v3, v4

    invoke-virtual {v2, v3, v0, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSpaceAdvance()I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getEOLAdvance()I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getTabAdvance(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v2, v4, [C

    aput-char p1, v2, v0

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method public getAutoIndentWidth()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    return v0
.end method

.method getBoundingBox(I)Landroid/graphics/Rect;
    .registers 7

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCharExtent(I)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v4

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v3

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getCaretPosition()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    return v0
.end method

.method public getCaretRow()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretRow:I

    return v0
.end method

.method public getCaretX()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretX:I

    return v0
.end method

.method public getCaretY()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretY:I

    return v0
.end method

.method public getCharAdvance(C)I
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v1, v3, [C

    aput-char p1, v1, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getCharExtent(I)Lcom/myopicmobile/textwarrior/common/Pair;
    .registers 14

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v0

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v7

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v5, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRow(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    move v5, v3

    move v6, v1

    move v0, v1

    :goto_0
    add-int v3, v7, v6

    if-gt v3, p1, :cond_0

    if-lt v6, v9, :cond_1

    :cond_0
    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v0, v5, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    return-object v0

    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    if-eqz v0, :cond_2

    move v0, v1

    move v3, v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    move v4, v3

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    new-array v10, v11, [C

    aput-char v3, v10, v1

    aput-char v0, v10, v2

    invoke-virtual {v5, v10, v1, v11}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    add-int v3, v4, v0

    move v0, v2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getEOLAdvance()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSpaceAdvance()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getTabAdvance(I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCharAdvance(C)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    return-object v0
.end method

.method protected getColumn(I)I
    .registers 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v2, "Invalid char offset given to getColumn"

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getContentHeight()I
    .registers 3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getContentWidth()I
    .registers 3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getEOLAdvance()I
    .registers 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v1, "\u21b5"

    sget-object v2, Lcom/myopicmobile/textwarrior/common/Language;->GLYPH_NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->EMPTY_CARET_WIDTH_SCALE:F

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v2, " "

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getLeftOffset()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    return v0
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    return v0
.end method

.method getMaxScrollX()I
    .registers 4

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->getCaretBloat()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_alphaWidth:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method getMaxScrollY()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->getCaretBloat()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getNumVisibleRows()I
    .registers 5

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getPaintBaseline(I)I
    .registers 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v2

    mul-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final getRowWidth()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectionEnd()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    goto :goto_0
.end method

.method public getSelectionStart()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    goto :goto_0
.end method

.method protected getSpaceAdvance()I
    .registers 5

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v1, "\u00b7"

    const/4 v2, 0x0

    sget-object v3, Lcom/myopicmobile/textwarrior/common/Language;->GLYPH_SPACE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    goto :goto_0
.end method

.method protected getTabAdvance()I
    .registers 6

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v2, "\u00b7"

    const/4 v3, 0x0

    sget-object v4, Lcom/myopicmobile/textwarrior/common/Language;->GLYPH_SPACE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getTabAdvance(I)I
    .registers 7

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v2, "\u00b7"

    const/4 v3, 0x0

    sget-object v4, Lcom/myopicmobile/textwarrior/common/Language;->GLYPH_SPACE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_leftOffset:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    rem-int/2addr v0, v1

    sub-int v0, v2, v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTextSize()F
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTopOffset()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_topOffset:I

    return v0
.end method

.method public getUiState()Landroid/os/Parcelable;
    .registers 2

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    return-object v0
.end method

.method public getZoom()F
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    return v0
.end method

.method public hasLayout()Z
    .registers 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inSelectionRange(I)Z
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->inSelectionRange(I)Z

    move-result v0

    return v0
.end method

.method public isEdited()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isEdited:Z

    return v0
.end method

.method public isFlingScrolling()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final isSelectText()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->isSelectText()Z

    move-result v0

    return v0
.end method

.method public final isSelectText2()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->isSelectText2()Z

    move-result v0

    return v0
.end method

.method public isShowLineNumbers()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    return v0
.end method

.method public isWordWrap()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    return v0
.end method

.method public moveCaret(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    return-void
.end method

.method public moveCaretDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretDown()V

    return-void
.end method

.method public moveCaretLeft()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretLeft(Z)V

    return-void
.end method

.method public moveCaretRight()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretRight(Z)V

    return-void
.end method

.method public moveCaretUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretUp()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v0, 0x20001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x50000006

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    invoke-direct {v0, p0, p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_inputConnection:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->resetComposingState()V

    goto :goto_0
.end method

.method onDestroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->cancelSpanning()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->realDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onTextDrawComplete(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateCaretRow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v2, 0xef01

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0, p1, p2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->handleNavigationKey(ILandroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->showCharacterPicker(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->keyEventToPrintableChar(Landroid/view/KeyEvent;)C

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->handleLongPressCaps(C)V

    :cond_5
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->handleLongPressDialogDisplay(C)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    if-eqz v0, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_9
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->keyEventToPrintableChar(Landroid/view/KeyEvent;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0, p1, p2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_topOffset:I

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->respan()V

    :cond_0
    if-gtz p4, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLayout:Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setWidth(I)V

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->useAllDimensions(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->useAllDimensions(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setMeasuredDimension(II)V

    return-void
.end method

.method onPause()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onPause()V

    return-void
.end method

.method onResume()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onResume()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p3, p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    if-ge p2, p4, :cond_1

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isPointInView(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->requestFocus()Z

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    if-gtz v1, :cond_0

    :goto_1
    if-ltz v1, :cond_1

    :goto_2
    if-gtz v0, :cond_2

    :goto_3
    if-ltz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretRight(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretLeft(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretDown()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretUp()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public paste()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->paste(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public paste(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public replaceText(IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->beginBatchEdit()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->replaceText(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->endBatchEdit()V

    return-void
.end method

.method public respan()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    return-void
.end method

.method public restoreUiState(Landroid/os/Parcelable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    check-cast p1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;

    iget v0, p1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_caretPosition:I

    iget-boolean v1, p1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectMode:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;

    iget v2, p1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectBegin:I

    iget v3, p1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectEnd:I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;III)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;

    invoke-direct {v1, p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected rowHeight()I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v0, v1, v0

    return v0
.end method

.method public selectAll()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectionRange(IIZZ)V

    return-void
.end method

.method public selectText(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->isSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateSelectionRows()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->isSelectText()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateCaretRow()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    goto :goto_0
.end method

.method public setAutoIndent(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isAutoIndent:Z

    return-void
.end method

.method public setAutoIndentWidth(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    return-void
.end method

.method public setBoldTypeface(Landroid/graphics/Typeface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setChirality(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onChiralityChanged(Z)V

    return-void
.end method

.method public setColorScheme(Lcom/myopicmobile/textwarrior/common/ColorScheme;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/ColorScheme;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_colorScheme:Lcom/myopicmobile/textwarrior/common/ColorScheme;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onColorSchemeChanged(Lcom/myopicmobile/textwarrior/common/ColorScheme;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {p1, v0}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setBackgroundColor(I)V

    return-void
.end method

.method public setDocumentProvider(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/DocumentProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->resetView()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->cancelSpanning()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    return-void
.end method

.method public setEdited(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isEdited:Z

    return-void
.end method

.method public setHighlightCurrentRow(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isHighlightRow:Z

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidateCaretRow()V

    return-void
.end method

.method public setItalicTypeface(Landroid/graphics/Typeface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setLongPressCaps(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isLongPressCaps:Z

    return-void
.end method

.method public setNavigationMethod(Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_navMethod:Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;

    return-void
.end method

.method public setNonPrintingCharVisibility(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showNonPrinting:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selModeLis:Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

    return-void
.end method

.method public setRowListener(Lcom/myopicmobile/textwarrior/common/RowListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/RowListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_rowLis:Lcom/myopicmobile/textwarrior/common/RowListener;

    return-void
.end method

.method public setSelection(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectionRange(IIZZ)V

    return-void
.end method

.method public setSelectionRange(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectionRange(IIZZ)V

    return-void
.end method

.method public setShowLineNumbers(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_showLineNumbers:Z

    return-void
.end method

.method public setTabSpaces(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_tabLength:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/16 v6, 0x61

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const/16 v0, 0x50

    if-ge p1, v0, :cond_0

    int-to-float v0, p1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v6}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getAdvance(C)I

    move-result v2

    int-to-double v2, v2

    sget v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    div-int v4, p1, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    int-to-float v5, p1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    int-to-float v5, p1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_2
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0, v6}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getAdvance(C)I

    move-result v6

    int-to-double v6, v6

    div-double v2, v6, v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v8, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollTo(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_alphaWidth:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_spaceWidth:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_defTypeface:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_boldTypeface:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_italicTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    :cond_1
    return-void
.end method

.method public setWordWrap(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->setWordWrap(Z)V

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_xExtent:I

    invoke-virtual {p0, v1, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->makeCharVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    :cond_1
    return-void
.end method

.method public setZoom(F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x5

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_zoomFactor:F

    sget v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brushLine:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->analyzeWordWrap()V

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_fieldController:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_brush:Landroid/graphics/Paint;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_alphaWidth:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    goto :goto_0
.end method

.method showIME(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->mLastScroll:J

    sub-long/2addr v0, v2

    const/16 v2, 0xfa

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1, v0, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->postInvalidate()V

    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->mLastScroll:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->smoothScrollBy(II)V

    return-void
.end method

.method stopAutoScrollCaret()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stopAutoScrollCaret(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string v0, "Invalid scroll direction"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretUpTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretDownTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretLeftTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scrollCaretRightTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stopFlingScrolling()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
