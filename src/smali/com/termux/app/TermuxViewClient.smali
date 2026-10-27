.class public final Lcom/termux/app/TermuxViewClient;
.super Ljava/lang/Object;
.source "TermuxViewClient.java"

# interfaces
.implements Lcom/termux/view/TerminalViewClient;


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field mVirtualControlKeyDown:Z

.field mVirtualFnKeyDown:Z


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method private handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    .line 271
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    .line 274
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .locals 7

    const/16 v0, 0x7c

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 127
    iget-boolean v1, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    if-eqz v1, :cond_b

    .line 131
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    const/16 v1, 0x2e

    if-eq v5, v1, :cond_9

    const/16 v1, 0x6c

    if-eq v5, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v5, v1, :cond_7

    const/16 v1, 0x61

    if-eq v5, v1, :cond_6

    const/16 v1, 0x62

    if-eq v5, v1, :cond_5

    const/16 v1, 0x68

    if-eq v5, v1, :cond_4

    const/16 v1, 0x69

    if-eq v5, v1, :cond_1

    const/16 v0, 0x70

    if-eq v5, v0, :cond_3

    const/16 v0, 0x71

    if-eq v5, v0, :cond_2

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    :goto_0
    move v1, v2

    move v0, v4

    :goto_1
    move v5, v4

    move v6, v0

    .line 214
    :goto_2
    if-eq v5, v4, :cond_a

    .line 219
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v0

    invoke-static {v5, v2, v1, v0}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 248
    :cond_0
    :goto_3
    return v3

    .line 209
    :pswitch_0
    add-int/lit8 v0, p1, 0x52

    :cond_1
    :goto_4
    move v5, v0

    move v1, v2

    move v6, v4

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x8c

    goto :goto_4

    :pswitch_2
    const/16 v0, 0x1b

    :goto_5
    move v1, v2

    .line 214
    goto :goto_1

    .line 209
    :pswitch_3
    const/16 v0, 0x16

    goto :goto_4

    .line 131
    :pswitch_4
    const/16 v0, 0x13

    goto :goto_4

    .line 208
    :pswitch_5
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 209
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x5f

    goto :goto_5

    :pswitch_7
    const/16 v0, 0x3d

    goto :goto_4

    :pswitch_8
    const/16 v0, 0x14

    goto :goto_4

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x5c

    goto :goto_4

    :cond_4
    const/16 v0, 0x7e

    goto :goto_5

    :cond_5
    :pswitch_9
    move v1, v3

    move v0, v5

    goto :goto_1

    :cond_6
    const/16 v0, 0x15

    goto :goto_4

    :cond_7
    const/16 v0, 0x5d

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    const/16 v0, 0x1c

    goto :goto_5

    .line 220
    :cond_a
    if-eq v6, v4, :cond_0

    .line 222
    invoke-virtual {p3, v1, v6}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_12

    const/16 v0, 0x6a

    if-ne p1, v0, :cond_c

    .line 226
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_3

    .line 231
    :cond_c
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object v4, v0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 232
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 233
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .line 234
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_12

    .line 235
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    .line 236
    iget v6, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->codePoint:I

    if-ne v5, v6, :cond_d

    .line 237
    iget v0, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->shortcutAction:I

    if-eq v0, v3, :cond_11

    const/4 v6, 0x2

    if-eq v0, v6, :cond_10

    const/4 v6, 0x3

    if-eq v0, v6, :cond_f

    const/4 v6, 0x4

    if-eq v0, v6, :cond_e

    .line 239
    :cond_d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    .line 248
    :cond_e
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto/16 :goto_3

    .line 242
    :cond_f
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    goto/16 :goto_3

    .line 245
    :cond_10
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v3}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    goto/16 :goto_3

    .line 239
    :cond_11
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    move v3, v2

    goto/16 :goto_3

    .line 131
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x73
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .locals 5

    const/16 v4, 0x2b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, p1, p2, v1}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 59
    :cond_0
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 61
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    move v0, v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_4

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    .line 66
    :cond_4
    const/16 v3, 0x13

    if-eq p1, v3, :cond_5

    const/16 v3, 0x70

    if-ne v0, v3, :cond_6

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    goto :goto_1

    .line 66
    :cond_6
    const/16 v3, 0x16

    if-ne p1, v3, :cond_7

    .line 73
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_1

    :cond_7
    const/16 v3, 0x15

    if-ne p1, v3, :cond_8

    .line 75
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_1

    :cond_8
    const/16 v3, 0x66

    if-ne v0, v3, :cond_9

    .line 77
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->toggleImmersive()V

    goto :goto_1

    :cond_9
    const/16 v3, 0x6b

    if-ne v0, v3, :cond_a

    .line 79
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_1

    :cond_a
    const/16 v3, 0x6d

    if-ne v0, v3, :cond_b

    .line 82
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_1

    :cond_b
    const/16 v3, 0x72

    if-ne v0, v3, :cond_c

    .line 84
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p3}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_1

    :cond_c
    const/16 v3, 0x63

    if-ne v0, v3, :cond_d

    .line 86
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto :goto_1

    :cond_d
    const/16 v3, 0x75

    if-ne v0, v3, :cond_e

    .line 88
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    goto :goto_1

    :cond_e
    const/16 v3, 0x76

    if-ne v0, v3, :cond_f

    .line 90
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->doPaste()V

    goto :goto_1

    :cond_f
    if-eq v0, v4, :cond_10

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    if-ne v3, v4, :cond_11

    .line 94
    :cond_10
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto/16 :goto_1

    .line 91
    :cond_11
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_12

    .line 96
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto/16 :goto_1

    :cond_12
    const/16 v2, 0x31

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    add-int/lit8 v0, v0, -0x31

    .line 99
    iget-object v2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v2, v2, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 100
    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 101
    iget-object v3, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v3, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    goto/16 :goto_1

    :cond_13
    move v0, v2

    .line 69
    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onScale(F)F
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, v0}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    move p1, v1

    :cond_1
    return p1

    .line 4294967295
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    iget-object v1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v1, v1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public readAltKey()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->readAltButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readControlKey()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->readControlButton()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-boolean v0, v0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    return v0
.end method
