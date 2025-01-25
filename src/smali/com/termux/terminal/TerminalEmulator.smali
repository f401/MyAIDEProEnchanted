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
            "Ljava/util/Stack<",
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

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 159
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 173
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 174
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 222
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

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
    new-instance p1, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p1, p2, p4, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 284
    new-instance p1, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p1, p2, p3, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 285
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 286
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 287
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 288
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    return-void
.end method

.method private blockClear(III)V
    .registers 5

    .line 1929
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    return-void
.end method

.method private blockClear(IIII)V
    .registers 13

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

    .line 2030
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_15

    .line 2031
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2032
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_18

    .line 2034
    :cond_15
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    :goto_18
    return-void
.end method

.method private continueSequence(I)V
    .registers 2

    .line 1202
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1203
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    return-void
.end method

.method private doCsi(I)V
    .registers 11

    const/16 v0, 0x24

    if-eq p1, v0, :cond_458

    const/16 v0, 0x27

    if-eq p1, v0, :cond_452

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_44c

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_425

    const/16 v0, 0x58

    if-eq p1, v0, :cond_404

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3e2

    const/16 v0, 0x53

    if-eq p1, v0, :cond_3d6

    const/16 v0, 0x54

    if-eq p1, v0, :cond_3a8

    const/16 v0, 0x60

    if-eq p1, v0, :cond_39e

    const/16 v0, 0x61

    if-eq p1, v0, :cond_38b

    packed-switch p1, :pswitch_data_45e

    const/16 v0, 0xc

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_468

    packed-switch p1, :pswitch_data_48c

    packed-switch p1, :pswitch_data_49c

    packed-switch p1, :pswitch_data_4a6

    .line 1642
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_45d

    .line 1342
    :pswitch_41  #0x22
    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_45d

    .line 1339
    :pswitch_48  #0x21
    const/16 p1, 0x13

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_45d

    .line 1639
    :pswitch_4f  #0x20
    const/16 p1, 0xf

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_45d

    .line 1441
    :pswitch_56  #0x4d
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1442
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr p1, v0

    .line 1443
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1445
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v3, 0x0

    add-int v4, v8, v0

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1446
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_45d

    .line 1432
    :pswitch_7e  #0x4c
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr p1, v0

    .line 1433
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1435
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v3, 0x0

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v6, p1, v0

    const/4 v7, 0x0

    add-int v8, v4, v0

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1436
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_45d

    .line 1414
    :pswitch_a3  #0x4b
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_c2

    if-eq v0, v2, :cond_b9

    if-eq v0, v3, :cond_b1

    .line 1425
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    .line 1422
    :cond_b1
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_cc

    .line 1419
    :cond_b9
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_cc

    .line 1416
    :cond_c2
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v2, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1428
    :goto_cc
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_45d

    .line 1394
    :pswitch_d0  #0x4a
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_f6

    if-eq v0, v2, :cond_e6

    if-eq v0, v3, :cond_de

    .line 1408
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    .line 1405
    :cond_de
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto :goto_10b

    .line 1400
    :cond_e6
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1401
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_10b

    .line 1396
    :cond_f6
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1397
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v2, p1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1411
    :goto_10b
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_45d

    .line 1390
    :pswitch_10f  #0x49
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_45d

    .line 1383
    :pswitch_11c  #0x47
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_45d

    .line 1380
    :pswitch_130  #0x46
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_45d

    .line 1377
    :pswitch_13c  #0x45
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_45d

    .line 1374
    :pswitch_148  #0x44
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_45d

    .line 1367
    :pswitch_15a  #0x42
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_45d

    .line 1364
    :pswitch_16d  #0x41
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_45d

    .line 1355
    :pswitch_17f  #0x40
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1356
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr p1, v0

    .line 1357
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1359
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v4, p1, v0

    const/4 v5, 0x1

    add-int v6, v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1360
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_45d

    .line 1503
    :pswitch_1a6  #0x3f
    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_45d

    .line 1506
    :pswitch_1ac  #0x3e
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_45d

    .line 1540
    :pswitch_1b1  #0x68
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_45d

    .line 1525
    :pswitch_1b6  #0x67
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    if-eqz p1, :cond_1cd

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c1

    goto/16 :goto_45d

    :cond_1c1
    const/4 p1, 0x0

    .line 1530
    :goto_1c2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge p1, v0, :cond_45d

    .line 1531
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c2

    .line 1527
    :cond_1cd
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v1, p1, v0

    goto/16 :goto_45d

    .line 1387
    :pswitch_1d5  #0x48, 0x66
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_45d

    .line 1521
    :pswitch_1e4  #0x65
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_45d

    .line 1518
    :pswitch_1f2  #0x64
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_45d

    .line 1515
    :pswitch_206  #0x63
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    if-nez p1, :cond_45d

    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1550
    :pswitch_215  #0x6e
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_244

    const/4 v0, 0x6

    if-eq p1, v0, :cond_221

    goto/16 :goto_45d

    .line 1559
    :cond_221
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "\u001b[%d;%dR"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1553
    :cond_244
    nop

    .line 1554
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_4c2

    invoke-virtual {p1, v2, v1, v0}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    goto/16 :goto_45d

    .line 1546
    :pswitch_252  #0x6d
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_45d

    .line 1543
    :pswitch_257  #0x6c
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_45d

    .line 1636
    :pswitch_25c  #0x75
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_45d

    .line 1593
    :pswitch_261  #0x74
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/16 v4, 0xb

    if-eq p1, v4, :cond_325

    const/16 v4, 0xd

    if-eq p1, v4, :cond_31c

    const/16 v4, 0xe

    if-eq p1, v4, :cond_2f7

    packed-switch p1, :pswitch_data_4b2

    goto/16 :goto_45d

    .line 1628
    :pswitch_276  #0x17
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_45d

    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1621
    :pswitch_28b  #0x16
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_45d

    .line 1624
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto/16 :goto_45d

    .line 1615
    :pswitch_2a3  #0x15
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b]l\u001b\\"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1612
    :pswitch_2ac  #0x14
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1609
    :pswitch_2b5  #0x13
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "\u001b[9;%d;%dt"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1605
    :pswitch_2d6  #0x12
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "\u001b[8;%d;%dt"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1602
    :cond_2f7
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    mul-int/lit8 v5, v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    mul-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "\u001b[4;%d;%dt"

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1598
    :cond_31c
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[3;0;0t"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1595
    :cond_325
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[1t"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_45d

    .line 1581
    :pswitch_32e  #0x73
    const/16 p1, 0x800

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result p1

    if-eqz p1, :cond_35c

    .line 1583
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1584
    add-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1586
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_45d

    .line 1589
    :cond_35c
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_45d

    .line 1574
    :pswitch_361  #0x72
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 1575
    add-int/2addr p1, v3

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1577
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_45d

    .line 1371
    :cond_38b
    :pswitch_38b  #0x43
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_45d

    .line 1509
    :cond_39e
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    goto/16 :goto_45d

    .line 1471
    :cond_3a8
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_3d1

    .line 1476
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    .line 1477
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v0, v2

    .line 1478
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1479
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v3, 0x0

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v6, v0, p1

    const/4 v7, 0x0

    add-int v8, v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1480
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_45d

    .line 1483
    :cond_3d1
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    goto/16 :goto_45d

    .line 1465
    :cond_3d6
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    :goto_3da
    if-ge v1, p1, :cond_45d

    .line 1467
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3da

    .line 1491
    :cond_3e2
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    .line 1492
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1493
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    :goto_3eb
    if-ltz v1, :cond_401

    .line 1494
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3fe

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_3fe

    .line 1496
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_401

    :cond_3fe
    add-int/lit8 v1, v1, -0x1

    goto :goto_3eb

    .line 1500
    :cond_401
    :goto_401
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_45d

    .line 1487
    :cond_404
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1488
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_45d

    .line 1456
    :cond_425
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1457
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr p1, v0

    .line 1458
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1460
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v2, v6, v0

    const/4 v5, 0x1

    move v3, v7

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1461
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_45d

    .line 1351
    :cond_44c
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_45d

    .line 1345
    :cond_452
    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_45d

    .line 1348
    :cond_458
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :cond_45d
    :goto_45d
    return-void

    :pswitch_data_45e
    .packed-switch 0x20
        :pswitch_4f  #00000020
        :pswitch_48  #00000021
        :pswitch_41  #00000022
    .end packed-switch

    :pswitch_data_468
    .packed-switch 0x3e
        :pswitch_1ac  #0000003e
        :pswitch_1a6  #0000003f
        :pswitch_17f  #00000040
        :pswitch_16d  #00000041
        :pswitch_15a  #00000042
        :pswitch_38b  #00000043
        :pswitch_148  #00000044
        :pswitch_13c  #00000045
        :pswitch_130  #00000046
        :pswitch_11c  #00000047
        :pswitch_1d5  #00000048
        :pswitch_10f  #00000049
        :pswitch_d0  #0000004a
        :pswitch_a3  #0000004b
        :pswitch_7e  #0000004c
        :pswitch_56  #0000004d
    .end packed-switch

    :pswitch_data_48c
    .packed-switch 0x63
        :pswitch_206  #00000063
        :pswitch_1f2  #00000064
        :pswitch_1e4  #00000065
        :pswitch_1d5  #00000066
        :pswitch_1b6  #00000067
        :pswitch_1b1  #00000068
    .end packed-switch

    :pswitch_data_49c
    .packed-switch 0x6c
        :pswitch_257  #0000006c
        :pswitch_252  #0000006d
        :pswitch_215  #0000006e
    .end packed-switch

    :pswitch_data_4a6
    .packed-switch 0x72
        :pswitch_361  #00000072
        :pswitch_32e  #00000073
        :pswitch_261  #00000074
        :pswitch_25c  #00000075
    .end packed-switch

    :pswitch_data_4b2
    .packed-switch 0x12
        :pswitch_2d6  #00000012
        :pswitch_2b5  #00000013
        :pswitch_2ac  #00000014
        :pswitch_2a3  #00000015
        :pswitch_28b  #00000016
        :pswitch_276  #00000017
    .end packed-switch

    :array_4c2
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doCsiBiggerThan(I)V
    .registers 4

    const/16 v0, 0x63

    if-eq p1, v0, :cond_31

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_c

    .line 1181
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto :goto_38

    .line 1178
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "termux"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1119
    :cond_31
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[>41;320;0c"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method private doCsiQuestionMark(I)V
    .registers 15

    const/16 v0, 0x24

    if-eq p1, v0, :cond_137

    const/16 v0, 0x68

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_117

    const/16 v3, 0x6c

    if-eq p1, v3, :cond_117

    const/16 v0, 0x6e

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq p1, v0, :cond_ea

    const/16 v0, 0x4a

    const/16 v5, 0x4b

    if-eq p1, v0, :cond_6d

    if-eq p1, v5, :cond_6d

    const/16 v0, 0x72

    const/16 v3, 0x73

    if-eq p1, v0, :cond_29

    if-eq p1, v3, :cond_29

    .line 1005
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_136

    .line 986
    :cond_29
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v6, v5

    if-lt v0, v6, :cond_34

    array-length v0, v5

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_34
    const/4 v0, 0x0

    .line 987
    :goto_35
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v5, :cond_136

    .line 988
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v5, v0

    .line 989
    invoke-static {v5}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v6

    if-ne v6, v4, :cond_57

    .line 991
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring request to save/recall decset bit="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "termux"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_57
    if-ne p1, v3, :cond_5f

    .line 994
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_6a

    .line 996
    :cond_5f
    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_66

    const/4 v6, 0x1

    goto :goto_67

    :cond_66
    const/4 v6, 0x0

    :goto_67
    invoke-virtual {p0, v6, v5}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 929
    :cond_6d
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-ne p1, v5, :cond_73

    const/4 v0, 0x1

    goto :goto_74

    :cond_73
    const/4 v0, 0x0

    .line 936
    :goto_74
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v5

    if-eqz v5, :cond_ae

    if-eq v5, v2, :cond_9a

    if-eq v5, v3, :cond_85

    .line 956
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    const/4 p1, -0x1

    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_c3

    :cond_85
    if-eqz v0, :cond_8b

    .line 951
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move v4, p1

    goto :goto_8c

    :cond_8b
    const/4 v4, 0x0

    .line 952
    :goto_8c
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eqz v0, :cond_93

    .line 953
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_a8

    :cond_93
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v12, v0

    move v0, p1

    move p1, v4

    move v4, v12

    goto :goto_c3

    :cond_9a
    if-eqz v0, :cond_9f

    .line 945
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_a0

    :cond_9f
    const/4 p1, 0x0

    .line 946
    :goto_a0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    .line 947
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move v4, p1

    move p1, v0

    move v0, v3

    :goto_a8
    add-int/2addr v0, v2

    move v12, v0

    move v0, p1

    move p1, v4

    move v4, v12

    goto :goto_c3

    .line 938
    :cond_ae
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 939
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 940
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eqz v0, :cond_bd

    add-int/lit8 v0, v4, 0x1

    move v12, v0

    move v0, p1

    move p1, v4

    move v4, v12

    goto :goto_c3

    .line 941
    :cond_bd
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move v12, v0

    move v0, p1

    move p1, v4

    move v4, v12

    .line 959
    :goto_c3
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v2

    :goto_c7
    if-ge p1, v4, :cond_136

    move v11, v1

    :goto_ca
    if-ge v11, v0, :cond_e7

    .line 962
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v5, p1, v11}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_e4

    .line 963
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v8, 0x20

    move v6, v11

    move v7, p1

    move-wide v9, v2

    invoke-virtual/range {v5 .. v10}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    :cond_e4
    add-int/lit8 v11, v11, 0x1

    goto :goto_ca

    :cond_e7
    add-int/lit8 p1, p1, 0x1

    goto :goto_c7

    .line 974
    :cond_ea
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_f5

    .line 980
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void

    .line 977
    :cond_f5
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "\u001b[?%d;%d;1R"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_136

    .line 969
    :cond_117
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v5, v4

    if-lt v3, v5, :cond_122

    array-length v3, v4

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_122
    const/4 v3, 0x0

    .line 970
    :goto_123
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_136

    if-ne p1, v0, :cond_12b

    const/4 v4, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v4, 0x0

    .line 971
    :goto_12c
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    :cond_136
    :goto_136
    return-void

    .line 1002
    :cond_137
    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    return-void
.end method

.method private doDeviceControl(I)V
    .registers 15

    const/16 v0, 0x5c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_25

    .line 907
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x2000

    if-le v0, v2, :cond_19

    .line 909
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 910
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_1ab

    .line 912
    :cond_19
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 913
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_1ab

    .line 807
    :cond_25
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 809
    const-string v0, "$q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "\'"

    if-eqz v0, :cond_5c

    .line 810
    const-string v0, "$q\"p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 813
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001bP1$r64;1\"p\u001b\\"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_1a8

    .line 815
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized DECRQSS string: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_1a8

    .line 817
    :cond_5c
    const-string v0, "+q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 855
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    :goto_71
    if-ge v4, v3, :cond_1a8

    aget-object v5, p1, v4

    .line 856
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v6, v0

    const-string v7, "termux"

    if-nez v6, :cond_193

    .line 857
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 858
    :goto_84
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_ba

    .line 859
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v10, v9

    int-to-char v9, v10

    .line 860
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x2

    goto :goto_84

    .line 862
    :cond_ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 864
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    sparse-switch v8, :sswitch_data_1ac

    :goto_c9
    goto :goto_f6

    :sswitch_ca
    const-string v8, "name"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d3

    goto :goto_c9

    :cond_d3
    const/4 v8, 0x3

    goto :goto_f7

    :sswitch_d5
    const-string v8, "TN"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_de

    goto :goto_c9

    :cond_de
    const/4 v8, 0x2

    goto :goto_f7

    :sswitch_e0
    const-string v8, "Co"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e9

    goto :goto_c9

    :cond_e9
    const/4 v8, 0x1

    goto :goto_f7

    :sswitch_eb
    const-string v8, "colors"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f4

    goto :goto_c9

    :cond_f4
    const/4 v8, 0x0

    goto :goto_f7

    :goto_f6
    const/4 v8, -0x1

    :goto_f7
    packed-switch v8, :pswitch_data_1be

    .line 874
    invoke-direct {p0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v8

    .line 875
    const/16 v10, 0x20

    invoke-direct {p0, v10}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v10

    .line 874
    invoke-static {v6, v8, v10}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    goto :goto_10e

    .line 872
    :pswitch_109  #0x2, 0x3
    const-string v8, "xterm"

    goto :goto_10e

    .line 868
    :pswitch_10c  #0x0, 0x1
    const-string v8, "256"

    .line 878
    :goto_10e
    const-string v10, "\u001b\\"

    if-nez v8, :cond_150

    .line 879
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "%1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_139

    const-string v8, "&8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_139

    .line 884
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unhandled termcap/terminfo name: \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_139
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u001bP0+r"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_1a4

    .line 889
    :cond_150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 890
    :goto_156
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_174

    .line 891
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    const-string v12, "%02X"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_156

    .line 893
    :cond_174
    iget-object v7, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u001bP1+r"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_1a4

    .line 896
    :cond_193
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Invalid device termcap/terminfo name of odd length: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_71

    .line 903
    :cond_1a8
    :goto_1a8
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    :goto_1ab
    return-void

    :sswitch_data_1ac
    .sparse-switch
        -0x50c14290 -> :sswitch_eb
        0x88c -> :sswitch_e0
        0xa7a -> :sswitch_d5
        0x337a8b -> :sswitch_ca
    .end sparse-switch

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_10c  #00000000
        :pswitch_10c  #00000001
        :pswitch_109  #00000002
        :pswitch_109  #00000003
    .end packed-switch
.end method

.method private doEsc(I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_141

    const/16 v2, 0x30

    if-eq v1, v2, :cond_145

    const/16 v2, 0x48

    const/4 v3, 0x1

    if-eq v1, v2, :cond_13a

    const/16 v2, 0x50

    const/4 v4, 0x0

    if-eq v1, v2, :cond_12f

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_12a

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_11f

    const/16 v2, 0x63

    if-eq v1, v2, :cond_111

    const/16 v2, 0x28

    if-eq v1, v2, :cond_10c

    const/16 v2, 0x29

    const/4 v5, 0x4

    if-eq v1, v2, :cond_108

    const/16 v2, 0x3d

    const/16 v6, 0x20

    if-eq v1, v2, :cond_104

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_100

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_df

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_145

    packed-switch v1, :pswitch_data_146

    packed-switch v1, :pswitch_data_152

    .line 1302
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_145

    .line 1245
    :pswitch_48  #0x39
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_55

    .line 1246
    add-int/2addr v1, v3

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_145

    .line 1248
    :cond_55
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v16, v1, v11

    .line 1249
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v2, v10

    add-int/lit8 v8, v2, -0x1

    move v7, v11

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1250
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v13, v1, -0x1

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v2, v4}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto/16 :goto_145

    .line 1242
    :pswitch_82  #0x38
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_145

    .line 1239
    :pswitch_87  #0x37
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_145

    .line 1230
    :pswitch_8c  #0x36
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v1, v6, :cond_97

    .line 1231
    sub-int/2addr v1, v3

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_145

    .line 1233
    :cond_97
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v16, v1, v11

    .line 1234
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v1, v6

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v10, v6, 0x1

    move v7, v11

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1235
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v2, v4}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto/16 :goto_145

    .line 1266
    :pswitch_c2  #0x46
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v3

    invoke-direct {v0, v4, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_145

    .line 1262
    :pswitch_ca  #0x45
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_d2

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_d2
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1263
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_145

    .line 1259
    :pswitch_da  #0x44
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_145

    .line 1274
    :cond_df
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v1, v7, :cond_fc

    .line 1275
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v6, 0x0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v11, v7, 0x1

    sub-int v9, v1, v11

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1276
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v4, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_145

    .line 1278
    :cond_fc
    sub-int/2addr v1, v3

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_145

    .line 1299
    :cond_100
    invoke-direct {v0, v6, v4}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_145

    .line 1292
    :cond_104
    invoke-direct {v0, v6, v3}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_145

    .line 1227
    :cond_108
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_145

    .line 1224
    :cond_10c
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_145

    .line 1254
    :cond_111
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1255
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v4, v4, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1256
    invoke-direct {v0, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_145

    .line 1295
    :cond_11f
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1296
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_145

    .line 1289
    :cond_12a
    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_145

    .line 1285
    :cond_12f
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1286
    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_145

    .line 1269
    :cond_13a
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v3, v1, v2

    goto :goto_145

    .line 1221
    :cond_141
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :cond_145
    :goto_145
    return-void

    :pswitch_data_146
    .packed-switch 0x36
        :pswitch_8c  #00000036
        :pswitch_87  #00000037
        :pswitch_82  #00000038
        :pswitch_48  #00000039
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x44
        :pswitch_da  #00000044
        :pswitch_ca  #00000045
        :pswitch_c2  #00000046
    .end packed-switch
.end method

.method private doEscPound(I)V
    .registers 11

    const/16 v0, 0x38

    if-eq p1, v0, :cond_8

    .line 1212
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_19

    .line 1209
    :cond_8
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v6, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_19
    return-void
.end method

.method private doLinefeed()V
    .registers 3

    .line 1193
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    .line 1194
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-lt v0, v1, :cond_f

    .line 1195
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1196
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    .line 1198
    :cond_f
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    return-void
.end method

.method private doOsc(I)V
    .registers 3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_11

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_b

    .line 1763
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    goto :goto_16

    .line 1760
    :cond_b
    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_16

    .line 1757
    :cond_11
    const-string p1, "\u0007"

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method private doOscEsc(I)V
    .registers 3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_12

    .line 1776
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1777
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1778
    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_17

    .line 1771
    :cond_12
    const-string p1, "\u001b\\"

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .registers 21

    .line 1785
    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "%04x"

    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1788
    :goto_9
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x39

    const-string v9, ""

    const/16 v10, 0x30

    const/16 v11, 0x3b

    const/4 v12, 0x1

    if-ge v5, v7, :cond_3e

    .line 1789
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_2a

    .line 1791
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/2addr v5, v12

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3f

    :cond_2a
    if-lt v7, v10, :cond_3a

    if-gt v7, v8, :cond_3a

    if-gez v6, :cond_32

    const/4 v6, 0x0

    goto :goto_34

    :cond_32
    mul-int/lit8 v6, v6, 0xa

    :goto_34
    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1796
    :cond_3a
    invoke-direct {v1, v7}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_3e
    move-object v5, v9

    :goto_3f
    if-eqz v6, :cond_22a

    if-eq v6, v12, :cond_22a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_22a

    const/4 v7, 0x4

    const/16 v13, 0xff

    if-eq v6, v7, :cond_1cd

    const/16 v0, 0x34

    if-eq v6, v0, :cond_196

    const/16 v0, 0x68

    if-eq v6, v0, :cond_152

    const/16 v0, 0x77

    if-eq v6, v0, :cond_22d

    packed-switch v6, :pswitch_data_232

    packed-switch v6, :pswitch_data_23c

    .line 1922
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_22d

    .line 1917
    :pswitch_62  #0xa, 0xb, 0xc
    add-int/lit16 v0, v6, 0xf6

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1851
    :goto_67
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v8, v0, :cond_6f

    const/4 v0, 0x1

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    if-nez v0, :cond_7f

    .line 1852
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_79

    goto :goto_7f

    :cond_79
    move-object/from16 v4, p1

    move/from16 v18, v9

    goto/16 :goto_13a

    .line 1854
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1855
    const-string v14, "?"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10f

    .line 1857
    iget-object v10, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v10, v10, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v10, v10, v7

    .line 1858
    const/high16 v14, 0xff0000

    and-int/2addr v14, v10

    shr-int/lit8 v14, v14, 0x10

    const v15, 0xffff

    mul-int v14, v14, v15

    div-int/2addr v14, v13

    .line 1859
    const v16, 0xff00

    and-int v16, v10, v16

    shr-int/lit8 v16, v16, 0x8

    mul-int v11, v16, v15

    div-int/2addr v11, v13

    .line 1860
    and-int/lit16 v10, v10, 0xff

    mul-int v10, v10, v15

    div-int/2addr v10, v13

    .line 1861
    iget-object v15, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u001b]"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";rgb:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_c1} :catch_135

    move/from16 v18, v9

    :try_start_c3
    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v9, v17

    invoke-static {v4, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v9, v14

    invoke-static {v4, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1862
    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_fe} :catch_10b

    move-object/from16 v4, p1

    :try_start_100
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1861
    invoke-virtual {v15, v9}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_11d

    :catch_10b
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_13b

    .line 1864
    :cond_10f
    move-object/from16 v4, p1

    move/from16 v18, v9

    iget-object v9, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v9, v7, v10}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1865
    iget-object v9, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v9}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    :goto_11d
    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_22d

    const/16 v0, 0x102

    if-gt v7, v0, :cond_22d

    add-int/lit8 v8, v8, 0x1

    .line 1868
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_12b
    .catch Ljava/lang/NumberFormatException; {:try_start_100 .. :try_end_12b} :catch_131

    if-lt v8, v0, :cond_12f

    goto/16 :goto_22d

    :cond_12f
    move v9, v8

    goto :goto_13d

    .line 1925
    :catch_131
    move-exception v0

    move/from16 v9, v18

    goto :goto_13d

    :catch_135
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v18, v9

    .line 1852
    :goto_13a
    nop

    .line 1868
    :goto_13b
    move/from16 v9, v18

    :goto_13d
    add-int/2addr v8, v12

    const/16 v11, 0x3b

    const/16 v13, 0xff

    goto/16 :goto_67

    .line 1916
    :pswitch_144  #0x6e, 0x6f, 0x70
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit16 v6, v6, 0x92

    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 1917
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_22d

    .line 1891
    :cond_152
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_164

    .line 1892
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 1893
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_22d

    :cond_164
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1897
    :goto_166
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_16e

    const/4 v0, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v0, 0x0

    :goto_16f
    if-nez v0, :cond_179

    .line 1898
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_194

    .line 1900
    :cond_179
    :try_start_179
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1901
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v6, v4}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 1902
    iget-object v4, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_18b} :catch_193

    if-eqz v0, :cond_18f

    goto/16 :goto_22d

    :cond_18f
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_194

    .line 1925
    :catch_193
    move-exception v0

    .line 1902
    :cond_194
    :goto_194
    add-int/2addr v2, v12

    goto :goto_166

    .line 1878
    :cond_196
    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1880
    :try_start_19c
    new-instance v2, Ljava/lang/String;

    add-int/2addr v0, v12

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1881
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalOutput;->clipboardText(Ljava/lang/String;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b2} :catch_1b4

    goto/16 :goto_22d

    .line 1883
    :catch_1b4
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OSC Manipulate selection, invalid string \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "termux"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22d

    :cond_1cd
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    .line 1818
    :goto_1d1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_1da

    const/16 v17, 0x1

    goto :goto_1dc

    :cond_1da
    const/16 v17, 0x0

    :goto_1dc
    if-eqz v17, :cond_1e1

    const/16 v7, 0x3b

    goto :goto_1e5

    .line 1819
    :cond_1e1
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_1e5
    const/16 v9, 0x3b

    if-ne v7, v9, :cond_20c

    if-gez v4, :cond_1f0

    add-int/lit8 v4, v2, 0x1

    const/16 v11, 0xff

    goto :goto_220

    :cond_1f0
    if-ltz v6, :cond_208

    const/16 v11, 0xff

    if-le v6, v11, :cond_1f7

    goto :goto_208

    .line 1828
    :cond_1f7
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1829
    iget-object v4, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    const/4 v4, -0x1

    const/4 v6, -0x1

    goto :goto_220

    .line 1825
    :cond_208
    :goto_208
    invoke-direct {v1, v7}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_20c
    const/16 v11, 0xff

    if-ltz v4, :cond_211

    goto :goto_220

    :cond_211
    if-gez v4, :cond_226

    if-lt v7, v10, :cond_226

    if-gt v7, v8, :cond_226

    if-gez v6, :cond_21b

    const/4 v6, 0x0

    goto :goto_21d

    :cond_21b
    mul-int/lit8 v6, v6, 0xa

    :goto_21d
    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    :goto_220
    if-eqz v17, :cond_223

    goto :goto_22d

    :cond_223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d1

    .line 1839
    :cond_226
    invoke-direct {v1, v7}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    .line 1805
    :cond_22a
    invoke-direct {v1, v5}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    .line 1925
    :cond_22d
    :goto_22d
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void

    nop

    :pswitch_data_232
    .packed-switch 0xa
        :pswitch_62  #0000000a
        :pswitch_62  #0000000b
        :pswitch_62  #0000000c
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x6e
        :pswitch_144  #0000006e
        :pswitch_144  #0000006f
        :pswitch_144  #00000070
    .end packed-switch
