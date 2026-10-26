.class public final Lcom/termux/terminal/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    }
.end annotation


# static fields
.field public static final CURSOR_STYLE_BAR:I = 0x2

.field public static final CURSOR_STYLE_BLOCK:I = 0x0

.field public static final CURSOR_STYLE_UNDERLINE:I = 0x1

.field private static final DECSET_BIT_APPLICATION_CURSOR_KEYS:I = 0x1

.field private static final DECSET_BIT_APPLICATION_KEYPAD:I = 0x20

.field private static final DECSET_BIT_AUTOWRAP:I = 0x8

.field private static final DECSET_BIT_BRACKETED_PASTE_MODE:I = 0x400

.field private static final DECSET_BIT_LEFTRIGHT_MARGIN_MODE:I = 0x800

.field private static final DECSET_BIT_MOUSE_PROTOCOL_SGR:I = 0x200

.field private static final DECSET_BIT_MOUSE_TRACKING_BUTTON_EVENT:I = 0x80

.field private static final DECSET_BIT_MOUSE_TRACKING_PRESS_RELEASE:I = 0x40

.field private static final DECSET_BIT_ORIGIN_MODE:I = 0x4

.field private static final DECSET_BIT_RECTANGULAR_CHANGEATTRIBUTE:I = 0x1000

.field private static final DECSET_BIT_REVERSE_VIDEO:I = 0x2

.field private static final DECSET_BIT_SEND_FOCUS_EVENTS:I = 0x100

.field private static final DECSET_BIT_SHOWING_CURSOR:I = 0x10

.field private static final ESC:I = 0x1

.field private static final ESC_CSI:I = 0x6

.field private static final ESC_CSI_ARGS_ASTERIX:I = 0x10

.field private static final ESC_CSI_ARGS_SPACE:I = 0xf

.field private static final ESC_CSI_BIGGERTHAN:I = 0xc

.field private static final ESC_CSI_DOLLAR:I = 0x8

.field private static final ESC_CSI_DOUBLE_QUOTE:I = 0x11

.field private static final ESC_CSI_EXCLAMATION:I = 0x13

.field private static final ESC_CSI_QUESTIONMARK:I = 0x7

.field private static final ESC_CSI_QUESTIONMARK_ARG_DOLLAR:I = 0xe

.field private static final ESC_CSI_SINGLE_QUOTE:I = 0x12

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_OSC:I = 0xa

.field private static final ESC_OSC_ESC:I = 0xb

.field private static final ESC_P:I = 0xd

.field private static final ESC_PERCENT:I = 0x9

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final LOG_ESCAPE_SEQUENCES:Z = false

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x10

.field private static final MAX_OSC_STRING_LENGTH:I = 0x2000

.field public static final MOUSE_LEFT_BUTTON:I = 0x0

.field public static final MOUSE_LEFT_BUTTON_MOVED:I = 0x20

.field public static final MOUSE_WHEELDOWN_BUTTON:I = 0x41

.field public static final MOUSE_WHEELUP_BUTTON:I = 0x40

.field public static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd


# instance fields
.field private mAboutToAutoWrap:Z

.field final mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private mArgIndex:I

