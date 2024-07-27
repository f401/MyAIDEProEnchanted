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
    .registers 7

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    new-instance v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

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
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 288
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    return-void
.end method

.method private blockClear(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1929
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    return-void
.end method

.method private blockClear(IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1202
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    return-void
.end method

.method private doCsi(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1337
    packed-switch p1, :pswitch_data_0

    .line 1642
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1339
    :pswitch_1
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1342
    :pswitch_2
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1345
    :pswitch_3
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1348
    :pswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1351
    :pswitch_5
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1355
    :pswitch_6
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

    .line 1358
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v3, v7

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v5, v7

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1360
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v0, v1, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_0

    .line 1364
    :pswitch_7
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto :goto_0

    .line 1367
    :pswitch_8
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto :goto_0

    .line 1371
    :pswitch_9
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto :goto_0

    .line 1374
    :pswitch_a
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_0

    .line 1377
    :pswitch_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1380
    :pswitch_c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1383
    :pswitch_d
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

    .line 1387
    :pswitch_e
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1390
    :pswitch_f
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_0

    .line 1394
    :pswitch_10
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1408
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1396
    :pswitch_11
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1397
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1411
    :goto_1
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_0

    .line 1400
    :pswitch_12
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1401
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_1

    .line 1405
    :pswitch_13
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto :goto_1

    .line 1414
    :pswitch_14
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 1425
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1416
    :pswitch_15
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1428
    :goto_2
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_0

    .line 1419
    :pswitch_16
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_2

    .line 1422
    :pswitch_17
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_2

    .line 1432
    :pswitch_18
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v5, v0, v2

    .line 1433
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1434
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v4, v5, v7

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v6, v5, v7

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1436
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_0

    .line 1441
    :pswitch_19
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

    .line 1444
    sub-int v4, v0, v7

    .line 1445
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, v7

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1446
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v0, v4

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_0

    .line 1456
    :pswitch_1a
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

    .line 1459
    sub-int v3, v0, v7

    .line 1460
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v7

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1461
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v0, v1, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1465
    :pswitch_1b
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1466
    :goto_3
    if-ge v1, v0, :cond_0

    .line 1467
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1471
    :pswitch_1c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_1

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

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int v6, v5, v7

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1480
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_0

    .line 1483
    :cond_1
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    goto/16 :goto_0

    .line 1487
    :pswitch_1d
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

    .line 1491
    :pswitch_1e
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    .line 1492
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1493
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-gez v2, :cond_2

    .line 1500
    :goto_5
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1494
    :cond_2
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    .line 1495
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    .line 1496
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 1493
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1503
    :pswitch_1f
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1506
    :pswitch_20
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1509
    :pswitch_21
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    goto/16 :goto_0

    .line 1515
    :pswitch_22
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1518
    :pswitch_23
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

    .line 1521
    :pswitch_24
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1525
    :pswitch_25
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_26
    goto/16 :goto_0

    .line 1527
    :pswitch_27
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v1, v0, v2

    goto/16 :goto_0

    :pswitch_28
    move v0, v1

    .line 1530
    :goto_6
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v2, :cond_0

    .line 1531
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v1, v2, v0

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1540
    :pswitch_29
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_0

    .line 1543
    :pswitch_2a
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_0

    .line 1546
    :pswitch_2b
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_0

    .line 1550
    :pswitch_2c
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 1553
    :pswitch_2d
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v2, 0x5b

    aput-byte v2, v0, v4

    const/16 v2, 0x30

    aput-byte v2, v0, v5

    const/4 v2, 0x3

    const/16 v3, 0x6e

    aput-byte v3, v0, v2

    .line 1554
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    goto/16 :goto_0

    .line 1559
    :pswitch_2e
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[%d;%dR"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/Integer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1574
    :pswitch_2f
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
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

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

    .line 1581
    :pswitch_30
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

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
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

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
    :cond_4
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_0

    .line 1593
    :pswitch_31
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_5

    :pswitch_32
    goto/16 :goto_0

    .line 1595
    :pswitch_33
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[1t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1598
    :pswitch_34
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[3;0;0t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1602
    :pswitch_35
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[4;%d;%dt"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    mul-int/lit8 v7, v7, 0xc

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/Integer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    mul-int/lit8 v6, v6, 0xc

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1605
    :pswitch_36
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[8;%d;%dt"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/Integer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1609
    :pswitch_37
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[9;%d;%dt"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/Integer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1612
    :pswitch_38
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1615
    :pswitch_39
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]l\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1621
    :pswitch_3a
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

    .line 1628
    :pswitch_3b
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

    .line 1636
    :pswitch_3c
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_0

    .line 1639
    :pswitch_3d
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_9
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_e
        :pswitch_25
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_3c
    .end packed-switch

    .line 1394
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1414
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 1525
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_28
    .end packed-switch

    .line 1550
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    .line 1593
    :pswitch_data_5
    .packed-switch 0xb
        :pswitch_33
        :pswitch_32
        :pswitch_34
        :pswitch_35
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method

.method private doCsiBiggerThan(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v5, -0x1

    .line 1107
    sparse-switch p1, :sswitch_data_0

    .line 1181
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    .line 1182
    :goto_0
    return-void

    .line 1119
    :sswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[>41;320;0c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :sswitch_1
    const-string v0, "termux"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1107
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method private doCsiQuestionMark(I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 926
    sparse-switch p1, :sswitch_data_0

    .line 1005
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    :cond_0
    :goto_0
    return-void

    .line 929
    :sswitch_0
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 930
    const/16 v3, 0x4b

    if-eq p1, v3, :cond_1

    move v0, v1

    .line 936
    :cond_1
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 956
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    move v6, v2

    move v7, v2

    move v3, v2

    move v8, v2

    .line 959
    :goto_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    move v2, v3

    .line 960
    :goto_2
    if-ge v2, v7, :cond_0

    move v1, v8

    .line 961
    :goto_3
    if-lt v1, v6, :cond_6

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 938
    :pswitch_0
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 939
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 940
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 941
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v2, v0, 0x1

    :goto_4
    move v6, v1

    move v7, v2

    move v8, v4

    .line 942
    goto :goto_1

    .line 941
    :cond_2
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_4

    .line 945
    :pswitch_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 946
    :goto_5
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 947
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v7, v2

    move v8, v1

    .line 948
    goto :goto_1

    :cond_3
    move v3, v1

    .line 945
    goto :goto_5

    .line 951
    :pswitch_2
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 952
    :goto_6
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 953
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    :goto_7
    move v6, v2

    move v7, v0

    move v8, v1

    .line 954
    goto :goto_1

    :cond_4
    move v3, v1

    .line 951
    goto :goto_6

    .line 953
    :cond_5
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_7

    .line 962
    :cond_6
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

    .line 961
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 969
    :sswitch_1
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v3

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_8
    move v2, v1

    .line 970
    :goto_8
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v3, :cond_0

    .line 971
    const/16 v3, 0x68

    if-eq p1, v3, :cond_9

    move v3, v1

    :goto_9
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v4, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 970
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    move v3, v0

    .line 971
    goto :goto_9

    .line 974
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 980
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_0

    .line 977
    :pswitch_3
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\u001b[?%d;%d;1R"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/Integer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 986
    :sswitch_3
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v4, v4

    if-lt v3, v4, :cond_a

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_a
    move v3, v1

    .line 987
    :goto_a
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_0

    .line 988
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v4, v3

    .line 989
    invoke-static {v5}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v4

    .line 990
    if-ne v4, v2, :cond_b

    .line 991
    const-string v4, "termux"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Ignoring request to save/recall decset bit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 993
    :cond_b
    const/16 v6, 0x73

    if-ne p1, v6, :cond_c

    .line 994
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_b

    .line 996
    :cond_c
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v4, v6

    if-nez v4, :cond_d

    move v4, v1

    :goto_c
    invoke-virtual {p0, v4, v5}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    goto :goto_b

    :cond_d
    move v4, v0

    goto :goto_c

    .line 1002
    :sswitch_4
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 926
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x73 -> :sswitch_3
    .end sparse-switch

    .line 936
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 974
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
    .end packed-switch
.end method

.method private doDeviceControl(I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 804
    packed-switch p1, :pswitch_data_0

    .line 907
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x2000

    if-le v0, v2, :cond_d

    .line 909
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 910
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 913
    :goto_0
    return-void

    .line 807
    :pswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    const-string v2, "$q"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 810
    const-string v1, "$q\"p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\u001bP1$r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "64;1\"p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u001b\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 903
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto :goto_0

    .line 815
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unrecognized DECRQSS string: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto :goto_1

    .line 817
    :cond_2
    const-string v2, "+q"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 896
    :goto_2
    array-length v2, v4

    if-ge v0, v2, :cond_0

    .line 855
    aget-object v5, v4, v0

    .line 856
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 858
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 862
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 863
    const-string v2, "Co"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v11, :cond_6

    .line 867
    :cond_3
    const-string v2, "256"

    move-object v3, v2

    .line 878
    :goto_4
    if-nez v3, :cond_a

    .line 879
    const-string v2, "%1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v11, :cond_9

    .line 887
    :cond_4
    :goto_5
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\u001bP0+r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\u001b\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 896
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 859
    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v6, v6

    int-to-char v6, v6

    .line 860
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 858
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_3

    .line 863
    :cond_6
    const-string v2, "colors"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v11, :cond_3

    .line 868
    const-string v2, "TN"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v11, :cond_8

    .line 871
    :cond_7
    const-string v2, "xterm"

    move-object v3, v2

    .line 872
    goto/16 :goto_4

    .line 868
    :cond_8
    const-string v2, "name"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v11, :cond_7

    .line 874
    invoke-direct {p0, v11}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v3

    invoke-static {v6, v2, v3}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 876
    goto/16 :goto_4

    .line 879
    :cond_9
    const-string v2, "&8"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v11, :cond_4

    .line 884
    const-string v2, "termux"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unhandled termcap/terminfo name: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 889
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 890
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_b

    .line 893
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "\u001bP1+r"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\u001b\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 891
    :cond_b
    const-string v7, "%02X"

    new-array v8, v11, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 896
    :cond_c
    const-string v2, "termux"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid device termcap/terminfo name of odd length: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 912
    :cond_d
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 913
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private doEsc(I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1219
    sparse-switch p1, :sswitch_data_0

    .line 1302
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1303
    :goto_0
    :sswitch_0
    return-void

    .line 1221
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1224
    :sswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1227
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1230
    :sswitch_4
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v0, v1, :cond_0

    .line 1231
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1233
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v4, v0, v1

    .line 1234
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

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

    .line 1239
    :sswitch_5
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto :goto_0

    .line 1242
    :sswitch_6
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto :goto_0

    .line 1245
    :sswitch_7
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1246
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1248
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v4, v0, v1

    .line 1249
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

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

    goto/16 :goto_0

    .line 1254
    :sswitch_8
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1255
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v7, v7, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1256
    invoke-direct {p0, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_0

    .line 1259
    :sswitch_9
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_0

    .line 1262
    :sswitch_a
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1263
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_0

    :cond_2
    move v0, v7

    .line 1262
    goto :goto_1

    .line 1266
    :sswitch_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v7, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_0

    .line 1269
    :sswitch_c
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v8, v0, v1

    goto/16 :goto_0

    .line 1274
    :sswitch_d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v0, v1, :cond_3

    .line 1275
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v4, v4, 0x1

    sub-int v4, v1, v4

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v6, v1, 0x1

    move v1, v7

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1276
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v7, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1278
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_0

    .line 1285
    :sswitch_e
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1286
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1289
    :sswitch_f
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1292
    :sswitch_10
    invoke-direct {p0, v9, v8}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_0

    .line 1295
    :sswitch_11
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1296
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_0

    .line 1299
    :sswitch_12
    invoke-direct {p0, v9, v7}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_0

    .line 1219
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x30 -> :sswitch_0
        0x36 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_6
        0x39 -> :sswitch_7
        0x3d -> :sswitch_10
        0x3e -> :sswitch_12
        0x44 -> :sswitch_9
        0x45 -> :sswitch_a
        0x46 -> :sswitch_b
        0x48 -> :sswitch_c
        0x4d -> :sswitch_d
        0x4e -> :sswitch_0
        0x50 -> :sswitch_e
        0x5b -> :sswitch_f
        0x5d -> :sswitch_11
        0x63 -> :sswitch_8
    .end sparse-switch
.end method

.method private doEscPound(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1207
    packed-switch p1, :pswitch_data_0

    .line 1212
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1213
    :goto_0
    return-void

    .line 1209
    :pswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_0

    .line 1207
    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method private doLinefeed()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1755
    sparse-switch p1, :sswitch_data_0

    .line 1763
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1764
    :goto_0
    return-void

    .line 1757
    :sswitch_0
    const-string v0, "\u0007"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :sswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1755
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x1b -> :sswitch_1
    .end sparse-switch
.end method

.method private doOscEsc(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1769
    packed-switch p1, :pswitch_data_0

    .line 1776
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1777
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1778
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1779
    :goto_0
    return-void

    .line 1771
    :pswitch_0
    const-string v0, "\u001b\\"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1769
    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1785
    const/4 v2, -0x1

    .line 1786
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    const-string v3, ""

    move-object v7, v3

    .line 1801
    :goto_1
    sparse-switch v2, :sswitch_data_0

    .line 1922
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 1925
    :cond_0
    :goto_2
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    :goto_3
    return-void

    .line 1789
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1790
    const/16 v5, 0x3b

    if-ne v4, v5, :cond_2

    .line 1791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 1792
    goto :goto_1

    .line 1793
    :cond_2
    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_4

    .line 1794
    if-gez v2, :cond_3

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    .line 1788
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1794
    :cond_3
    mul-int/lit8 v2, v2, 0xa

    goto :goto_4

    .line 1796
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_3

    .line 1805
    :sswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 1815
    :sswitch_2
    const/4 v2, -0x1

    .line 1816
    const/4 v3, -0x1

    .line 1817
    const/4 v4, 0x0

    .line 1818
    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_6

    const/4 v5, 0x0

    move v6, v5

    .line 1819
    :goto_6
    if-eqz v6, :cond_7

    const/16 v5, 0x3b

    .line 1820
    :goto_7
    const/16 v8, 0x3b

    if-ne v5, v8, :cond_b

    .line 1821
    if-gez v3, :cond_8

    .line 1822
    add-int/lit8 v3, v4, 0x1

    .line 1842
    :cond_5
    :goto_8
    if-nez v6, :cond_0

    .line 1817
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1818
    :cond_6
    const/4 v5, 0x1

    move v6, v5

    goto :goto_6

    .line 1819
    :cond_7
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_7

    .line 1824
    :cond_8
    if-ltz v2, :cond_9

    const/16 v8, 0xff

    if-le v2, v8, :cond_a

    .line 1825
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_3

    .line 1828
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 1830
    const/4 v2, -0x1

    .line 1831
    const/4 v3, -0x1

    goto :goto_8

    .line 1834
    :cond_b
    if-gez v3, :cond_5

    .line 1836
    if-gez v3, :cond_d

    const/16 v8, 0x30

    if-lt v5, v8, :cond_d

    const/16 v8, 0x39

    if-gt v5, v8, :cond_d

    .line 1837
    if-gez v2, :cond_c

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    goto :goto_8

    :cond_c
    mul-int/lit8 v2, v2, 0xa

    goto :goto_9

    .line 1839
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3

    .line 1848
    :sswitch_3
    add-int/lit8 v3, v2, -0xa

    add-int/lit16 v3, v3, 0x100

    .line 1849
    const/4 v4, 0x0

    .line 1850
    const/4 v5, 0x0

    .line 1851
    :goto_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_f

    const/4 v6, 0x0

    .line 1852
    :goto_b
    if-nez v6, :cond_e

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_15

    .line 1854
    :cond_e
    :try_start_0
    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1855
    const-string v9, "?"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1857
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v8, v8, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v8, v8, v3

    .line 1858
    const v9, 0xffff

    const/high16 v10, 0xff0000

    and-int/2addr v10, v8

    shr-int/lit8 v10, v10, 0x10

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    .line 1859
    const v10, 0xffff

    const v11, 0xff00

    and-int/2addr v11, v8

    shr-int/lit8 v11, v11, 0x8

    mul-int/2addr v10, v11

    div-int/lit16 v10, v10, 0xff

    .line 1860
    and-int/lit16 v8, v8, 0xff

    const v11, 0xffff

    mul-int/2addr v8, v11

    div-int/lit16 v8, v8, 0xff

    .line 1861
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "\u001b]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ";rgb:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v9, "%04x"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v19, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v9, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    const-string v10, "%04x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "%04x"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-static {v10, v8, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 1868
    if-nez v6, :cond_0

    const/16 v6, 0x102

    if-gt v3, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    if-ge v5, v4, :cond_0

    move v4, v5

    move v6, v5

    .line 1850
    :goto_d
    add-int/lit8 v5, v6, 0x1

    goto/16 :goto_a

    .line 1851
    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_b

    .line 1864
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v9, v3, v8}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v8}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    .line 1870
    :catch_0
    move-exception v6

    move v6, v5

    goto :goto_d

    .line 1878
    :sswitch_4
    const-string v2, ";"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1880
    :try_start_3
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->clipboardText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    .line 1883
    const-string v2, "termux"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "OSC Manipulate selection, invalid string \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1891
    :sswitch_5
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_2

    .line 1895
    :cond_11
    const/4 v3, 0x0

    .line 1896
    const/4 v2, 0x0

    .line 1897
    :goto_e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_13

    const/4 v4, 0x0

    .line 1898
    :goto_f
    if-nez v4, :cond_12

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_14

    .line 1900
    :cond_12
    :try_start_4
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1901
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1903
    if-nez v4, :cond_0

    .line 1904
    add-int/lit8 v3, v2, 0x1

    move v2, v3

    move v4, v3

    .line 1896
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_e

    .line 1897
    :cond_13
    const/4 v4, 0x1

    goto :goto_f

    .line 1916
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit8 v2, v2, -0x6e

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_2

    .line 1905
    :catch_2
    move-exception v4

    move v4, v3

    goto :goto_10

    .line 1870
    :catch_3
    move-exception v6

    move v6, v5

    goto/16 :goto_d

    :cond_14
    move v4, v3

    goto :goto_10

    :cond_15
    move v6, v5

    goto/16 :goto_d

    .line 1801
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0x34 -> :sswitch_4
        0x68 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_6
        0x70 -> :sswitch_6
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method private doSetMode(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1942
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1943
    sparse-switch v0, :sswitch_data_0

    .line 1956
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 1957
    :goto_0
    :sswitch_0
    return-void

    .line 1945
    :sswitch_1
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    goto :goto_0

    .line 1948
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 1943
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_2
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private emitCodePoint(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2093
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v0, :cond_0

    .line 2095
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2198
    :cond_0
    :goto_1
    :pswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v7

    .line 2199
    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v8

    .line 2200
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    .line 2202
    :goto_2
    if-eqz v7, :cond_9

    .line 2203
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq v8, v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_3

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

    if-ge v0, v1, :cond_8

    .line 2207
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2218
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v0, :cond_4

    if-lez v8, :cond_4

    .line 2220
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v5, v0, v8

    .line 2221
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v5, v0, :cond_4

    .line 2222
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v5

    const/4 v4, 0x1

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2225
    :cond_4
    if-gtz v8, :cond_a

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v0, :cond_a

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

    .line 2228
    if-eqz v7, :cond_5

    if-lez v8, :cond_5

    .line 2229
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v1, v8

    if-eq v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2231
    :cond_5
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v8

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

    .line 2097
    :pswitch_1
    const/16 p1, 0x20

    .line 2098
    goto/16 :goto_1

    .line 2100
    :pswitch_2
    const/16 p1, 0x25c6

    .line 2101
    goto/16 :goto_1

    .line 2103
    :pswitch_3
    const/16 p1, 0x2588

    .line 2104
    goto/16 :goto_1

    .line 2106
    :pswitch_4
    const/16 p1, 0x2592

    .line 2107
    goto/16 :goto_1

    .line 2109
    :pswitch_5
    const/16 p1, 0x2409

    .line 2110
    goto/16 :goto_1

    .line 2112
    :pswitch_6
    const/16 p1, 0x240c

    .line 2113
    goto/16 :goto_1

    .line 2115
    :pswitch_7
    const/16 p1, 0xd

    .line 2116
    goto/16 :goto_1

    .line 2118
    :pswitch_8
    const/16 p1, 0x240a

    .line 2119
    goto/16 :goto_1

    .line 2121
    :pswitch_9
    const/16 p1, 0xb0

    .line 2122
    goto/16 :goto_1

    .line 2124
    :pswitch_a
    const/16 p1, 0xb1

    .line 2125
    goto/16 :goto_1

    .line 2127
    :pswitch_b
    const/16 p1, 0xa

    .line 2128
    goto/16 :goto_1

    .line 2130
    :pswitch_c
    const/16 p1, 0x240b

    .line 2131
    goto/16 :goto_1

    .line 2133
    :pswitch_d
    const/16 p1, 0x2518

    .line 2134
    goto/16 :goto_1

    .line 2136
    :pswitch_e
    const/16 p1, 0x2510

    .line 2137
    goto/16 :goto_1

    .line 2139
    :pswitch_f
    const/16 p1, 0x250c

    .line 2140
    goto/16 :goto_1

    .line 2142
    :pswitch_10
    const/16 p1, 0x2514

    .line 2143
    goto/16 :goto_1

    .line 2145
    :pswitch_11
    const/16 p1, 0x253c

    .line 2146
    goto/16 :goto_1

    .line 2148
    :pswitch_12
    const/16 p1, 0x23ba

    .line 2149
    goto/16 :goto_1

    .line 2151
    :pswitch_13
    const/16 p1, 0x23bb

    .line 2152
    goto/16 :goto_1

    .line 2154
    :pswitch_14
    const/16 p1, 0x2500

    .line 2155
    goto/16 :goto_1

    .line 2157
    :pswitch_15
    const/16 p1, 0x23bc

    .line 2158
    goto/16 :goto_1

    .line 2160
    :pswitch_16
    const/16 p1, 0x23bd

    .line 2161
    goto/16 :goto_1

    .line 2163
    :pswitch_17
    const/16 p1, 0x251c

    .line 2164
    goto/16 :goto_1

    .line 2166
    :pswitch_18
    const/16 p1, 0x2524

    .line 2167
    goto/16 :goto_1

    .line 2169
    :pswitch_19
    const/16 p1, 0x2534

    .line 2170
    goto/16 :goto_1

    .line 2172
    :pswitch_1a
    const/16 p1, 0x252c

    .line 2173
    goto/16 :goto_1

    .line 2175
    :pswitch_1b
    const/16 p1, 0x2502

    .line 2176
    goto/16 :goto_1

    .line 2178
    :pswitch_1c
    const/16 p1, 0x2264

    .line 2179
    goto/16 :goto_1

    .line 2181
    :pswitch_1d
    const/16 p1, 0x2265

    .line 2182
    goto/16 :goto_1

    .line 2184
    :pswitch_1e
    const/16 p1, 0x3c0

    .line 2185
    goto/16 :goto_1

    .line 2187
    :pswitch_1f
    const/16 p1, 0x2260

    .line 2188
    goto/16 :goto_1

    .line 2190
    :pswitch_20
    const/16 p1, 0xa3

    .line 2191
    goto/16 :goto_1

    .line 2193
    :pswitch_21
    const/16 p1, 0xb7

    .line 2194
    goto/16 :goto_1

    .line 2200
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 2209
    :cond_8
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto/16 :goto_3

    .line 2212
    :cond_9
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v8, v0, :cond_3

    goto/16 :goto_6

    .line 2225
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4

    .line 2229
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 2095
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method private finishSequence()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2084
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2080
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private getArg(IIZ)I
    .registers 5

    .line 2022
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v0, v0, p1

    .line 2023
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 2026
    :cond_0
    :goto_0
    return p2

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private getArg0(I)I
    .registers 4

    .line 2014
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .registers 3

    const/4 v0, 0x1

    .line 2018
    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getStyle()J
    .registers 4

    .line 1937
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private isDecsetInternalBitSet(I)Z
    .registers 3

    .line 230
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logError(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .registers 2

    .line 250
    sparse-switch p0, :sswitch_data_0

    .line 276
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 252
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 256
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 258
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 260
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 262
    :sswitch_5
    const/16 v0, 0x20

    goto :goto_0

    .line 264
    :sswitch_6
    const/16 v0, 0x800

    goto :goto_0

    .line 266
    :sswitch_7
    const/16 v0, 0x40

    goto :goto_0

    .line 268
    :sswitch_8
    const/16 v0, 0x80

    goto :goto_0

    .line 270
    :sswitch_9
    const/16 v0, 0x100

    goto :goto_0

    .line 272
    :sswitch_a
    const/16 v0, 0x200

    goto :goto_0

    .line 274
    :sswitch_b
    const/16 v0, 0x400

    goto :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x19 -> :sswitch_4
        0x42 -> :sswitch_5
        0x45 -> :sswitch_6
        0x3e8 -> :sswitch_7
        0x3ea -> :sswitch_8
        0x3ec -> :sswitch_9
        0x3ee -> :sswitch_a
        0x7d4 -> :sswitch_b
    .end sparse-switch
.end method

.method private nextTabStop(I)I
    .registers 4

    .line 919
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-lt v0, v1, :cond_0

    .line 921
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    return v0

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 919
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseArg(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1990
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    .line 1991
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1992
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    aget v1, v0, v1

    .line 1993
    add-int/lit8 v0, p1, -0x30

    .line 1994
    if-ltz v1, :cond_0

    .line 1996
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 2000
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    aput v0, v1, v2

    .line 2002
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 2009
    :goto_0
    return-void

    .line 2003
    :cond_2
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_4

    .line 2004
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2005
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    const v3, 0xfffd

    .line 404
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-lez v0, :cond_a

    .line 405
    and-int/lit16 v0, p1, 0xc0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_9

    .line 407
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v4, v2, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v2

    .line 408
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez v0, :cond_4

    .line 409
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ne v0, v6, :cond_5

    const/16 v0, 0x1f

    :goto_0
    int-to-byte v0, v0

    .line 410
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v2, v2, v5

    and-int/2addr v2, v0

    move v0, v1

    .line 411
    :goto_1
    iget-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-lt v0, v4, :cond_7

    .line 413
    const/16 v0, 0x7f

    if-gt v2, v0, :cond_0

    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-gt v0, v1, :cond_2

    :cond_0
    const/16 v0, 0x7ff

    if-ge v2, v0, :cond_1

    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-gt v0, v6, :cond_2

    :cond_1
    const v0, 0xffff

    if-ge v2, v0, :cond_3

    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-le v0, v7, :cond_3

    :cond_2
    move v2, v3

    .line 419
    :cond_3
    int-to-byte v0, v5

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 421
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
    :cond_4
    :goto_2
    return-void

    .line 409
    :cond_5
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ne v0, v7, :cond_6

    const/16 v0, 0xf

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    goto :goto_0

    .line 412
    :cond_7
    shl-int/lit8 v2, v2, 0x6

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v4, v4, v0

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 432
    :goto_3
    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_2

    .line 437
    :cond_9
    int-to-byte v0, v5

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 438
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 446
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_2

    .line 449
    :cond_a
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 450
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_2

    .line 452
    :cond_b
    and-int/lit16 v0, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_c

    .line 453
    int-to-byte v0, v1

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 463
    :goto_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    goto :goto_2

    .line 454
    :cond_c
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_d

    .line 455
    int-to-byte v0, v6

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 456
    :cond_d
    and-int/lit16 v0, p1, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_e

    .line 457
    int-to-byte v0, v7

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 460
    :cond_e
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_2

    :sswitch_0
    move v2, v3

    goto :goto_3

    .line 427
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeScreen()V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 346
    const/4 v0, 0x2

    new-array v5, v0, [I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput v0, v5, v9

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    aput v0, v5, v10

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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

    .line 1328
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/lit8 v2, v2, 0xc

    and-int/lit8 v1, v1, -0xd

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1977
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 1978
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, v1, :cond_1

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1982
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x20

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1984
    :goto_0
    return-void

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
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v14, 0x5

    const/4 v13, 0x2

    const/16 v12, 0xff

    const/16 v11, 0x26

    const/4 v1, 0x0

    .line 1649
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_0
    move v0, v1

    .line 1650
    :goto_0
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-le v0, v2, :cond_1

    return-void

    .line 1651
    :cond_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v2, v2, v0

    .line 1652
    if-gez v2, :cond_4

    .line 1653
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lez v2, :cond_3

    .line 1650
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1659
    :cond_4
    if-nez v2, :cond_5

    .line 1660
    const/16 v2, 0x100

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1661
    const/16 v2, 0x101

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1662
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1663
    :cond_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1664
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1665
    :cond_6
    if-ne v2, v13, :cond_7

    .line 1666
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1667
    :cond_7
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 1668
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1669
    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 1670
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1671
    :cond_9
    if-ne v2, v14, :cond_a

    .line 1672
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1673
    :cond_a
    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    .line 1674
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1675
    :cond_b
    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    .line 1676
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1677
    :cond_c
    const/16 v3, 0x9

    if-ne v2, v3, :cond_d

    .line 1678
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1679
    :cond_d
    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 1681
    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    .line 1683
    const/16 v3, 0x16

    if-ne v2, v3, :cond_e

    .line 1684
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v2, v2, -0x102

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1685
    :cond_e
    const/16 v3, 0x17

    if-ne v2, v3, :cond_f

    .line 1686
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1687
    :cond_f
    const/16 v3, 0x18

    if-ne v2, v3, :cond_10

    .line 1688
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    .line 1689
    :cond_10
    const/16 v3, 0x19

    if-ne v2, v3, :cond_11

    .line 1690
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    .line 1691
    :cond_11
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_12

    .line 1692
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    .line 1693
    :cond_12
    const/16 v3, 0x1c

    if-ne v2, v3, :cond_13

    .line 1694
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    .line 1695
    :cond_13
    const/16 v3, 0x1d

    if-ne v2, v3, :cond_14

    .line 1696
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1

    .line 1697
    :cond_14
    const/16 v3, 0x1e

    if-lt v2, v3, :cond_15

    const/16 v3, 0x25

    if-gt v2, v3, :cond_15

    .line 1698
    add-int/lit8 v2, v2, -0x1e

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    .line 1699
    :cond_15
    if-eq v2, v11, :cond_16

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1e

    .line 1703
    :cond_16
    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_2

    .line 1704
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    .line 1705
    if-ne v3, v13, :cond_1b

    .line 1706
    add-int/lit8 v3, v0, 0x4

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-le v3, v4, :cond_17

    .line 1707
    const-string v3, "termux"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Too few CSI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ";2 RGB arguments"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1709
    :cond_17
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v6, v0, 0x4

    aget v5, v5, v6

    .line 1710
    if-ltz v3, :cond_18

    if-ltz v4, :cond_18

    if-ltz v5, :cond_18

    if-gt v3, v12, :cond_18

    if-gt v4, v12, :cond_18

    if-le v5, v12, :cond_19

    .line 1711
    :cond_18
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid RGB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1720
    :goto_2
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_1

    .line 1713
    :cond_19
    shl-int/lit8 v3, v3, 0x10

    const/high16 v6, -0x1000000

    or-int/2addr v3, v6

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 1714
    if-ne v2, v11, :cond_1a

    .line 1715
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_2

    .line 1717
    :cond_1a
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_2

    .line 1722
    :cond_1b
    if-ne v3, v14, :cond_1d

    .line 1723
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    .line 1724
    add-int/lit8 v0, v0, 0x2

    .line 1725
    if-ltz v3, :cond_2

    const/16 v4, 0x103

    if-ge v3, v4, :cond_2

    .line 1726
    if-ne v2, v11, :cond_1c

    .line 1727
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    .line 1729
    :cond_1c
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1

    .line 1735
    :cond_1d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid ISO-8613-3 SGR first argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1737
    :cond_1e
    const/16 v3, 0x27

    if-ne v2, v3, :cond_1f

    .line 1738
    const/16 v2, 0x100

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    .line 1739
    :cond_1f
    const/16 v3, 0x28

    if-lt v2, v3, :cond_20

    const/16 v3, 0x2f

    if-gt v2, v3, :cond_20

    .line 1740
    add-int/lit8 v2, v2, -0x28

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1

    .line 1741
    :cond_20
    const/16 v3, 0x31

    if-ne v2, v3, :cond_21

    .line 1742
    const/16 v2, 0x101

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1

    .line 1743
    :cond_21
    const/16 v3, 0x5a

    if-lt v2, v3, :cond_22

    const/16 v3, 0x61

    if-gt v2, v3, :cond_22

    .line 1744
    add-int/lit8 v2, v2, -0x5a

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1

    .line 1745
    :cond_22
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0x6b

    if-gt v2, v3, :cond_2

    .line 1746
    add-int/lit8 v2, v2, -0x64

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1
.end method

.method private setCursorCol(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2240
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2246
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    return-void
.end method

.method private setCursorPosition(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1966
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v4

    .line 1967
    if-eqz v4, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    move v3, v1

    .line 1968
    :goto_0
    if-eqz v4, :cond_1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    move v2, v1

    .line 1969
    :goto_1
    if-eqz v4, :cond_2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    move v1, v0

    .line 1970
    :goto_2
    if-eqz v4, :cond_3

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1971
    :goto_3
    add-int v4, v3, p2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1972
    add-int v3, v1, p1

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

    :cond_2
    move v1, v0

    .line 1969
    goto :goto_2

    .line 1970
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    goto :goto_3
.end method

.method private setCursorRow(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2235
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorRowCol(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    const/16 v2, 0x80

    const/16 v1, 0x40

    const/4 v0, 0x0

    .line 234
    if-eqz p2, :cond_0

    .line 236
    if-ne p1, v1, :cond_1

    .line 237
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 242
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

    .line 238
    :cond_1
    if-ne p1, v2, :cond_0

    .line 239
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 245
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_1
.end method

.method private setDefaultTabStops()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    .line 388
    :goto_0
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-lt v0, v2, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v2, v1

    :goto_1
    aput-boolean v2, v3, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2308
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2309
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2310
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2311
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2039
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unimplemented sequence char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' (U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2040
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownParameter(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2049
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2050
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownSequence(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2044
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown sequence char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' (numeric value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2045
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method


# virtual methods
.method public append([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)V"
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    .line 400
    :cond_0
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearScrollCounter()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2261
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1010
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    .line 1011
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1012
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1014
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1101
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 1102
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 1022
    :sswitch_1
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

    .line 1036
    :sswitch_2
    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_0

    .line 1048
    :sswitch_3
    if-nez p1, :cond_1

    .line 1049
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1050
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_0

    .line 1064
    :sswitch_4
    if-eqz p1, :cond_2

    .line 1065
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto :goto_0

    .line 1067
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto :goto_0

    .line 1074
    :sswitch_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 1075
    :goto_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v0, v2, :cond_1

    .line 1076
    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v2, v3, :cond_7

    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v2, v3, :cond_7

    move v2, v1

    .line 1077
    :goto_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1078
    :cond_3
    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 1079
    if-nez p1, :cond_4

    .line 1080
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1081
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1082
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1083
    if-eqz v2, :cond_4

    .line 1085
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1086
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1090
    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1092
    :cond_5
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
    :cond_6
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_1

    .line 1076
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 1014
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0x19 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_5
        0x42 -> :sswitch_0
        0x45 -> :sswitch_3
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_0
        0x3f7 -> :sswitch_0
        0x40a -> :sswitch_0
        0x417 -> :sswitch_5
        0x418 -> :sswitch_4
        0x419 -> :sswitch_5
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCursorCol()I
    .registers 2

    .line 358
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .registers 2

    .line 363
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/termux/terminal/TerminalBuffer;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .registers 2

    .line 2257
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .registers 6

    .line 2298
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 2303
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCursorKeysApplicationMode()Z
    .registers 2

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .registers 2

    .line 375
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .registers 2

    .line 384
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReverseVideo()Z
    .registers 2

    .line 367
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowingCursor()Z
    .registers 2

    .line 371
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2318
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2320
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    .line 2321
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v3, "\u001b[200~"

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2322
    :cond_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2323
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[201~"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 468
    packed-switch p1, :pswitch_data_0

    .line 533
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    packed-switch v2, :pswitch_data_1

    .line 794
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 797
    :cond_0
    :goto_0
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 798
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 472
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 473
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto :goto_1

    .line 475
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    goto :goto_1

    .line 478
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v2, v3, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v2, v2, -0x1

    .line 481
    if-ltz v2, :cond_1

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
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

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

    .line 502
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto :goto_1

    .line 505
    :pswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1

    .line 508
    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1

    .line 511
    :pswitch_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1

    .line 515
    :pswitch_b
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

    .line 523
    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto/16 :goto_1

    .line 529
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_1

    .line 536
    :pswitch_d
    const/16 v2, 0x20

    move/from16 v0, p1

    if-lt v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    goto/16 :goto_0

    .line 539
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    goto/16 :goto_0

    .line 542
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    goto/16 :goto_0

    .line 545
    :pswitch_10
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 548
    :pswitch_11
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 551
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    goto/16 :goto_0

    .line 554
    :pswitch_13
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_0

    .line 557
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 561
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    goto/16 :goto_0

    .line 564
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    goto/16 :goto_0

    .line 567
    :pswitch_16
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v3

    .line 568
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    move v14, v2

    .line 569
    :goto_4
    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    move v4, v2

    .line 570
    :goto_5
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 571
    :goto_6
    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 572
    :goto_7
    packed-switch p1, :pswitch_data_2

    .line 686
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 568
    :cond_8
    const/4 v2, 0x0

    move v14, v2

    goto :goto_4

    .line 569
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v4, v2

    goto :goto_5

    .line 570
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 571
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    goto :goto_7

    .line 583
    :pswitch_18
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

    .line 602
    :pswitch_19
    const/16 v2, 0x78

    move/from16 v0, p1

    if-ne v0, v2, :cond_f

    const/4 v2, 0x0

    move v3, v2

    .line 603
    :goto_8
    const/16 v2, 0x7b

    move/from16 v0, p1

    if-eq v0, v2, :cond_10

    const/4 v2, 0x0

    move v11, v2

    .line 605
    :goto_9
    if-eqz v3, :cond_c

    if-nez v11, :cond_11

    :cond_c
    const/4 v2, 0x0

    move v10, v2

    .line 606
    :goto_a
    const/4 v2, 0x0

    .line 607
    if-eqz v3, :cond_12

    const/16 v5, 0x20

    .line 610
    :goto_b
    const/16 v3, 0x20

    if-lt v5, v3, :cond_d

    const/16 v3, 0x7e

    if-le v5, v3, :cond_e

    :cond_d
    const/16 v3, 0xa0

    if-lt v5, v3, :cond_0

    const/16 v3, 0xff

    if-gt v5, v3, :cond_0

    .line 613
    :cond_e
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v9}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v14

    add-int/lit8 v6, v4, 0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 614
    add-int/lit8 v6, v3, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v12}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    add-int/2addr v3, v7

    add-int/lit8 v9, v8, 0x1

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 615
    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v9}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    add-int/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 616
    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v8

    .line 618
    add-int/lit8 v4, v2, -0x1

    :goto_c
    if-ge v4, v13, :cond_0

    .line 619
    add-int/lit8 v3, v12, -0x1

    :goto_d
    if-lt v3, v14, :cond_13

    .line 618
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 602
    :cond_f
    const/4 v2, 0x1

    move v3, v2

    goto :goto_8

    .line 603
    :cond_10
    const/4 v2, 0x1

    move v11, v2

    goto :goto_9

    .line 605
    :cond_11
    const/4 v2, 0x1

    move v10, v2

    goto :goto_a

    .line 607
    :cond_12
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    const/4 v2, 0x1

    goto :goto_b

    .line 620
    :cond_13
    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v2, v4, v3}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_15

    .line 621
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v10, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v6, v4, v3}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v6

    :goto_e
    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 619
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_16
    move-wide v6, v8

    .line 621
    goto :goto_e

    .line 628
    :pswitch_1a
    const/16 v2, 0x74

    move/from16 v0, p1

    if-eq v0, v2, :cond_18

    const/4 v5, 0x0

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

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v3

    if-lt v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 636
    :cond_17
    const/4 v2, 0x4

    move v13, v2

    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v13, v2, :cond_0

    .line 637
    const/4 v3, 0x0

    .line 638
    const/4 v2, 0x1

    .line 639
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/4 v4, 0x1

    .line 674
    :goto_11
    if-eqz v5, :cond_1a

    if-nez v4, :cond_1a

    .line 636
    :goto_12
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_10

    .line 628
    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_f

    .line 641
    :sswitch_0
    const/16 v3, 0x1d

    .line 643
    if-nez v5, :cond_19

    const/4 v2, 0x0

    :cond_19
    move v4, v2

    .line 644
    goto :goto_11

    .line 646
    :sswitch_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 647
    goto :goto_11

    .line 649
    :sswitch_2
    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 650
    goto :goto_11

    .line 652
    :sswitch_3
    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 653
    goto :goto_11

    .line 655
    :sswitch_4
    const/16 v3, 0x10

    const/4 v4, 0x1

    .line 656
    goto :goto_11

    .line 658
    :sswitch_5
    const/4 v3, 0x1

    .line 659
    const/4 v4, 0x0

    .line 660
    goto :goto_11

    .line 662
    :sswitch_6
    const/4 v3, 0x4

    .line 663
    const/4 v4, 0x0

    .line 664
    goto :goto_11

    .line 666
    :sswitch_7
    const/16 v3, 0x8

    .line 667
    const/4 v4, 0x0

    .line 668
    goto :goto_11

    .line 670
    :sswitch_8
    const/16 v3, 0x10

    .line 671
    const/4 v4, 0x0

    .line 672
    goto :goto_11

    .line 677
    :cond_1a
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

    goto :goto_12

    .line 690
    :pswitch_1b
    const/16 v2, 0x71

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    .line 692
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 693
    if-eqz v2, :cond_1b

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 695
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v2, v2, -0x81

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_0

    .line 696
    :cond_1c
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 698
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_0

    .line 700
    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 703
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 707
    :pswitch_1c
    const/16 v2, 0x7d

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

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

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x0

    sub-int/2addr v5, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v7, v9

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

    .line 713
    :cond_1f
    const/16 v2, 0x7e

    move/from16 v0, p1

    if-ne v0, v2, :cond_20

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

    .line 716
    sub-int v5, v2, v9

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

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
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 726
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_0

    .line 729
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    goto/16 :goto_0

    .line 735
    :pswitch_20
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_26

    .line 737
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    .line 738
    const/16 v2, 0x2f

    if-eq v3, v2, :cond_21

    const/16 v2, 0x417

    if-eq v3, v2, :cond_21

    const/16 v2, 0x419

    if-ne v3, v2, :cond_23

    .line 741
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    .line 751
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\u001b[?%d;%d$y"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v3, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 741
    :cond_22
    const/4 v2, 0x2

    goto :goto_13

    .line 743
    :cond_23
    invoke-static {v3}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v2

    .line 744
    const/4 v4, -0x1

    if-ne v2, v4, :cond_25

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_13

    :cond_24
    const/4 v2, 0x2

    goto :goto_13

    .line 747
    :cond_25
    const-string v2, "termux"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Got DECRQM for unrecognized private DEC mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v2, 0x0

    goto :goto_13

    .line 753
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 757
    :pswitch_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 758
    packed-switch p1, :pswitch_data_3

    .line 781
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 760
    :pswitch_23
    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 764
    :pswitch_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_0

    .line 768
    :pswitch_25
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_0

    .line 772
    :pswitch_26
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_0

    .line 785
    :pswitch_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 786
    const/16 v3, 0x78

    move/from16 v0, p1

    if-ne v0, v3, :cond_28

    if-ltz v2, :cond_28

    const/4 v3, 0x2

    if-gt v2, v3, :cond_28

    .line 788
    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    const/4 v2, 0x0

    :goto_14
    const/16 v3, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_0

    :cond_27
    const/4 v2, 0x1

    goto :goto_14

    .line 790
    :cond_28
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 534
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_2
        :pswitch_1d
        :pswitch_1e
        :pswitch_15
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_27
        :pswitch_1b
        :pswitch_1c
        :pswitch_13
    .end packed-switch

    .line 572
    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_1a
        :pswitch_17
        :pswitch_1a
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_17
        :pswitch_19
        :pswitch_19
    .end packed-switch

    .line 639
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x16 -> :sswitch_5
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1b -> :sswitch_8
    .end sparse-switch

    .line 758
    :pswitch_data_3
    .packed-switch 0x71
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 760
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public reset()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v3, 0x101

    const/16 v2, 0x100

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2266
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 2267
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2268
    iput-boolean v4, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2269
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2270
    iput-boolean v4, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2271
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2272
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2273
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2274
    iput-boolean v4, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2275
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v2, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2276
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2277
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2279
    iput-boolean v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 2280
    iput-boolean v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2282
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v4, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v4, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v4, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2283
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v4, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v4, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v4, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2284
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 2286
    const/16 v0, 0x8

    invoke-direct {p0, v0, v5}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2287
    const/16 v0, 0x10

    invoke-direct {p0, v0, v5}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2288
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v2, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2291
    int-to-byte v0, v4

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 2293
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2294
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    return-void
.end method

.method public resize(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 319
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, p1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 321
    :cond_0
    if-lt p1, v1, :cond_1

    if-ge p2, v1, :cond_2

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "rows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", columns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v0, p2, :cond_3

    .line 326
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 327
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 328
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 330
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, p1, :cond_4

    .line 331
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 332
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 333
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 334
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    new-array v2, v2, [Z

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
    :cond_4
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    goto :goto_0
.end method

.method public sendMouseEvent(IIIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    const/16 v0, 0x4d

    const/4 v7, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 303
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\u001b[<%d;%d;%d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    if-eqz p4, :cond_2

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v4, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x6d

    goto :goto_1

    .line 308
    :cond_3
    if-eqz p4, :cond_4

    .line 310
    :goto_2
    if-lt p2, v3, :cond_5

    if-lt p3, v3, :cond_5

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-gt p2, v1, :cond_5

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-gt p3, v1, :cond_5

    const/16 v1, 0xdf

    if-gt p2, v1, :cond_5

    const/16 v1, 0xdf

    if-gt p3, v1, :cond_5

    move v1, v2

    .line 311
    :goto_3
    if-nez v1, :cond_0

    .line 312
    const/4 v1, 0x6

    new-array v1, v1, [B

    const/16 v5, 0x1b

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    const/16 v5, 0x5b

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v7

    add-int/lit8 v0, p1, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    const/4 v0, 0x4

    add-int/lit8 v3, p2, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v0, 0x5

    add-int/lit8 v3, p3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 313
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    goto/16 :goto_0

    :cond_4
    move p1, v4

    .line 308
    goto :goto_2

    :cond_5
    move v1, v3

    .line 310
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 2337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "TerminalEmulator[size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v12, v12, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v10, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", margins={"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
