.class public Lcom/myopicmobile/textwarrior/android/KeysInterpreter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBackspace(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_16

    const/16 v1, 0x13

    if-eq v0, v1, :cond_16

    const/16 v1, 0x16

    if-eq v0, v1, :cond_16

    const/16 v1, 0x15

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static isNewline(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static isSpace(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isSwitchPanel(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static isTab(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_18

    :cond_e
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static keyEventToPrintableChar(Landroid/view/KeyEvent;)C
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->isNewline(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0xa

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->isBackspace(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x8

    goto :goto_9

    :cond_13
    invoke-static {p0}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->isTab(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v0, 0x9

    goto :goto_9

    :cond_1c
    invoke-static {p0}, Lcom/myopicmobile/textwarrior/android/KeysInterpreter;->isSpace(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x20

    goto :goto_9

    :cond_25
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_9
.end method