.end method

.method private doSetMode(Z)V
    .registers 4

    .line 1942
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/16 p1, 0x14

    if-eq v0, p1, :cond_14

    const/16 p1, 0x22

    if-eq v0, p1, :cond_1a

    .line 1956
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_1a

    .line 1948
    :cond_14
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_1a

    .line 1945
    :cond_18
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method private emitCodePoint(I)V
    .registers 20

    .line 2093
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v2, :cond_ce

    goto :goto_11

    :cond_d
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v2, :cond_ce

    :goto_11
    const/16 v2, 0x30

    if-eq v1, v2, :cond_c9

    packed-switch v1, :pswitch_data_168

    goto/16 :goto_ce

    :pswitch_1a  #0x7e
    const/16 v1, 0xb7

    const/16 v5, 0xb7

    goto/16 :goto_cf

    :pswitch_20  #0x7d
    const/16 v1, 0xa3

    const/16 v5, 0xa3

    goto/16 :goto_cf

    :pswitch_26  #0x7c
    const/16 v1, 0x2260

    const/16 v5, 0x2260

    goto/16 :goto_cf

    :pswitch_2c  #0x7b
    const/16 v1, 0x3c0

    const/16 v5, 0x3c0

    goto/16 :goto_cf

    :pswitch_32  #0x7a
    const/16 v1, 0x2265

    const/16 v5, 0x2265

    goto/16 :goto_cf

    :pswitch_38  #0x79
    const/16 v1, 0x2264

    const/16 v5, 0x2264

    goto/16 :goto_cf

    :pswitch_3e  #0x78
    const/16 v1, 0x2502

    const/16 v5, 0x2502

    goto/16 :goto_cf

    :pswitch_44  #0x77
    const/16 v1, 0x252c

    const/16 v5, 0x252c

    goto/16 :goto_cf

    :pswitch_4a  #0x76
    const/16 v1, 0x2534

    const/16 v5, 0x2534

    goto/16 :goto_cf

    :pswitch_50  #0x75
    const/16 v1, 0x2524

    const/16 v5, 0x2524

    goto/16 :goto_cf

    :pswitch_56  #0x74
    const/16 v1, 0x251c

    const/16 v5, 0x251c

    goto/16 :goto_cf

    :pswitch_5c  #0x73
    const/16 v1, 0x23bd

    const/16 v5, 0x23bd

    goto/16 :goto_cf

    :pswitch_62  #0x72
    const/16 v1, 0x23bc

    const/16 v5, 0x23bc

    goto/16 :goto_cf

    :pswitch_68  #0x71
    const/16 v1, 0x2500

    const/16 v5, 0x2500

    goto/16 :goto_cf

    :pswitch_6e  #0x70
    const/16 v1, 0x23bb

    const/16 v5, 0x23bb

    goto/16 :goto_cf

    :pswitch_74  #0x6f
    const/16 v1, 0x23ba

    const/16 v5, 0x23ba

    goto :goto_cf

    :pswitch_79  #0x6e
    const/16 v1, 0x253c

    const/16 v5, 0x253c

    goto :goto_cf

    :pswitch_7e  #0x6d
    const/16 v1, 0x2514

    const/16 v5, 0x2514

    goto :goto_cf

    :pswitch_83  #0x6c
    const/16 v1, 0x250c

    const/16 v5, 0x250c

    goto :goto_cf

    :pswitch_88  #0x6b
    const/16 v1, 0x2510

    const/16 v5, 0x2510

    goto :goto_cf

    :pswitch_8d  #0x6a
    const/16 v1, 0x2518

    const/16 v5, 0x2518

    goto :goto_cf

    :pswitch_92  #0x69
    const/16 v1, 0x240b

    const/16 v5, 0x240b

    goto :goto_cf

    :pswitch_97  #0x68
    const/16 v1, 0xa

    const/16 v5, 0xa

    goto :goto_cf

    :pswitch_9c  #0x67
    const/16 v1, 0xb1

    const/16 v5, 0xb1

    goto :goto_cf

    :pswitch_a1  #0x66
    const/16 v1, 0xb0

    const/16 v5, 0xb0

    goto :goto_cf

    :pswitch_a6  #0x65
    const/16 v1, 0x240a

    const/16 v5, 0x240a

    goto :goto_cf

    :pswitch_ab  #0x64
    const/16 v1, 0xd

    const/16 v5, 0xd

    goto :goto_cf

    :pswitch_b0  #0x63
    const/16 v1, 0x240c

    const/16 v5, 0x240c

    goto :goto_cf

    :pswitch_b5  #0x62
    const/16 v1, 0x2409

    const/16 v5, 0x2409

    goto :goto_cf

    :pswitch_ba  #0x61
    const/16 v1, 0x2592

    const/16 v5, 0x2592

    goto :goto_cf

    :pswitch_bf  #0x60
    const/16 v1, 0x25c6

    const/16 v5, 0x25c6

    goto :goto_cf

    :pswitch_c4  #0x5f
    const/16 v1, 0x20

    const/16 v5, 0x20

    goto :goto_cf

    :cond_c9
    const/16 v1, 0x2588

    const/16 v5, 0x2588

    goto :goto_cf

    .line 2198
    :cond_ce
    :goto_ce
    move v5, v1

    :goto_cf
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    .line 2199
    invoke-static {v5}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v8

    .line 2200
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    const/4 v10, 0x0

    if-ne v2, v3, :cond_e4

    const/4 v2, 0x1

    goto :goto_e5

    :cond_e4
    const/4 v2, 0x0

    :goto_e5
    const/4 v3, 0x2

    if-eqz v1, :cond_10b

    if-eqz v2, :cond_110

    .line 2203
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v2, :cond_f0

    if-eq v8, v9, :cond_f2

    :cond_f0
    if-ne v8, v3, :cond_110

    .line 2204
    :cond_f2
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 2205
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2206
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, v9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ge v2, v3, :cond_107

    .line 2207
    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_110

    .line 2209
    :cond_107
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto :goto_110

    :cond_10b
    if-eqz v2, :cond_110

    if-ne v8, v3, :cond_110

    return-void

    .line 2218
    :cond_110
    :goto_110
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v2, :cond_12d

    if-lez v8, :cond_12d

    .line 2220
    iget v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v2, v12, v8

    .line 2221
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v2, v3, :cond_12d

    .line 2222
    iget-object v11, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v14, v3, v2

    const/4 v15, 0x1

    move v13, v4

    move/from16 v16, v2

    move/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    :cond_12d
    if-gtz v8, :cond_139

    .line 2225
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v2, :cond_139

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v2, :cond_139

    const/4 v2, 0x1

    goto :goto_13a

    :cond_139
    const/4 v2, 0x0

    .line 2226
    :goto_13a
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v2

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v11

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-wide v6, v11

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    if-eqz v1, :cond_15a

    if-lez v8, :cond_15a

    .line 2229
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v8

    if-ne v1, v2, :cond_158

    const/4 v10, 0x1

    :cond_158
    iput-boolean v10, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2231
    :cond_15a
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v8

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return-void

    nop

    :pswitch_data_168
    .packed-switch 0x5f
        :pswitch_c4  #0000005f
        :pswitch_bf  #00000060
        :pswitch_ba  #00000061
        :pswitch_b5  #00000062
        :pswitch_b0  #00000063
        :pswitch_ab  #00000064
        :pswitch_a6  #00000065
        :pswitch_a1  #00000066
        :pswitch_9c  #00000067
        :pswitch_97  #00000068
        :pswitch_92  #00000069
        :pswitch_8d  #0000006a
        :pswitch_88  #0000006b
        :pswitch_83  #0000006c
        :pswitch_7e  #0000006d
        :pswitch_79  #0000006e
        :pswitch_74  #0000006f
        :pswitch_6e  #00000070
        :pswitch_68  #00000071
        :pswitch_62  #00000072
        :pswitch_5c  #00000073
        :pswitch_56  #00000074
        :pswitch_50  #00000075
        :pswitch_4a  #00000076
        :pswitch_44  #00000077
        :pswitch_3e  #00000078
        :pswitch_38  #00000079
        :pswitch_32  #0000007a
        :pswitch_2c  #0000007b
        :pswitch_26  #0000007c
        :pswitch_20  #0000007d
        :pswitch_1a  #0000007e
    .end packed-switch