.field private final mArgs:[I

.field mBackColor:I

.field private mBottomMargin:I

.field public final mColors:Lcom/termux/terminal/TerminalColors;

.field public mColumns:I

.field private mContinueSequence:Z

.field private mCurrentDecSetFlags:I

.field private mCursorCol:I

.field private mCursorRow:I

.field private mCursorStyle:I

.field private mEffect:I

.field private mEscapeState:I

.field mForeColor:I

.field private mInsertMode:Z

.field private mLeftMargin:I

.field private final mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private final mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

.field private mRightMargin:I

.field public mRows:I

.field private mSavedDecSetFlags:I

.field private final mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private final mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private mScreen:Lcom/termux/terminal/TerminalBuffer;

.field private mScrollCounter:I

.field private final mSession:Lcom/termux/terminal/TerminalOutput;

.field private mTabStop:[Z

.field private mTitle:Ljava/lang/String;

.field private final mTitleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I

.field private mUseLineDrawingG0:Z

.field private mUseLineDrawingG1:Z

.field private mUseLineDrawingUsesG0:Z

.field private mUtf8Index:B

.field private final mUtf8InputBuffer:[B

.field private mUtf8ToFollow:B


# direct methods
.method public constructor <init>(Lcom/termux/terminal/TerminalOutput;III)V
    .locals 2

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    .line 136
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 159
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 173
    new-instance v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 174
    new-instance v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 222
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    .line 227
    new-instance v0, Lcom/termux/terminal/TerminalColors;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColors;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    .line 282
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    .line 283
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {v0, p2, p4, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 284
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {v0, p2, p3, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 285
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 286
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 287
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 288
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    return-void
.end method

.method private blockClear(III)V
    .locals 1

    .line 1929
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    return-void
.end method

.method private blockClear(IIII)V
    .locals 8

    .line 1933
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private collectOSCArgs(I)V
    .locals 2

    .line 2030
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2032
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 2034
    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0
.end method

.method private continueSequence(I)V
    .locals 1

    .line 1202
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    return-void
.end method

.method private doCsi(I)V
    .locals 8

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x24

    if-eq p1, v0, :cond_18

    const/16 v0, 0x27

    if-eq p1, v0, :cond_17

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_16

    const/16 v0, 0x50

    if-eq p1, v0, :cond_15

    const/16 v0, 0x58

    if-eq p1, v0, :cond_14

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_12

    const/16 v0, 0x53

    if-eq p1, v0, :cond_11

    const/16 v0, 0x54

    if-eq p1, v0, :cond_f

    const/16 v0, 0x60

    if-eq p1, v0, :cond_e

    const/16 v0, 0x61

    if-eq p1, v0, :cond_d

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 1642
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1342
    :pswitch_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1339
    :pswitch_1
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1639
    :pswitch_2
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1441
    :pswitch_3
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1442
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v2

    .line 1443
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v4, v0, v7

    .line 1445
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v2, v6, v7

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1446
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v0, v4

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto :goto_0

    .line 1432
    :pswitch_4
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v5, v0, v2

    .line 1433
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1435
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v4, v5, v7

    add-int v6, v2, v7

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1436
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto :goto_0

    .line 1414
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    .line 1425
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0

    .line 1422
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1428
    :goto_1
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto :goto_0

    .line 1419
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_1

    .line 1416
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_1

    .line 1394
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_4

    .line 1408
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1405
    :cond_4
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1411
    :goto_2
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_0

    .line 1400
    :cond_5
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1401
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_2

    .line 1396
    :cond_6
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1397
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto :goto_2

    .line 1390
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_0

    .line 1383
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_0

    .line 1380
    :pswitch_9
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1377
    :pswitch_a
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1374
    :pswitch_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_0

    .line 1367
    :pswitch_c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_0

    .line 1364
    :pswitch_d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_0

    .line 1355
    :pswitch_e
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1356
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int v3, v0, v1

    .line 1357
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1359
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v3, v7

    add-int v5, v1, v7

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1360
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v0, v1, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1503
    :pswitch_f
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1506
    :pswitch_10
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1540
    :pswitch_11
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_0

    .line 1525
    :pswitch_12
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 1530
    :goto_3
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v2, :cond_0

    .line 1531
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1527
    :cond_7
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v1, v0, v2

    goto/16 :goto_0

    .line 1387
    :pswitch_13
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1521
    :pswitch_14
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1518
    :pswitch_15
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_0

    .line 1515
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1550
    :pswitch_17
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[%d;%dR"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1553
    :cond_8
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    goto/16 :goto_0

    .line 1546
    :pswitch_18
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_0

    .line 1543
    :pswitch_19
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_0

    .line 1636
    :pswitch_1a
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_0

    .line 1593
    :pswitch_1b
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_b

    const/16 v2, 0xd

    if-eq v0, v2, :cond_a

    const/16 v2, 0xe

    if-eq v0, v2, :cond_9

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    .line 1605
    :pswitch_1c
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[8;%d;%dt"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1628
    :pswitch_1d
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1621
    :pswitch_1e
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1615
    :pswitch_1f
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]l\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1612
    :pswitch_20
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1609
    :pswitch_21
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[9;%d;%dt"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1602
    :cond_9
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[4;%d;%dt"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    mul-int/lit8 v6, v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    mul-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1598
    :cond_a
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[3;0;0t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1595
    :cond_b
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[1t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1581
    :pswitch_22
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1583
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1584
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1586
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1589
    :cond_c
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_0

    .line 1574
    :pswitch_23
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 1575
    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1577
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1371
    :cond_d
    :pswitch_24
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_0

    .line 1509
    :cond_e
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    goto/16 :goto_0

    .line 1471
    :cond_f
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_10

    .line 1476
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1477
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v4, v2, v3

    .line 1478
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1479
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v7

    add-int v6, v2, v7

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1480
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_0

    .line 1483
    :cond_10
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    goto/16 :goto_0

    .line 1465
    :cond_11
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_0

    .line 1467
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1491
    :cond_12
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1492
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1493
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_19

    .line 1494
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_13

    .line 1496
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1500
    :goto_6
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1496
    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1487
    :cond_14
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1488
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto/16 :goto_0

    .line 1456
    :cond_15
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1457
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1458
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v3, v0, v7

    .line 1460
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v1, v5, v7

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1461
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v0, v1, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1351
    :cond_16
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1345
    :cond_17
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1348
    :cond_18
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_24
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6c
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_23
        :pswitch_22
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    .line 1553
    :array_0
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data

    .line 1593
    :pswitch_data_5
    .packed-switch 0x12
        :pswitch_1c
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method private doCsiBiggerThan(I)V
    .locals 3

    const/4 v2, -0x1

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    .line 1181
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    .line 1119
    :goto_0
    return-void

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "termux"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[>41;320;0c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doCsiQuestionMark(I)V
    .locals 12

    const/16 v2, 0x4b

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/16 v0, 0x24

    if-eq p1, v0, :cond_16

    const/16 v0, 0x68

    if-eq p1, v0, :cond_13

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_13

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_11

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_6

    const/16 v0, 0x72

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    .line 1005
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v5, v2

    if-lt v0, v5, :cond_2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_2
    move v0, v1

    .line 987
    :goto_1
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v2, v0

    .line 989
    invoke-static {v5}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring request to save/recall decset bit="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "termux"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 991
    :cond_3
    const/16 v6, 0x73

    if-ne p1, v6, :cond_4

    .line 994
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_2

    .line 996
    :cond_4
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {p0, v2, v5}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    .line 929
    :cond_6
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-ne p1, v2, :cond_8

    move v0, v3

    .line 936
    :goto_4
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v3, :cond_c

    if-eq v2, v5, :cond_9

    .line 956
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    move v6, v4

    move v7, v4

    move v8, v4

    move v3, v4

    .line 959
    :goto_5
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    move v2, v3

    :goto_6
    if-ge v2, v7, :cond_0

    move v1, v6

    :goto_7
    if-ge v1, v8, :cond_10

    .line 962
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, v2, v1}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7

    .line 963
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v3, 0x20

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move v0, v1

    .line 929
    goto :goto_4

    .line 956
    :cond_9
    if-eqz v0, :cond_a

    .line 951
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 952
    :goto_8
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eqz v0, :cond_b

    .line 953
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move v3, v0

    move v5, v2

    .line 947
    :goto_9
    add-int/lit8 v0, v3, 0x1

    move v6, v1

    move v7, v0

    move v8, v4

    move v3, v5

    goto :goto_5

    :cond_a
    move v2, v1

    .line 951
    goto :goto_8

    .line 953
    :cond_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v6, v1

    move v7, v0

    move v8, v4

    move v3, v2

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 945
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 946
    :goto_a
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 947
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v4, v3, 0x1

    move v3, v2

    move v5, v0

    goto :goto_9

    :cond_d
    move v0, v1

    .line 945
    goto :goto_a

    .line 938
    :cond_e
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 939
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 940
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eqz v0, :cond_f

    add-int/lit8 v4, v5, 0x1

    move v6, v1

    move v7, v4

    move v8, v2

    move v3, v5

    goto :goto_5

    .line 941
    :cond_f
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v6, v1

    move v7, v4

    move v8, v2

    move v3, v5

    goto :goto_5

    .line 963
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 974
    :cond_11
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_12

    .line 980
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_0

    .line 977
    :cond_12
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\u001b[?%d;%d;1R"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 969
    :cond_13
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v4, v2

    if-lt v0, v4, :cond_14

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_14
    move v0, v1

    .line 970
    :goto_b
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v2, :cond_0

    const/16 v2, 0x68

    if-ne p1, v2, :cond_15

    move v2, v3

    .line 971
    :goto_c
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v4, v4, v0

    invoke-virtual {p0, v2, v4}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    move v2, v1

    .line 970
    goto :goto_c

    .line 1002
    :cond_16
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0
.end method

.method private doDeviceControl(I)V
    .locals 13

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x2000

    if-le v0, v2, :cond_0

    .line 909
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 910
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 903
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 913
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    const-string v2, "$q"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 810
    const-string v1, "$q\"p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 813
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001bP1$r64;1\"p\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 903
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto :goto_0

    .line 815
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized DECRQSS string: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto :goto_1

    .line 817
    :cond_4
    const-string v2, "+q"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_2

    aget-object v8, v6, v2

    .line 856
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 858
    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 859
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-char v9, v9

    .line 860
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 862
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 864
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_6
    const/4 v0, -0x1

    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 874
    invoke-direct {p0, v5}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 875
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v3

    .line 874
    invoke-static {v9, v0, v3}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 878
    :goto_5
    if-nez v3, :cond_8

    .line 879
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const-string v0, "%1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "&8"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled termcap/terminfo name: \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "termux"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_7
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\u001bP0+r"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u001b\\"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 896
    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 864
    :sswitch_0
    const-string v0, "name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_1
    const-string v0, "TN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_4

    :sswitch_2
    const-string v0, "Co"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    goto :goto_4

    :sswitch_3
    const-string v0, "colors"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_4

    .line 872
    :pswitch_0
    const-string v0, "xterm"

    move-object v3, v0

    goto :goto_5

    .line 868
    :pswitch_1
    const-string v0, "256"

    move-object v3, v0

    goto :goto_5

    .line 889
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 890
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_9

    .line 891
    const-string v10, "%02X"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 893
    :cond_9
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "\u001bP1+r"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\u001b\\"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 896
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid device termcap/terminfo name of odd length: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "termux"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c14290 -> :sswitch_3
        0x88c -> :sswitch_2
        0xa7a -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doEsc(I)V
    .locals 10

    const/4 v1, 0x4

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_e

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x48

    if-eq p1, v0, :cond_d

    const/16 v0, 0x50

    if-eq p1, v0, :cond_c

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_b

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_a

    const/16 v0, 0x63

    if-eq p1, v0, :cond_9

    const/16 v0, 0x28

    if-eq p1, v0, :cond_8

    const/16 v0, 0x29

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1302
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1245
    :pswitch_0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v1, v3, -0x1

    if-ge v0, v1, :cond_1

    .line 1246
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1248
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v4, v0, v2

    .line 1249
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v1, v5, 0x1

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1250
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v3, v5, v7}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v6

    move v3, v8

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_0

    .line 1242
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto :goto_0

    .line 1239
    :pswitch_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto :goto_0

    .line 1230
    :pswitch_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v0, v1, :cond_2

    .line 1231
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1233
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v4, v0, v2

    .line 1234
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v1, 0x1

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1235
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v3, v5, v7}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v6

    move v3, v8

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_0

    .line 1266
    :pswitch_4
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v7, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_0

    .line 1262
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1263
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_0

    .line 1259
    :pswitch_6
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_0

    .line 1274
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v0, v2, :cond_4

    .line 1275
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v6, v2, 0x1

    sub-int v4, v1, v6

    move v1, v7

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1276
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v7, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1278
    :cond_4
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_0

    .line 1299
    :cond_5
    invoke-direct {p0, v9, v7}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_0

    .line 1292
    :cond_6
    invoke-direct {p0, v9, v8}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_0

    .line 1227
    :cond_7
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1224
    :cond_8
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1254
    :cond_9
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1255
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v7, v7, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1256
    invoke-direct {p0, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1295
    :cond_a
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1296
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1289
    :cond_b
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1285
    :cond_c
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1286
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1269
    :cond_d
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v8, v0, v1

    goto/16 :goto_0

    .line 1221
    :cond_e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    :cond_f
    move v0, v7

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private doEscPound(I)V
    .locals 8

    const/4 v1, 0x0

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    .line 1212
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1209
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_0
.end method

.method private doLinefeed()V
    .locals 2

    .line 1193
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    .line 1194
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-lt v0, v1, :cond_0

    .line 1195
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1196
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    .line 1198
    :cond_0
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    return-void
.end method

.method private doOsc(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    .line 1763
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1757
    :goto_0
    return-void

    .line 1760
    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1757
    :cond_1
    const-string v0, "\u0007"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doOscEsc(I)V
    .locals 1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    .line 1776
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1777
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1778
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1771
    :goto_0
    return-void

    :cond_0
    const-string v0, "\u001b\\"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .locals 16

    .line 1785
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1788
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1796
    :goto_1
    if-eqz v1, :cond_18

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    const/16 v2, 0x34

    if-eq v1, v2, :cond_d

    const/16 v2, 0x68

    if-eq v1, v2, :cond_9

    const/16 v2, 0x77

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1922
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 1925
    :cond_0
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    :goto_3
    return-void

    .line 1791
    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0xa

    goto :goto_4

    .line 1796
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_3

    :cond_4
    const-string v2, ""

    move-object v6, v2

    goto :goto_1

    .line 1917
    :pswitch_0
    add-int/lit16 v2, v1, 0xf6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1851
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_7

    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_5

    .line 1852
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_6

    .line 1854
    :cond_5
    :try_start_0
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1855
    const-string v8, "?"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1857
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v7, v7, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v7, v7, v2

    .line 1858
    const/high16 v8, 0xff0000

    and-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x10

    const v9, 0xffff

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    .line 1859
    const v9, 0xff00

    and-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x8

    const v10, 0xffff

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    .line 1860
    and-int/lit16 v7, v7, 0xff

    const v10, 0xffff

    mul-int/2addr v7, v10

    div-int/lit16 v7, v7, 0xff

    .line 1861
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u001b]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ";rgb:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v13, "%04x"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%04x"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v14

    invoke-static {v8, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1862
    const-string v9, "%04x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v13

    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1861
    invoke-virtual {v10, v7}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1865
    :goto_7
    add-int/lit8 v2, v2, 0x1

    if-nez v5, :cond_0

    const/16 v5, 0x102

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 1868
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v3

    if-ge v5, v3, :cond_0

    move v3, v5

    move v4, v5

    .line 1852
    :cond_6
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 1851
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1864
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v8, v2, v7}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v7}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 1925
    :catch_0
    move-exception v5

    goto :goto_8

    .line 1916
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit16 v1, v1, 0x92

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_2

    .line 1891
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 1893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1897
    :goto_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_c

    const/4 v3, 0x1

    :goto_a
    if-nez v3, :cond_b

    .line 1898
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_19

    .line 1900
    :cond_b
    :try_start_5
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1901
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v5, v4}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    move v3, v2

    :goto_b
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_9

    .line 1897
    :cond_c
    const/4 v3, 0x0

    goto :goto_a

    .line 1925
    :catch_1
    move-exception v3

    move v3, v2

    goto :goto_b

    .line 1878
    :cond_d
    const-string v1, ";"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1880
    :try_start_6
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->clipboardText(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 1883
    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OSC Manipulate selection, invalid string \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "termux"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x1

    .line 1818
    :goto_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_10

    const/4 v4, 0x1

    move v5, v4

    :goto_d
    if-eqz v5, :cond_11

    const/16 v4, 0x3b

    .line 1819
    :goto_e
    const/16 v7, 0x3b

    if-ne v4, v7, :cond_15

    if-gez v3, :cond_12

    add-int/lit8 v3, v1, 0x1

    .line 1825
    :cond_f
    :goto_f
    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1818
    :cond_10
    const/4 v4, 0x0

    move v5, v4

    goto :goto_d

    .line 1819
    :cond_11
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_e

    :cond_12
    if-ltz v2, :cond_13

    const/16 v7, 0xff

    if-le v2, v7, :cond_14

    .line 1825
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3

    .line 1828
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    const/4 v3, -0x1

    const/4 v2, -0x1

    goto :goto_f

    .line 1825
    :cond_15
    if-gez v3, :cond_f

    if-gez v3, :cond_17

    const/16 v7, 0x30

    if-lt v4, v7, :cond_17

    const/16 v7, 0x39

    if-gt v4, v7, :cond_17

    if-gez v2, :cond_16

    const/4 v2, 0x0

    :goto_10
    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    goto :goto_f

    :cond_16
    mul-int/lit8 v2, v2, 0xa

    goto :goto_10

    .line 1839
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3

    .line 1805
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1925
    :catch_3
    move-exception v5

    goto/16 :goto_8

    :catch_4
    move-exception v3

    move v3, v5

    goto/16 :goto_8

    .line 1861
    :catch_5
    move-exception v5

    goto/16 :goto_8

    :cond_19
    move v3, v2

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private doSetMode(Z)V
    .locals 2

    .line 1942
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 1956
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 1945
    :cond_0
    :goto_0
    return-void

    .line 1948
    :cond_1
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 1945
    :cond_2
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    goto :goto_0
.end method

.method private emitCodePoint(I)V
    .locals 10

    .line 2093
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v0, :cond_0

    :goto_0
    const/16 v0, 0x30

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    .line 2198
    :cond_0
    :goto_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v8

    .line 2199
    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v9

    .line 2200
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/4 v7, 0x0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_2
    if-eqz v8, :cond_a

    if-eqz v0, :cond_3

    .line 2203
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq v9, v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    if-ne v9, v0, :cond_3

    .line 2204
    :cond_2
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 2205
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2206
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ge v0, v1, :cond_9

    .line 2207
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2218
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v0, :cond_4

    if-lez v9, :cond_4

    .line 2220
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v5, v1, v9

    .line 2221
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v5, v3, :cond_4

    .line 2222
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v3, v5

    const/4 v4, 0x1

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    :cond_4
    if-gtz v9, :cond_b

    .line 2225
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    move v1, v0

    .line 2226
    :goto_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    if-eqz v8, :cond_5

    if-lez v9, :cond_5

    .line 2229
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v1, v9

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2231
    :cond_5
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v9

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    :goto_6
    return-void

    .line 2093
    :cond_6
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0xb7

    goto/16 :goto_1

    :pswitch_1
    const/16 p1, 0xa3

    goto/16 :goto_1

    :pswitch_2
    const/16 p1, 0x2260

    goto/16 :goto_1

    :pswitch_3
    const/16 p1, 0x3c0

    goto/16 :goto_1

    :pswitch_4
    const/16 p1, 0x2265

    goto/16 :goto_1

    :pswitch_5
    const/16 p1, 0x2264

    goto/16 :goto_1

    :pswitch_6
    const/16 p1, 0x2502

    goto/16 :goto_1

    :pswitch_7
    const/16 p1, 0x252c

    goto/16 :goto_1

    :pswitch_8
    const/16 p1, 0x2534

    goto/16 :goto_1

    :pswitch_9
    const/16 p1, 0x2524

    goto/16 :goto_1

    :pswitch_a
    const/16 p1, 0x251c

    goto/16 :goto_1

    :pswitch_b
    const/16 p1, 0x23bd

    goto/16 :goto_1

    :pswitch_c
    const/16 p1, 0x23bc

    goto/16 :goto_1

    :pswitch_d
    const/16 p1, 0x2500

    goto/16 :goto_1

    :pswitch_e
    const/16 p1, 0x23bb

    goto/16 :goto_1

    :pswitch_f
    const/16 p1, 0x23ba

    goto/16 :goto_1

    :pswitch_10
    const/16 p1, 0x253c

    goto/16 :goto_1

    :pswitch_11
    const/16 p1, 0x2514

    goto/16 :goto_1

    :pswitch_12
    const/16 p1, 0x250c

    goto/16 :goto_1

    :pswitch_13
    const/16 p1, 0x2510

    goto/16 :goto_1

    :pswitch_14
    const/16 p1, 0x2518

    goto/16 :goto_1

    :pswitch_15
    const/16 p1, 0x240b

    goto/16 :goto_1

    :pswitch_16
    const/16 p1, 0xa

    goto/16 :goto_1

    :pswitch_17
    const/16 p1, 0xb1

    goto/16 :goto_1

    :pswitch_18
    const/16 p1, 0xb0

    goto/16 :goto_1

    :pswitch_19
    const/16 p1, 0x240a

    goto/16 :goto_1

    :pswitch_1a
    const/16 p1, 0xd

    goto/16 :goto_1

    :pswitch_1b
    const/16 p1, 0x240c

    goto/16 :goto_1

    :pswitch_1c
    const/16 p1, 0x2409

    goto/16 :goto_1

    :pswitch_1d
    const/16 p1, 0x2592

    goto/16 :goto_1

    :pswitch_1e
    const/16 p1, 0x25c6

    goto/16 :goto_1

    :pswitch_1f
    const/16 p1, 0x20

    goto/16 :goto_1

    :cond_7
    const/16 p1, 0x2588

    goto/16 :goto_1

    .line 2200
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2209
    :cond_9
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto/16 :goto_3

    :cond_a
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v9, v0, :cond_3

    goto/16 :goto_6

    .line 2225
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4

    :cond_c
    move v0, v7

    goto/16 :goto_5

    .line 2093
    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishSequence()V
    .locals 1

    .line 2084
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .locals 0

    .line 2080
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private getArg(IIZ)I
    .locals 1

    .line 2022
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v0, v0, p1

    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private getArg0(I)I
    .locals 2

    .line 2014
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .locals 1

    const/4 v0, 0x1

    .line 2018
    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getStyle()J
    .locals 3

    .line 1937
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private isDecsetInternalBitSet(I)Z
    .locals 1

    .line 230
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-eq p0, v0, :cond_b

    const/16 v0, 0x42

    if-eq p0, v0, :cond_a

    const/16 v0, 0x45

    if-eq p0, v0, :cond_9

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/16 v0, 0x400

    goto :goto_0

    :cond_5
    const/16 v0, 0x200

    goto :goto_0

    :cond_6
    const/16 v0, 0x100

    goto :goto_0

    :cond_7
    const/16 v0, 0x80

    goto :goto_0

    :cond_8
    const/16 v0, 0x40

    goto :goto_0

    :cond_9
    const/16 v0, 0x800

    goto :goto_0

    :cond_a
    const/16 v0, 0x20

    goto :goto_0

    :cond_b
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private nextTabStop(I)I
    .locals 2

    .line 919
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 921
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private parseArg(I)V
    .locals 4

    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    .line 1991
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 1992
    aget v3, v2, v1

    add-int/lit8 v0, p1, -0x30

    if-ltz v3, :cond_0

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 2000
    :cond_0
    aput v0, v2, v1

    .line 2002
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 2009
    :goto_0
    return-void

    .line 2002
    :cond_2
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_4

    .line 2004
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2005
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2007
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 2009
    :cond_4
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0
.end method

.method private processByte(B)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const v3, 0xfffd

    const/4 v6, 0x0

    .line 404
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-lez v0, :cond_b

    and-int/lit16 v2, p1, 0xc0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_a

    .line 407
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v2, v4

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 408
    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez v0, :cond_7

    if-ne v5, v7, :cond_0

    const/16 v0, 0x1f

    :goto_0
    int-to-byte v0, v0

    .line 410
    aget-byte v2, v2, v6

    and-int/2addr v2, v0

    move v0, v1

    .line 411
    :goto_1
    iget-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ge v0, v4, :cond_2

    .line 412
    shl-int/lit8 v2, v2, 0x6

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v4, v4, v0

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    :cond_0
    if-ne v5, v8, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    .line 412
    :cond_2
    const/16 v0, 0x7f

    if-gt v2, v0, :cond_3

    if-gt v4, v1, :cond_5

    :cond_3
    const/16 v0, 0x7ff

    if-ge v2, v0, :cond_4

    if-gt v4, v7, :cond_5

    :cond_4
    const v0, 0xffff

    if-ge v2, v0, :cond_6

    if-le v4, v8, :cond_6

    :cond_5
    move v2, v3

    .line 419
    :cond_6
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    const/16 v0, 0x80

    if-lt v2, v0, :cond_8

    const/16 v0, 0x9f

    if-gt v2, v0, :cond_8

    .line 424
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 425
    and-int/lit8 v0, v2, 0x7f

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 463
    :cond_7
    :goto_2
    return-void

    .line 427
    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x13

    if-eq v0, v1, :cond_9

    move v3, v2

    .line 432
    :cond_9
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_2

    .line 437
    :cond_a
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 438
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 446
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_2

    :cond_b
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_c

    .line 450
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_2

    :cond_c
    and-int/lit16 v0, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_d

    .line 453
    iput-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 463
    :goto_3
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    goto :goto_2

    .line 453
    :cond_d
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_e

    .line 455
    iput-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_3

    :cond_e
    and-int/lit16 v0, p1, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_f

    .line 457
    iput-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_3

    .line 460
    :cond_f
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_2
.end method

.method private resizeScreen()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 346
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v2, 0x2

    new-array v5, v2, [I

    aput v0, v5, v9

    aput v1, v5, v10

    .line 347
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->resize(III[IJZ)V

    .line 349
    aget v0, v5, v9

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 350
    aget v0, v5, v10

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    goto :goto_0
.end method

.method private restoreCursor()V
    .locals 3

    .line 1323
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1324
    :goto_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    invoke-direct {p0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1325
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 1326
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1327
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1329
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/lit8 v1, v1, -0xd

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 1330
    iget-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 1331
    iget-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 1332
    iget-boolean v0, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0
.end method

.method private saveCursor()V
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1310
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1311
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1312
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    .line 1313
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    .line 1314
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    .line 1315
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    .line 1316
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    .line 1317
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    .line 1318
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0
.end method

.method private scrollDownOneLine()V
    .locals 8

    .line 1977
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 1978
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v1, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, v2, :cond_1

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v2, v6, 0x1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1982
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    const/16 v5, 0x20

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_0
    return-void

    .line 1984
    :cond_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_0
.end method

.method private selectGraphicRendition()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x26

    const/4 v3, 0x0

    .line 1649
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_0
    move v0, v3

    .line 1650
    :goto_0
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v5, :cond_22

    .line 1651
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v1, v6, v0

    if-gez v1, :cond_23

    if-lez v5, :cond_2

    .line 1735
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1651
    :goto_2
    if-nez v4, :cond_3

    .line 1660
    const/16 v1, 0x100

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1661
    const/16 v1, 0x101

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1662
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v4, v1, :cond_4

    .line 1664
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_4
    if-ne v4, v9, :cond_5

    .line 1666
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne v4, v1, :cond_6

    .line 1668
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    if-ne v4, v1, :cond_7

    .line 1670
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_7
    if-ne v4, v10, :cond_8

    .line 1672
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_8
    const/4 v1, 0x7

    if-ne v4, v1, :cond_9

    .line 1674
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_9
    const/16 v1, 0x8

    if-ne v4, v1, :cond_a

    .line 1676
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_a
    const/16 v1, 0x9

    if-ne v4, v1, :cond_b

    .line 1678
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_b
    const/16 v1, 0xa

    if-eq v4, v1, :cond_1

    const/16 v1, 0xb

    if-eq v4, v1, :cond_1

    const/16 v1, 0x16

    if-ne v4, v1, :cond_c

    .line 1684
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v1, v1, -0x102

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_c
    const/16 v1, 0x17

    if-ne v4, v1, :cond_d

    .line 1686
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    :cond_d
    const/16 v1, 0x18

    if-ne v4, v1, :cond_e

    .line 1688
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x19

    if-ne v4, v1, :cond_f

    .line 1690
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x1b

    if-ne v4, v1, :cond_10

    .line 1692
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x1c

    if-ne v4, v1, :cond_11

    .line 1694
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x1d

    if-ne v4, v1, :cond_12

    .line 1696
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x1e

    if-lt v4, v1, :cond_13

    const/16 v1, 0x25

    if-gt v4, v1, :cond_13

    .line 1698
    add-int/lit8 v1, v4, -0x1e

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    :cond_13
    if-eq v4, v7, :cond_14

    const/16 v1, 0x30

    if-ne v4, v1, :cond_15

    .line 1746
    :cond_14
    add-int/lit8 v2, v0, 0x2

    if-gt v2, v5, :cond_1

    .line 1704
    add-int/lit8 v1, v0, 0x1

    aget v1, v6, v1

    if-ne v1, v9, :cond_1e

    add-int/lit8 v1, v0, 0x4

    if-le v1, v5, :cond_1a

    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too few CSI"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";2 RGB arguments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "termux"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1698
    :cond_15
    const/16 v1, 0x27

    if-ne v4, v1, :cond_16

    .line 1738
    const/16 v1, 0x100

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    :cond_16
    const/16 v1, 0x28

    if-lt v4, v1, :cond_17

    const/16 v1, 0x2f

    if-gt v4, v1, :cond_17

    .line 1740
    add-int/lit8 v1, v4, -0x28

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1

    :cond_17
    const/16 v1, 0x31

    if-ne v4, v1, :cond_18

    .line 1742
    const/16 v1, 0x101

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x5a

    if-lt v4, v1, :cond_19

    const/16 v1, 0x61

    if-gt v4, v1, :cond_19

    .line 1744
    add-int/lit8 v1, v4, -0x52

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    :cond_19
    const/16 v1, 0x64

    if-lt v4, v1, :cond_1

    const/16 v1, 0x6b

    if-gt v4, v1, :cond_1

    .line 1746
    add-int/lit8 v1, v4, -0x5c

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1

    .line 1709
    :cond_1a
    aget v2, v6, v2

    add-int/lit8 v0, v0, 0x3

    aget v0, v6, v0

    aget v5, v6, v1

    if-ltz v2, :cond_1b

    if-ltz v0, :cond_1b

    if-ltz v5, :cond_1b

    if-gt v2, v8, :cond_1b

    if-gt v0, v8, :cond_1b

    if-le v5, v8, :cond_1c

    .line 1711
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid RGB: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    :goto_3
    move v0, v1

    goto/16 :goto_1

    .line 1709
    :cond_1c
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v2, v2, 0x10

    const/high16 v6, -0x1000000

    or-int/2addr v2, v6

    or-int/2addr v0, v2

    or-int/2addr v0, v5

    if-ne v4, v7, :cond_1d

    .line 1715
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_3

    .line 1717
    :cond_1d
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_3

    .line 1711
    :cond_1e
    if-ne v1, v10, :cond_21

    .line 1723
    aget v0, v6, v2

    if-ltz v0, :cond_1f

    const/16 v1, 0x103

    if-ge v0, v1, :cond_1f

    if-ne v4, v7, :cond_20

    .line 1727
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    :cond_1f
    :goto_4
    move v0, v2

    .line 1729
    goto/16 :goto_1

    :cond_20
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_4

    .line 1735
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ISO-8613-3 SGR first argument: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_22
    return-void

    :cond_23
    move v4, v1

    goto/16 :goto_2
.end method

.method private setCursorCol(I)V
    .locals 1

    .line 2240
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .locals 1

    .line 2246
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    return-void
.end method

.method private setCursorPosition(II)V
    .locals 5

    const/4 v0, 0x0

    .line 1966
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1967
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    move v3, v1

    :goto_0
    if-eqz v4, :cond_1

    .line 1968
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    move v2, v1

    :goto_1
    if-eqz v4, :cond_3

    .line 1969
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    move v1, v0

    :goto_2
    if-eqz v4, :cond_2

    .line 1970
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1971
    :goto_3
    add-int v4, p2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1972
    add-int v3, p1, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1973
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    return-void

    :cond_0
    move v3, v0

    .line 1967
    goto :goto_0

    .line 1968
    :cond_1
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v2, v1

    goto :goto_1

    .line 1970
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private setCursorRow(I)V
    .locals 1

    .line 2235
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorRowCol(II)V
    .locals 2

    const/4 v1, 0x0

    .line 2251
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2252
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2253
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .locals 3

    const/16 v2, 0x80

    const/16 v1, 0x40

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_1

    .line 237
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 239
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 243
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 245
    :goto_1
    return-void

    .line 237
    :cond_1
    if-ne p1, v2, :cond_0

    .line 239
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 245
    :cond_2
    xor-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_1
.end method

.method private setDefaultTabStops()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    .line 388
    :goto_0
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v2, :cond_1

    .line 389
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2

    .line 2308
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2309
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2310
    invoke-static {v0, p1}, Lcom/termux/terminal/TerminalEmulator$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2311
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .locals 2

    .line 1187
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1188
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1189
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private unimplementedSequence(I)V
    .locals 5

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unimplemented sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2040
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownParameter(I)V
    .locals 2

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2050
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownSequence(I)V
    .locals 2

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2045
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 400
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScrollCounter()V
    .locals 1

    .line 2261
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .locals 8

    const/4 v1, 0x0

    .line 1010
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1012
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_0
    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    .line 1101
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 1093
    :cond_1
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 1029
    :sswitch_1
    if-nez p1, :cond_1

    .line 1049
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1050
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_0

    .line 1067
    :pswitch_1
    if-eqz p1, :cond_1

    .line 1036
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_0

    .line 1022
    :pswitch_2
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1023
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1024
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1026
    const/16 v0, 0x800

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1028
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1029
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_0

    .line 1101
    :pswitch_3
    if-eqz p1, :cond_2

    .line 1065
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto :goto_0

    .line 1067
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto :goto_0

    .line 1050
    :pswitch_4
    :sswitch_2
    if-eqz p1, :cond_7

    .line 1074
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 1075
    :goto_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v0, v2, :cond_1

    .line 1076
    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v2, v3, :cond_3

    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v2, v3, :cond_8

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 1077
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1078
    :cond_4
    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-nez p1, :cond_5

    .line 1080
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1081
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1082
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    if-eqz v2, :cond_5

    .line 1085
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1086
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_5
    if-eqz v2, :cond_6

    .line 1090
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1092
    :cond_6
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v2, :cond_1

    .line 1093
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_0

    .line 1074
    :cond_7
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_2

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x19 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_2
        0x42 -> :sswitch_0
        0x45 -> :sswitch_1
        0x3f7 -> :sswitch_0
        0x40a -> :sswitch_0
        0x7d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x417
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCursorCol()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/termux/terminal/TerminalBuffer;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .locals 1

    .line 2257
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 1

    .line 2298
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2303
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorKeysApplicationMode()Z
    .locals 1

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .locals 1

    .line 375
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .locals 1

    .line 384
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReverseVideo()Z
    .locals 1

    .line 367
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowingCursor()Z
    .locals 1

    .line 371
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .locals 4

    .line 2318
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2320
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2321
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v3, "\u001b[200~"

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2322
    :cond_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 2323
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[201~"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .locals 19

    if-eqz p1, :cond_1

    const/16 v2, 0x18

    move/from16 v0, p1

    if-eq v0, v2, :cond_35

    const/16 v2, 0x1a

    move/from16 v0, p1

    if-eq v0, v2, :cond_35

    const/16 v2, 0x1b

    move/from16 v0, p1

    if-eq v0, v2, :cond_33

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 533
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 534
    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    packed-switch v3, :pswitch_data_1

    .line 794
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 797
    :cond_0
    :goto_0
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 523
    :cond_1
    :goto_1
    return-void

    .line 511
    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1

    .line 508
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1

    .line 505
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1

    .line 502
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto :goto_1

    .line 497
    :pswitch_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_1

    .line 478
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v2, v3, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->clearLineWrap(I)V

    .line 483
    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_1

    .line 486
    :cond_2
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1

    .line 472
    :pswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 473
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto :goto_1

    .line 475
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    goto :goto_1

    .line 794
    :pswitch_9
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_0

    .line 557
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    :pswitch_a
    const/16 v2, 0x7d

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 708
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int v5, v2, v3

    .line 709
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x0

    sub-int/2addr v5, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v7, v3, v9

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x7e

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v3

    .line 715
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v5, v2, v9

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v3, v7, v9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 718
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, v5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_0

    .line 720
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v2, 0x71

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 692
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 695
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v2, v2, -0x81

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_0

    .line 692
    :cond_8
    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 698
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_0

    .line 700
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 703
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 785
    :pswitch_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    const/16 v4, 0x78

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    if-ltz v3, :cond_c

    const/4 v4, 0x2

    if-gt v3, v4, :cond_c

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 788
    :goto_2
    const/16 v3, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_0

    .line 785
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .line 790
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 757
    :pswitch_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    const/16 v3, 0x71

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    const/16 v2, 0x74

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x75

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    .line 781
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    :cond_d
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    .line 764
    :pswitch_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_0

    .line 772
    :pswitch_f
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_0

    .line 768
    :pswitch_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_0

    .line 764
    :pswitch_11
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 737
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    const/16 v2, 0x2f

    if-eq v3, v2, :cond_e

    const/16 v2, 0x417

    if-eq v3, v2, :cond_e

    const/16 v2, 0x419

    if-ne v3, v2, :cond_10

    .line 741
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v4, :cond_11

    .line 745
    :cond_f
    const/4 v2, 0x1

    .line 751
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\u001b[?%d;%d$y"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 743
    :cond_10
    invoke-static {v3}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_12

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_11
    const/4 v2, 0x2

    goto :goto_3

    .line 747
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got DECRQM for unrecognized private DEC mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "termux"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3

    .line 753
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    goto/16 :goto_0

    .line 564
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    goto/16 :goto_0

    .line 729
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    goto/16 :goto_0

    .line 726
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_0

    .line 567
    :pswitch_16
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 568
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    move v14, v2

    :goto_4
    if-eqz v3, :cond_15

    .line 569
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    move v4, v2

    :goto_5
    if-eqz v3, :cond_16

    .line 570
    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :goto_6
    if-eqz v3, :cond_17

    .line 571
    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    :goto_7
    const/16 v2, 0x72

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const/16 v2, 0x74

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const/16 v2, 0x76

    move/from16 v0, p1

    if-eq v0, v2, :cond_23

    const/16 v2, 0x78

    move/from16 v0, p1

    if-eq v0, v2, :cond_18

    const/16 v2, 0x7a

    move/from16 v0, p1

    if-eq v0, v2, :cond_18

    const/16 v2, 0x7b

    move/from16 v0, p1

    if-eq v0, v2, :cond_18

    .line 686
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 568
    :cond_14
    const/4 v2, 0x0

    move v14, v2

    goto :goto_4

    .line 569
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v4, v2

    goto :goto_5

    .line 570
    :cond_16
    const/4 v7, 0x0

    goto :goto_6

    .line 571
    :cond_17
    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    goto :goto_7

    .line 686
    :cond_18
    const/16 v2, 0x78

    move/from16 v0, p1

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x1

    move v3, v2

    :goto_8
    const/16 v2, 0x7b

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    const/4 v2, 0x1

    move v11, v2

    :goto_9
    if-eqz v3, :cond_1f

    if-eqz v11, :cond_1f

    const/4 v2, 0x1

    move v10, v2

    :goto_a
    if-eqz v3, :cond_20

    const/16 v5, 0x20

    const/4 v2, 0x0

    .line 607
    :goto_b
    const/16 v3, 0x20

    if-lt v5, v3, :cond_19

    const/16 v3, 0x7e

    if-le v5, v3, :cond_1a

    :cond_19
    const/16 v3, 0xa0

    if-lt v5, v3, :cond_0

    const/16 v3, 0xff

    if-gt v5, v3, :cond_0

    .line 613
    :cond_1a
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    add-int/2addr v3, v14

    add-int/lit8 v6, v4, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 614
    add-int/lit8 v6, v2, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v12}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v7

    add-int/lit8 v9, v8, 0x1

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 615
    add-int/lit8 v6, v2, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v13}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v14

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 616
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v8

    add-int/lit8 v4, v3, -0x1

    :goto_c
    if-ge v4, v13, :cond_0

    add-int/lit8 v3, v12, -0x1

    :goto_d
    if-ge v3, v14, :cond_22

    if-eqz v11, :cond_1b

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v2, v4, v3}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1c

    .line 621
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v10, :cond_21

    invoke-virtual {v2, v4, v3}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v6

    :goto_e
    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 686
    :cond_1d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_8

    :cond_1e
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_9

    :cond_1f
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_a

    .line 607
    :cond_20
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    const/4 v2, 0x1

    goto/16 :goto_b

    :cond_21
    move-wide v6, v8

    .line 621
    goto :goto_e

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 583
    :cond_23
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 584
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 586
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 587
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 589
    const/4 v6, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v9}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 590
    const/4 v6, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v10}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 592
    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v6, v8

    sub-int/2addr v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 593
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v2, v7

    sub-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    goto/16 :goto_0

    :cond_24
    const/16 v2, 0x74

    move/from16 v0, p1

    if-ne v0, v2, :cond_27

    const/4 v5, 0x1

    .line 630
    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 631
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 632
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 633
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v8, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 634
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v4, v3

    if-lt v2, v4, :cond_25

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_25
    const/4 v2, 0x4

    move v13, v2

    .line 636
    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v13, v2, :cond_0

    .line 639
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v2, 0x1

    if-eq v3, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2d

    const/16 v2, 0x8

    const/4 v4, 0x5

    if-eq v3, v4, :cond_26

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x16

    if-eq v3, v4, :cond_2b

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x18

    if-eq v3, v4, :cond_28

    const/16 v4, 0x19

    if-eq v3, v4, :cond_29

    const/4 v2, 0x0

    :cond_26
    :goto_11
    const/4 v4, 0x1

    move v3, v2

    :goto_12
    if-eqz v5, :cond_30

    if-nez v4, :cond_30

    .line 677
    :goto_13
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_10

    .line 594
    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 639
    :cond_28
    const/4 v2, 0x4

    :cond_29
    :goto_14
    const/4 v4, 0x0

    move v3, v2

    goto :goto_12

    :cond_2a
    const/16 v2, 0x10

    goto :goto_14

    :cond_2b
    const/4 v2, 0x1

    goto :goto_14

    :cond_2c
    const/16 v2, 0x10

    goto :goto_11

    :cond_2d
    const/4 v2, 0x4

    goto :goto_11

    :cond_2e
    const/4 v2, 0x1

    goto :goto_11

    :cond_2f
    const/16 v2, 0x1d

    if-nez v5, :cond_26

    goto :goto_14

    .line 677
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v6, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v6

    add-int v9, v15, v14

    add-int v10, v16, v7

    add-int v11, v17, v14

    add-int v12, v18, v7

    invoke-virtual/range {v2 .. v12}, Lcom/termux/terminal/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    goto :goto_13

    .line 561
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    goto/16 :goto_0

    .line 551
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    goto/16 :goto_0

    :pswitch_19
    const/16 v2, 0x30

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    const/4 v2, 0x1

    .line 548
    :goto_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    goto/16 :goto_0

    .line 551
    :cond_31
    const/4 v2, 0x0

    goto :goto_15

    .line 548
    :pswitch_1a
    const/16 v2, 0x30

    move/from16 v0, p1

    if-ne v0, v2, :cond_32

    const/4 v2, 0x1

    .line 545
    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    goto/16 :goto_0

    .line 548
    :cond_32
    const/4 v2, 0x0

    goto :goto_16

    .line 542
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    goto/16 :goto_0

    .line 539
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    goto/16 :goto_0

    :pswitch_1d
    const/16 v2, 0x20

    move/from16 v0, p1

    if-lt v0, v2, :cond_0

    .line 536
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    goto/16 :goto_0

    .line 523
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_34

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto/16 :goto_1

    .line 529
    :cond_34
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_1

    .line 515
    :cond_35
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-eqz v2, :cond_1

    .line 517
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 518
    const/16 v2, 0x7f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    goto/16 :goto_1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 534
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 781
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    const/16 v5, 0x101

    const/16 v4, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2266
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 2267
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2268
    iput-boolean v3, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2269
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2270
    iput-boolean v3, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2271
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2272
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2273
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2274
    iput-boolean v3, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2275
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v4, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2276
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v5, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v5, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2277
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2279
    iput-boolean v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 2280
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2282
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2283
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2284
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 2286
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2287
    const/16 v0, 0x10

    invoke-direct {p0, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2288
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v2, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2291
    iput-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 2293
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2294
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    return-void
.end method

.method public resize(II)V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 319
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v0, p2, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v1, p1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 319
    :cond_0
    if-lt p1, v2, :cond_3

    if-lt p2, v2, :cond_3

    if-eq v0, p2, :cond_1

    .line 326
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 327
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 328
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 330
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, p1, :cond_2

    .line 332
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 333
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 334
    new-array v2, p1, [Z

    iput-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 335
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 336
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 337
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 339
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    goto :goto_0

    .line 322
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rows="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMouseEvent(IIIZ)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v1, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 303
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    const/16 v0, 0x4d

    if-eqz v2, :cond_3

    .line 306
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u001b[<%d;%d;%d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x6d

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    :goto_2
    if-lt p2, v7, :cond_0

    if-lt p3, v7, :cond_0

    .line 310
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-gt p3, v0, :cond_0

    const/16 v0, 0xdf

    if-gt p2, v0, :cond_0

    const/16 v0, 0xdf

    if-gt p3, v0, :cond_0

    add-int/lit8 v0, p1, 0x20

    int-to-byte v0, v0

    add-int/lit8 v2, p2, 0x20

    int-to-byte v2, v2

    add-int/lit8 v3, p3, 0x20

    int-to-byte v3, v3

    .line 312
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-array v5, v10, [B

    const/16 v6, 0x1b

    aput-byte v6, v5, v8

    const/16 v6, 0x5b

    aput-byte v6, v5, v7

    const/16 v6, 0x4d

    aput-byte v6, v5, v9

    aput-byte v0, v5, v1

    const/4 v0, 0x4

    aput-byte v2, v5, v0

    const/4 v0, 0x5

    aput-byte v3, v5, v0

    invoke-virtual {v4, v5, v8, v10}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    goto :goto_0

    :cond_4
    move p1, v1

    .line 306
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TerminalEmulator[size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margins={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