.end method

.method private finishSequence()V
    .registers 2

    .line 2084
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .registers 2

    .line 2080
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private getArg(IIZ)I
    .registers 5

    .line 2022
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget p1, v0, p1

    if-ltz p1, :cond_c

    if-nez p1, :cond_b

    if-eqz p3, :cond_b

    goto :goto_c

    :cond_b
    move p2, p1

    :cond_c
    :goto_c
    return p2
.end method

.method private getArg0(I)I
    .registers 4

    .line 2014
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result p1

    return p1
.end method

.method private getArg1(I)I
    .registers 3

    .line 2018
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result p1

    return p1
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

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private logError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x19

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x42

    if-eq p0, v0, :cond_47

    const/16 v0, 0x45

    if-eq p0, v0, :cond_44

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_41

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_38

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_35

    const/4 v0, 0x5

    if-eq p0, v0, :cond_33

    const/4 v0, 0x6

    if-eq p0, v0, :cond_31

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2e

    const/4 p0, -0x1

    return p0

    :cond_2e
    const/16 p0, 0x8

    return p0

    :cond_31
    const/4 p0, 0x4

    return p0

    :cond_33
    const/4 p0, 0x2

    return p0

    :cond_35
    const/16 p0, 0x400

    return p0

    :cond_38
    const/16 p0, 0x200

    return p0

    :cond_3b
    const/16 p0, 0x100

    return p0

    :cond_3e
    const/16 p0, 0x80

    return p0

    :cond_41
    const/16 p0, 0x40

    return p0

    :cond_44
    const/16 p0, 0x800

    return p0

    :cond_47
    const/16 p0, 0x20

    return p0

    :cond_4a
    const/16 p0, 0x10

    return p0

    :cond_4d
    return v0
.end method

.method private nextTabStop(I)I
    .registers 4

    .line 919
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_19

    .line 920
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 921
    :cond_19
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private parseArg(I)V
    .registers 6

    const/16 v0, 0x30

    if-lt p1, v0, :cond_1f

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1f

    .line 1991
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 1992
    aget v3, v2, v1

    sub-int/2addr p1, v0

    if-ltz v3, :cond_17

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr p1, v3

    .line 2000
    :cond_17
    aput p1, v2, v1

    .line 2002
    :cond_19
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_37

    :cond_1f
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_34

    .line 2004
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2e

    .line 2005
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2007
    :cond_2e
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_37

    .line 2009
    :cond_34
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    :goto_37
    return-void
.end method

.method private processByte(B)V
    .registers 12

    .line 404
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0xfffd

    if-lez v0, :cond_88

    and-int/lit16 v5, p1, 0xc0

    const/16 v6, 0x80

    const/4 v7, 0x0

    if-ne v5, v6, :cond_7d

    .line 407
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v9, v8, 0x1

    int-to-byte v9, v9

    iput-byte v9, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v5, v8

    sub-int/2addr v0, v3

    int-to-byte p1, v0

    .line 408
    iput-byte p1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez p1, :cond_b5

    if-ne v9, v2, :cond_27

    const/16 p1, 0x1f

    goto :goto_2d

    :cond_27
    if-ne v9, v1, :cond_2c

    const/16 p1, 0xf

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x7

    :goto_2d
    int-to-byte p1, p1

    .line 410
    aget-byte v0, v5, v7

    and-int/2addr p1, v0

    const/4 v0, 0x1

    .line 411
    :goto_32
    iget-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ge v0, v5, :cond_42

    .line 412
    shl-int/lit8 p1, p1, 0x6

    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v5, v5, v0

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_42
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_48

    if-gt v5, v3, :cond_55

    :cond_48
    const/16 v3, 0x7ff

    if-ge p1, v3, :cond_4e

    if-gt v5, v2, :cond_55

    :cond_4e
    const v2, 0xffff

    if-ge p1, v2, :cond_58

    if-le v5, v1, :cond_58

    :cond_55
    const p1, 0xfffd

    .line 419
    :cond_58
    iput-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-lt p1, v6, :cond_6e

    const/16 v1, 0x9f

    if-gt p1, v1, :cond_6e

    .line 424
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 425
    and-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_b5

    .line 427
    :cond_6e
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-eqz v0, :cond_79

    const/16 v1, 0x13

    if-eq v0, v1, :cond_79

    move v4, p1

    .line 432
    :cond_79
    invoke-virtual {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_b5

    .line 437
    :cond_7d
    iput-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 438
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 446
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_b5

    :cond_88
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_90

    .line 450
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    return-void

    :cond_90
    and-int/lit16 v0, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v0, v5, :cond_99

    .line 453
    iput-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_aa

    :cond_99
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_a2

    .line 455
    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_aa

    :cond_a2
    and-int/lit16 v0, p1, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_b6

    .line 457
    iput-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 463
    :goto_aa
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    :cond_b5
    :goto_b5
    return-void

    .line 460
    :cond_b6
    invoke-virtual {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    return-void
.end method

.method private resizeScreen()V
    .registers 11

    .line 346
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, v2, :cond_11

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_15

    :cond_11
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    :goto_15
    move v5, v1

    .line 348
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v9

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Lcom/termux/terminal/TerminalBuffer;->resize(III[IJZ)V

    .line 349
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 350
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return-void
.end method

.method private restoreCursor()V
    .registers 4

    .line 1323
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1324
    :goto_b
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
.end method

.method private saveCursor()V
    .registers 3

    .line 1309
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1310
    :goto_b
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
.end method

.method private scrollDownOneLine()V
    .registers 18

    .line 1977
    move-object/from16 v0, p0

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 1978
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v7, :cond_21

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v1, v2, :cond_13

    goto :goto_21

    .line 1984
    :cond_13
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_4a

    .line 1980
    :cond_21
    :goto_21
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v4, v8, 0x1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v5, v1, v7

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v8

    add-int/lit8 v6, v1, -0x1

    move v3, v7

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1982
    iget-object v9, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v11, v1, -0x1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v12, v1, v10

    const/4 v13, 0x1

    const/16 v14, 0x20

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    int-to-long v1, v1

    move-wide v15, v1

    invoke-virtual/range {v9 .. v16}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_4a
    return-void
.end method

.method private selectGraphicRendition()V
    .registers 13

    .line 1649
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v0, v2, :cond_c

    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1650
    :goto_e
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v1, v2, :cond_1c9

    .line 1651
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v4, v1

    if-gez v5, :cond_1d

    if-lez v2, :cond_1c

    goto/16 :goto_1c6

    :cond_1c
    const/4 v5, 0x0

    :cond_1d
    const/16 v6, 0x101

    const/16 v7, 0x100

    if-nez v5, :cond_2b

    .line 1660
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1661
    iput v6, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1662
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_2b
    if-ne v5, v3, :cond_34

    .line 1664
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_34
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3e

    .line 1666
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v7

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_3e
    const/4 v9, 0x3

    if-ne v5, v9, :cond_48

    .line 1668
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v8

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_48
    const/4 v9, 0x4

    if-ne v5, v9, :cond_52

    .line 1670
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v9

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_52
    const/4 v9, 0x5

    const/16 v10, 0x8

    if-ne v5, v9, :cond_5e

    .line 1672
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v10

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_5e
    const/4 v11, 0x7

    if-ne v5, v11, :cond_69

    .line 1674
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_69
    if-ne v5, v10, :cond_73

    .line 1676
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_73
    const/16 v10, 0x9

    if-ne v5, v10, :cond_7f

    .line 1678
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_7f
    const/16 v10, 0xa

    if-ne v5, v10, :cond_85

    :goto_83
    goto/16 :goto_1c6

    :cond_85
    const/16 v10, 0xb

    if-ne v5, v10, :cond_8a

    goto :goto_83

    :cond_8a
    const/16 v10, 0x16

    if-ne v5, v10, :cond_96

    .line 1684
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v2, v2, -0x102

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_96
    const/16 v10, 0x17

    if-ne v5, v10, :cond_a2

    .line 1686
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_a2
    const/16 v10, 0x18

    if-ne v5, v10, :cond_ae

    .line 1688
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_ae
    const/16 v10, 0x19

    if-ne v5, v10, :cond_ba

    .line 1690
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_ba
    const/16 v10, 0x1b

    if-ne v5, v10, :cond_c6

    .line 1692
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_c6
    const/16 v10, 0x1c

    if-ne v5, v10, :cond_d2

    .line 1694
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_d2
    const/16 v10, 0x1d

    if-ne v5, v10, :cond_de

    .line 1696
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_1c6

    :cond_de
    const/16 v10, 0x1e

    if-lt v5, v10, :cond_ec

    const/16 v10, 0x25

    if-gt v5, v10, :cond_ec

    .line 1698
    add-int/lit8 v5, v5, -0x1e

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1c6

    :cond_ec
    const/16 v10, 0x26

    if-eq v5, v10, :cond_12f

    const/16 v11, 0x30

    if-ne v5, v11, :cond_f5

    goto :goto_12f

    :cond_f5
    const/16 v2, 0x27

    if-ne v5, v2, :cond_fd

    .line 1738
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1c6

    :cond_fd
    const/16 v2, 0x28

    if-lt v5, v2, :cond_10b

    const/16 v2, 0x2f

    if-gt v5, v2, :cond_10b

    .line 1740
    add-int/lit8 v5, v5, -0x28

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1c6

    :cond_10b
    const/16 v2, 0x31

    if-ne v5, v2, :cond_113

    .line 1742
    iput v6, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1c6

    :cond_113
    const/16 v2, 0x5a

    if-lt v5, v2, :cond_121

    const/16 v2, 0x61

    if-gt v5, v2, :cond_121

    .line 1744
    add-int/lit8 v5, v5, -0x52

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_1c6

    :cond_121
    const/16 v2, 0x64

    if-lt v5, v2, :cond_1c6

    const/16 v2, 0x6b

    if-gt v5, v2, :cond_1c6

    .line 1746
    add-int/lit8 v5, v5, -0x5c

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_1c6

    :cond_12f
    :goto_12f
    add-int/lit8 v6, v1, 0x2

    if-le v6, v2, :cond_135

    goto/16 :goto_1c6

    .line 1704
    :cond_135
    add-int/lit8 v7, v1, 0x1

    aget v7, v4, v7

    if-ne v7, v8, :cond_1a2

    add-int/lit8 v7, v1, 0x4

    if-le v7, v2, :cond_159

    .line 1707
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Too few CSI"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";2 RGB arguments"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "termux"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c6

    .line 1709
    :cond_159
    aget v2, v4, v6

    add-int/lit8 v1, v1, 0x3

    aget v1, v4, v1

    aget v4, v4, v7

    if-ltz v2, :cond_181

    if-ltz v1, :cond_181

    if-ltz v4, :cond_181

    const/16 v6, 0xff

    if-gt v2, v6, :cond_181

    if-gt v1, v6, :cond_181

    if-le v4, v6, :cond_170

    goto :goto_181

    :cond_170
    shl-int/lit8 v1, v1, 0x8

    shl-int/lit8 v2, v2, 0x10

    const/high16 v6, -0x1000000

    or-int/2addr v2, v6

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    if-ne v5, v10, :cond_17e

    .line 1715
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_1a0

    .line 1717
    :cond_17e
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_1a0

    .line 1711
    :cond_181
    :goto_181
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid RGB: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    :goto_1a0
    move v1, v7

    goto :goto_1c6

    :cond_1a2
    if-ne v7, v9, :cond_1b5

    .line 1723
    aget v1, v4, v6

    if-ltz v1, :cond_1b3

    const/16 v2, 0x103

    if-ge v1, v2, :cond_1b3

    if-ne v5, v10, :cond_1b1

    .line 1727
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_1b3

    .line 1729
    :cond_1b1
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    :cond_1b3
    :goto_1b3
    move v1, v6

    goto :goto_1c6

    .line 1735
    :cond_1b5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ISO-8613-3 SGR first argument: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    :cond_1c6
    :goto_1c6
    add-int/2addr v1, v3

    goto/16 :goto_e

    :cond_1c9
    return-void
.end method

.method private setCursorCol(I)V
    .registers 2

    .line 2240
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2241
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .registers 3

    .line 2246
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    return-void
.end method

.method private setCursorPosition(II)V
    .registers 7

    .line 1966
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1967
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v0, :cond_11

    .line 1968
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_13

    :cond_11
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_13
    if-eqz v0, :cond_17

    .line 1969
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_17
    if-eqz v0, :cond_1c

    .line 1970
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_1e

    :cond_1c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1971
    :goto_1e
    add-int/2addr p2, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1972
    add-int/2addr p1, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1973
    invoke-direct {p0, p2, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    return-void
.end method

.method private setCursorRow(I)V
    .registers 2

    .line 2235
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2236
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorRowCol(II)V
    .registers 4

    .line 2251
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2252
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2253
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .registers 6

    if-eqz p2, :cond_12

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x40

    if-ne p1, v2, :cond_d

    .line 237
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_12

    :cond_d
    if-ne p1, v1, :cond_12

    .line 239
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_12
    :goto_12
    if-eqz p2, :cond_1a

    .line 243
    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_21

    .line 245
    :cond_1a
    xor-int/lit8 p1, p1, -0x1

    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr p1, p2

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    :goto_21
    return-void
.end method

.method private setDefaultTabStops()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 388
    :goto_2
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v1, v2, :cond_16

    .line 389
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_10

    if-eqz v1, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 4

    .line 2308
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2309
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2310
    invoke-static {v0, p1}, Lcom/termux/terminal/TerminalEmulator$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2311
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private startEscapeSequence()V
    .registers 3

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
    .registers 5

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unimplemented sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%04x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2040
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownParameter(I)V
    .registers 4

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2050
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownSequence(I)V
    .registers 4

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2045
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method


# virtual methods
.method public append([BI)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_b

    .line 400
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public clearScrollCounter()V
    .registers 2

    .line 2261
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .registers 12

    .line 1010
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 1012
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_a
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_a0

    packed-switch p2, :pswitch_data_ce

    packed-switch p2, :pswitch_data_e0

    packed-switch p2, :pswitch_data_f2

    .line 1101
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_9e

    .line 1029
    :sswitch_1c
    if-nez p1, :cond_9e

    .line 1049
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1050
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto/16 :goto_9e

    .line 1067
    :pswitch_26  #0x6
    if-eqz p1, :cond_9e

    .line 1036
    invoke-direct {p0, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_9e

    .line 1022
    :pswitch_2d  #0x3
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1023
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1024
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1026
    const/16 p1, 0x800

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1028
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1029
    invoke-direct {p0, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_9e

    .line 1101
    :pswitch_49  #0x418
    if-eqz p1, :cond_4f

    .line 1065
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto :goto_9e

    .line 1067
    :cond_4f
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto :goto_9e

    .line 1050
    :pswitch_53  #0x417, 0x419
    :sswitch_53
    if-eqz p1, :cond_58

    .line 1074
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_5a

    :cond_58
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    :goto_5a
    move-object v1, p2

    .line 1075
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v1, p2, :cond_9e

    .line 1076
    iget p2, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne p2, v2, :cond_6b

    iget p2, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq p2, v2, :cond_6c

    :cond_6b
    const/4 v0, 0x1

    :cond_6c
    if-eqz p1, :cond_71

    .line 1077
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1078
    :cond_71
    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-nez p1, :cond_86

    .line 1080
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget p1, p1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1081
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget p2, p2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1082
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    if-eqz v0, :cond_86

    .line 1085
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1086
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_86
    if-eqz v0, :cond_8b

    .line 1090
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1092
    :cond_8b
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, p1, :cond_9e

    .line 1093
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    :cond_9e
    :goto_9e
    :pswitch_9e  #0x4, 0x5, 0x7, 0x8, 0x9, 0x3e8, 0x3e9, 0x3ea, 0x3eb, 0x3ec, 0x3ed, 0x3ee
    :sswitch_9e
    return-void

    nop

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_9e
        0xc -> :sswitch_9e
        0x19 -> :sswitch_9e
        0x28 -> :sswitch_9e
        0x2d -> :sswitch_9e
        0x2f -> :sswitch_53
        0x42 -> :sswitch_9e
        0x45 -> :sswitch_1c
        0x3f7 -> :sswitch_9e
        0x40a -> :sswitch_9e
        0x7d4 -> :sswitch_9e
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x3
        :pswitch_2d  #00000003
        :pswitch_9e  #00000004
        :pswitch_9e  #00000005
        :pswitch_26  #00000006
        :pswitch_9e  #00000007
        :pswitch_9e  #00000008
        :pswitch_9e  #00000009
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x3e8
        :pswitch_9e  #000003e8
        :pswitch_9e  #000003e9
        :pswitch_9e  #000003ea
        :pswitch_9e  #000003eb
        :pswitch_9e  #000003ec
        :pswitch_9e  #000003ed
        :pswitch_9e  #000003ee
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x417
        :pswitch_53  #00000417
        :pswitch_49  #00000418
        :pswitch_53  #00000419
    .end packed-switch
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

    move-result-object p1

    return-object p1
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

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

    if-nez v0, :cond_13

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
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
    .registers 5

    .line 2318
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2320
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2321
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[200~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2322
    :cond_17
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_25

    .line 2323
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[201~"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public processCodePoint(I)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_3f4

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3e9

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_3e9

    const/16 v4, 0xa

    const/16 v5, 0x1b

    if-eq v1, v5, :cond_3d8

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_3f6

    .line 533
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 534
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v7, 0x1000

    const/4 v8, -0x1

    const/16 v9, 0x7e

    const/16 v10, 0x71

    const/16 v11, 0x70

    const/16 v13, 0x74

    const/16 v14, 0x78

    const/16 v15, 0x20

    const/4 v12, 0x2

    packed-switch v4, :pswitch_data_40c

    .line 794
    :pswitch_30  #0x5
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    .line 511
    :pswitch_35  #0xf
    iput-boolean v6, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto/16 :goto_3f4

    .line 508
    :pswitch_39  #0xe
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto/16 :goto_3f4

    .line 505
    :pswitch_3d  #0xd
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_3f4

    .line 502
    :pswitch_44  #0xa, 0xb, 0xc
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_3f4

    .line 497
    :pswitch_49  #0x9
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_3f4

    .line 478
    :pswitch_51  #0x8
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v1, v2, :cond_71

    .line 480
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v1, v6

    if-ltz v1, :cond_3f4

    .line 481
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v2

    if-eqz v2, :cond_3f4

    .line 482
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalBuffer;->clearLineWrap(I)V

    .line 483
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v6

    invoke-direct {v0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_3f4

    .line 486
    :cond_71
    sub-int/2addr v2, v6

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_3f4

    .line 472
    :pswitch_77  #0x7
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-ne v2, v4, :cond_80

    .line 473
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_3f4

    .line 475
    :cond_80
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    goto/16 :goto_3f4

    .line 794
    :pswitch_87  #0x13
    if-ne v1, v11, :cond_8e

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_3d1

    .line 557
    :cond_8e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    :pswitch_93  #0x12
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_bc

    .line 708
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    .line 709
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 711
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v6, 0x0

    sub-int v7, v1, v2

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v9, v5, v2

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 712
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_3d1

    :cond_bc
    if-ne v1, v9, :cond_e4

    .line 714
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    .line 715
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 717
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v5, v9, v2

    const/4 v6, 0x0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v10, 0x0

    move v7, v1

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 718
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v4, v1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_3d1

    .line 720
    :cond_e4
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    :pswitch_e9  #0x11
    if-ne v1, v10, :cond_10b

    .line 692
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eqz v2, :cond_103

    if-ne v2, v12, :cond_f4

    goto :goto_103

    :cond_f4
    if-ne v2, v6, :cond_fe

    .line 698
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_3d1

    .line 700
    :cond_fe
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    .line 695
    :cond_103
    :goto_103
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_3d1

    .line 703
    :cond_10b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    .line 785
    :pswitch_110  #0x10
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-ne v1, v14, :cond_123

    if-ltz v2, :cond_123

    if-gt v2, v12, :cond_123

    if-ne v2, v12, :cond_11d

    goto :goto_11e

    :cond_11d
    const/4 v6, 0x0

    .line 788
    :goto_11e
    invoke-direct {v0, v7, v6}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_3d1

    .line 790
    :cond_123
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    .line 757
    :pswitch_128  #0xf
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eq v1, v10, :cond_139

    if-eq v1, v13, :cond_3d1

    const/16 v2, 0x75

    if-eq v1, v2, :cond_3d1

    .line 781
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    :cond_139
    packed-switch v2, :pswitch_data_438

    goto/16 :goto_3d1

    .line 772
    :pswitch_13e  #0x5, 0x6
    iput v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_3d1

    .line 768
    :pswitch_142  #0x3, 0x4
    iput v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_3d1

    .line 764
    :pswitch_146  #0x0, 0x1, 0x2
    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_3d1

    :pswitch_14a  #0xe
    if-ne v1, v11, :cond_1a5

    .line 737
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_17f

    const/16 v2, 0x417

    if-eq v1, v2, :cond_17f

    const/16 v2, 0x419

    if-ne v1, v2, :cond_15d

    goto :goto_17f

    .line 743
    :cond_15d
    invoke-static {v1}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v2

    if-ne v2, v8, :cond_16a

    .line 745
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-eqz v2, :cond_187

    goto :goto_185

    .line 747
    :cond_16a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got DECRQM for unrecognized private DEC mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "termux"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_188

    .line 741
    :cond_17f
    :goto_17f
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v4, :cond_187

    .line 745
    :goto_185
    const/4 v2, 0x1

    goto :goto_188

    :cond_187
    const/4 v2, 0x2

    .line 751
    :goto_188
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    const-string v1, "\u001b[?%d;%d$y"

    invoke-static {v5, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_3d1

    .line 753
    :cond_1a5
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    .line 732
    :pswitch_1aa  #0xd
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    goto/16 :goto_3d1

    .line 564
    :pswitch_1af  #0xc
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    goto/16 :goto_3d1

    .line 729
    :pswitch_1b4  #0xb
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    goto/16 :goto_3d1

    .line 726
    :pswitch_1b9  #0xa
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_3d1

    .line 567
    :pswitch_1be  #0x8
    const/4 v4, 0x4

    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v10

    if-eqz v10, :cond_1c8

    .line 568
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_1c9

    :cond_1c8
    const/4 v11, 0x0

    :goto_1c9
    if-eqz v10, :cond_1ce

    .line 569
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_1d0

    :cond_1ce
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_1d0
    if-eqz v10, :cond_1d5

    .line 570
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    goto :goto_1d6

    :cond_1d5
    const/4 v2, 0x0

    :goto_1d6
    if-eqz v10, :cond_1db

    .line 571
    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_1dd

    :cond_1db
    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :goto_1dd
    const/16 v5, 0x72

    const/4 v4, 0x3

    if-eq v1, v5, :cond_2f6

    if-eq v1, v13, :cond_2f6

    const/16 v5, 0x76

    if-eq v1, v5, :cond_289

    const/16 v5, 0x7b

    if-eq v1, v14, :cond_1f7

    const/16 v12, 0x7a

    if-eq v1, v12, :cond_1f7

    if-eq v1, v5, :cond_1f7

    .line 686
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3d1

    :cond_1f7
    if-eq v1, v14, :cond_1fb

    const/4 v12, 0x1

    goto :goto_1fc

    :cond_1fb
    const/4 v12, 0x0

    :goto_1fc
    if-ne v1, v5, :cond_200

    const/4 v1, 0x1

    goto :goto_201

    :cond_200
    const/4 v1, 0x0

    :goto_201
    if-eqz v12, :cond_207

    if-eqz v1, :cond_207

    const/4 v5, 0x1

    goto :goto_208

    :cond_207
    const/4 v5, 0x0

    :goto_208
    if-eqz v12, :cond_20e

    const/16 v8, 0x20

    const/4 v12, 0x0

    goto :goto_213

    .line 607
    :cond_20e
    invoke-direct {v0, v3, v8, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    const/4 v12, 0x1

    :goto_213
    if-lt v8, v15, :cond_217

    if-le v8, v9, :cond_21f

    :cond_217
    const/16 v9, 0xa0

    if-lt v8, v9, :cond_3d1

    const/16 v9, 0xff

    if-gt v8, v9, :cond_3d1

    .line 613
    :cond_21f
    invoke-direct {v0, v12, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    add-int/2addr v9, v11

    add-int/lit8 v13, v7, 0x1

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 614
    add-int/lit8 v13, v12, 0x1

    invoke-direct {v0, v13, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v13

    add-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 615
    add-int/lit8 v14, v12, 0x2

    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v14, v15, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v14

    add-int/2addr v14, v11

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 616
    add-int/2addr v12, v4

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v12, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v10

    sub-int/2addr v9, v6

    :goto_255
    if-ge v9, v7, :cond_3d1

    add-int/lit8 v4, v13, -0x1

    :goto_259
    if-ge v4, v2, :cond_286

    if-eqz v1, :cond_26b

    .line 620
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v12, v9, v4}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_283

    .line 621
    :cond_26b
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v5, :cond_276

    invoke-virtual {v12, v9, v4}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v14

    move-wide/from16 v20, v14

    goto :goto_278

    :cond_276
    move-wide/from16 v20, v10

    :goto_278
    move-object/from16 v16, v12

    move/from16 v17, v4

    move/from16 v18, v9

    move/from16 v19, v8

    invoke-virtual/range {v16 .. v21}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    :cond_283
    add-int/lit8 v4, v4, 0x1

    goto :goto_259

    :cond_286
    add-int/lit8 v9, v9, 0x1

    goto :goto_255

    .line 583
    :cond_289
    invoke-direct {v0, v3, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    sub-int/2addr v1, v6

    add-int/2addr v1, v11

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 584
    invoke-direct {v0, v6, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    sub-int/2addr v1, v6

    add-int/2addr v1, v2

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 586
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v1, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    add-int/2addr v1, v11

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 587
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v4, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 589
    const/4 v5, 0x5

    invoke-direct {v0, v5, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v5, v11

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 590
    const/4 v5, 0x6

    invoke-direct {v0, v5, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 592
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int v2, v2, v19

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 593
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v1, v1, v18

    sub-int/2addr v4, v14

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 594
    iget-object v13, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual/range {v13 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    goto/16 :goto_3d1

    :cond_2f6
    if-ne v1, v13, :cond_2fa

    const/4 v1, 0x1

    goto :goto_2fb

    :cond_2fa
    const/4 v1, 0x0

    .line 630
    :goto_2fb
    invoke-direct {v0, v3, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 631
    invoke-direct {v0, v6, v6, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 632
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v9, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    add-int/2addr v9, v6

    sub-int/2addr v7, v6

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 633
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v4, v9, v6}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v6

    add-int/lit8 v9, v10, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 634
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    const/4 v12, 0x4

    if-lt v9, v12, :cond_3d1

    .line 635
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v13, v12

    if-lt v9, v13, :cond_334

    array-length v9, v12

    sub-int/2addr v9, v6

    iput v9, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_334
    const/4 v12, 0x4

    .line 636
    :goto_335
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v12, v9, :cond_3d1

    .line 639
    invoke-direct {v0, v12, v3, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    if-eqz v9, :cond_371

    if-eq v9, v6, :cond_36d

    const/4 v13, 0x4

    if-eq v9, v13, :cond_36a

    const/16 v14, 0x8

    const/4 v15, 0x5

    if-eq v9, v15, :cond_37e

    const/4 v6, 0x7

    const/16 v16, 0x10

    if-eq v9, v6, :cond_367

    const/16 v6, 0x16

    if-eq v9, v6, :cond_365

    const/16 v6, 0x1b

    if-eq v9, v6, :cond_362

    const/16 v6, 0x18

    if-eq v9, v6, :cond_360

    const/16 v6, 0x19

    if-eq v9, v6, :cond_379

    const/4 v14, 0x0

    goto :goto_37e

    :cond_360
    const/4 v14, 0x4

    goto :goto_379

    :cond_362
    const/16 v14, 0x10

    goto :goto_379

    :cond_365
    const/4 v14, 0x1

    goto :goto_379

    :cond_367
    const/16 v14, 0x10

    goto :goto_37e

    :cond_36a
    const/4 v15, 0x5

    const/4 v14, 0x4

    goto :goto_37e

    :cond_36d
    const/4 v13, 0x4

    const/4 v15, 0x5

    const/4 v14, 0x1

    goto :goto_37e

    :cond_371
    const/4 v13, 0x4

    const/4 v15, 0x5

    const/16 v6, 0x1d

    const/16 v14, 0x1d

    if-nez v1, :cond_37e

    :cond_379
    :goto_379
    move/from16 v20, v14

    const/16 v21, 0x0

    goto :goto_382

    :cond_37e
    :goto_37e
    move/from16 v20, v14

    const/16 v21, 0x1

    :goto_382
    if-eqz v1, :cond_389

    if-nez v21, :cond_389

    const/16 v9, 0x1000

    goto :goto_3a4

    .line 677
    :cond_389
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v23

    add-int v26, v5, v11

    add-int v27, v8, v2

    add-int v28, v7, v11

    add-int v29, v4, v2

    move-object/from16 v19, v6

    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v25, v10

    invoke-virtual/range {v19 .. v29}, Lcom/termux/terminal/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    :goto_3a4
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    goto :goto_335

    .line 561
    :pswitch_3a8  #0x7
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    goto :goto_3d1

    .line 551
    :pswitch_3ac  #0x6
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    goto :goto_3d1

    :pswitch_3b0  #0x4
    const/16 v2, 0x30

    if-ne v1, v2, :cond_3b6

    const/4 v6, 0x1

    goto :goto_3b7

    :cond_3b6
    const/4 v6, 0x0

    .line 548
    :goto_3b7
    iput-boolean v6, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    goto :goto_3d1

    :pswitch_3ba  #0x3
    const/16 v2, 0x30

    if-ne v1, v2, :cond_3c0

    const/4 v6, 0x1

    goto :goto_3c1

    :cond_3c0
    const/4 v6, 0x0

    .line 545
    :goto_3c1
    iput-boolean v6, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    goto :goto_3d1

    .line 542
    :pswitch_3c4  #0x2
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    goto :goto_3d1

    .line 539
    :pswitch_3c8  #0x1
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    goto :goto_3d1

    :pswitch_3cc  #0x0
    if-lt v1, v15, :cond_3d1

    .line 536
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 797
    :cond_3d1
    :goto_3d1
    :pswitch_3d1  #0x9
    iget-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v1, :cond_3f4

    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    goto :goto_3f4

    .line 523
    :cond_3d8
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3df

    return-void

    :cond_3df
    if-eq v2, v4, :cond_3e5

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto :goto_3f4

    .line 529
    :cond_3e5
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto :goto_3f4

    .line 515
    :cond_3e9
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-eqz v1, :cond_3f4

    .line 517
    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 518
    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    :cond_3f4
    :goto_3f4
    return-void

    nop

    :pswitch_data_3f6
    .packed-switch 0x7
        :pswitch_77  #00000007
        :pswitch_51  #00000008
        :pswitch_49  #00000009
        :pswitch_44  #0000000a
        :pswitch_44  #0000000b
        :pswitch_44  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_39  #0000000e
        :pswitch_35  #0000000f
    .end packed-switch

    :pswitch_data_40c
    .packed-switch 0x0
        :pswitch_3cc  #00000000
        :pswitch_3c8  #00000001
        :pswitch_3c4  #00000002
        :pswitch_3ba  #00000003
        :pswitch_3b0  #00000004
        :pswitch_30  #00000005
        :pswitch_3ac  #00000006
        :pswitch_3a8  #00000007
        :pswitch_1be  #00000008
        :pswitch_3d1  #00000009
        :pswitch_1b9  #0000000a
        :pswitch_1b4  #0000000b
        :pswitch_1af  #0000000c
        :pswitch_1aa  #0000000d
        :pswitch_14a  #0000000e
        :pswitch_128  #0000000f
        :pswitch_110  #00000010
        :pswitch_e9  #00000011
        :pswitch_93  #00000012
        :pswitch_87  #00000013
    .end packed-switch

    :pswitch_data_438
    .packed-switch 0x0
        :pswitch_146  #00000000
        :pswitch_146  #00000001
        :pswitch_146  #00000002
        :pswitch_142  #00000003
        :pswitch_142  #00000004
        :pswitch_13e  #00000005
        :pswitch_13e  #00000006
    .end packed-switch
.end method

.method public reset()V
    .registers 5

    .line 2266
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 2267
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2268
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2269
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2270
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2271
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2272
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2273
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2274
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2275
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x100

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2276
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x101

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2277
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2279
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 2280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2282
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2283
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2284
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 2286
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2287
    const/16 v2, 0x10

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2288
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2291
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
    .registers 6

    .line 319
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v0, p2, :cond_9

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v1, p1, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x2

    if-lt p1, v1, :cond_39

    if-lt p2, v1, :cond_39

    const/4 v1, 0x0

    if-eq v0, p2, :cond_17

    .line 326
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 327
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 328
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 330
    :cond_17
    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq p2, p1, :cond_35

    .line 332
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 333
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 334
    new-array v2, p1, [Z

    iput-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 335
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 336
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 337
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 339
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 342
    :cond_35
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    return-void

    .line 322
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rows="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", columns="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendMouseEvent(IIIZ)V
    .registers 13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_e

    .line 303
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_85

    .line 305
    :cond_e
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x4d

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v1, :cond_4d

    .line 306
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "\u001b[<%d;%d;%d"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_28

    goto :goto_2a

    :cond_28
    const/16 v3, 0x6d

    :goto_2a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_85

    :cond_4d
    if-eqz p4, :cond_50

    goto :goto_51

    :cond_50
    const/4 p1, 0x3

    :goto_51
    if-lt p2, v6, :cond_85

    if-lt p3, v6, :cond_85

    .line 310
    iget p4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-gt p2, p4, :cond_85

    iget p4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-gt p3, p4, :cond_85

    const/16 p4, 0xdf

    if-gt p2, p4, :cond_85

    if-le p3, p4, :cond_64

    goto :goto_85

    :cond_64
    add-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/2addr p2, v0

    int-to-byte p2, p2

    add-int/2addr p3, v0

    int-to-byte p3, p3

    .line 312
    nop

    .line 313
    iget-object p4, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const/4 v0, 0x6

    new-array v1, v0, [B

    const/16 v7, 0x1b

    aput-byte v7, v1, v4

    const/16 v7, 0x5b

    aput-byte v7, v1, v6

    aput-byte v3, v1, v2

    aput-byte p1, v1, v5

    const/4 p1, 0x4

    aput-byte p2, v1, p1

    const/4 p1, 0x5

    aput-byte p3, v1, p1

    invoke-virtual {p4, v1, v4, v0}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    :cond_85
    :goto_85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

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

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
