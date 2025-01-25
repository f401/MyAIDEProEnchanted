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
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method private handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z
    .registers 6

    .line 266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 267
    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_f

    return v0

    :cond_f
    const/16 p2, 0x19

    const/4 v1, 0x1

    if-ne p1, p2, :cond_17

    .line 271
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    return v1

    :cond_17
    const/16 p2, 0x18

    if-ne p1, p2, :cond_1e

    .line 274
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    return v1

    :cond_1e
    return v0
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .registers 9

    .line 127
    iget-boolean v0, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a7

    .line 131
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    const/16 v0, 0x2e

    const/4 v3, -0x1

    if-eq p2, v0, :cond_85

    const/16 v0, 0x6c

    const/16 v4, 0x7c

    if-eq p2, v0, :cond_81

    const/16 v0, 0x6e

    if-eq p2, v0, :cond_7c

    const/16 v0, 0x61

    if-eq p2, v0, :cond_79

    const/16 v0, 0x62

    if-eq p2, v0, :cond_77

    const/16 v0, 0x68

    if-eq p2, v0, :cond_72

    const/16 v0, 0x69

    if-eq p2, v0, :cond_7e

    const/16 v0, 0x70

    if-eq p2, v0, :cond_6f

    const/16 v0, 0x71

    if-eq p2, v0, :cond_67

    packed-switch p2, :pswitch_data_10a

    packed-switch p2, :pswitch_data_122

    packed-switch p2, :pswitch_data_12c

    goto :goto_6c

    .line 209
    :pswitch_3b  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    add-int/lit8 v4, p1, 0x52

    goto :goto_7e

    :pswitch_3e  #0x30
    const/16 v4, 0x8c

    goto :goto_7e

    :pswitch_41  #0x65
    const/16 p1, 0x1b

    const/16 p2, 0x1b

    goto :goto_89

    :pswitch_46  #0x64
    const/16 v4, 0x16

    goto :goto_7e

    .line 131
    :pswitch_49  #0x77
    const/16 v4, 0x13

    goto :goto_7e

    .line 208
    :pswitch_4c  #0x76
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 209
    const/high16 p2, -0x80000000

    invoke-virtual {p1, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_6c

    :pswitch_5c  #0x75
    const/16 p1, 0x5f

    const/16 p2, 0x5f

    goto :goto_89

    :pswitch_61  #0x74
    const/16 v4, 0x3d

    goto :goto_7e

    :pswitch_64  #0x73
    const/16 v4, 0x14

    goto :goto_7e

    .line 214
    :cond_67
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    :goto_6c
    const/4 p1, 0x0

    const/4 p2, -0x1

    goto :goto_8a

    :cond_6f
    const/16 v4, 0x5c

    goto :goto_7e

    :cond_72
    const/16 p1, 0x7e

    const/16 p2, 0x7e

    goto :goto_89

    :cond_77
    :pswitch_77  #0x66, 0x78
    const/4 p1, 0x1

    goto :goto_8a

    :cond_79
    const/16 v4, 0x15

    goto :goto_7e

    :cond_7c
    const/16 v4, 0x5d

    .line 209
    :cond_7e
    :goto_7e
    const/4 p1, 0x0

    const/4 p2, -0x1

    goto :goto_8b

    .line 214
    :cond_81
    const/4 p1, 0x0

    const/16 p2, 0x7c

    goto :goto_8a

    :cond_85
    const/16 p1, 0x1c

    const/16 p2, 0x1c

    :goto_89
    const/4 p1, 0x0

    :goto_8a
    const/4 v4, -0x1

    :goto_8b
    if-eq v4, v3, :cond_a1

    .line 219
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result p2

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result p1

    invoke-static {v4, v1, p2, p1}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_a6

    :cond_a1
    if-eq p2, v3, :cond_a6

    .line 222
    invoke-virtual {p3, p1, p2}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    :cond_a6
    :goto_a6
    return v2

    :cond_a7
    if-eqz p2, :cond_108

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_b9

    .line 226
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    if-nez p2, :cond_b9

    .line 227
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 231
    :cond_b9
    iget-object p2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p2, p2, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object p2, p2, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 232
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_108

    .line 233
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    .line 234
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_ce
    if-ltz p3, :cond_108

    .line 235
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    .line 236
    iget v3, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->codePoint:I

    if-ne p1, v3, :cond_105

    .line 237
    iget v0, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->shortcutAction:I

    if-eq v0, v2, :cond_fe

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_f2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_e8

    goto :goto_105

    .line 248
    :cond_e8
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 242
    :cond_f2
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v1}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    return v2

    .line 245
    :cond_f8
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    return v2

    .line 239
    :cond_fe
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return v2

    :cond_105
    :goto_105
    add-int/lit8 p3, p3, -0x1

    goto :goto_ce

    :cond_108
    return v1

    nop

    :pswitch_data_10a
    .packed-switch 0x30
        :pswitch_3e  #00000030
        :pswitch_3b  #00000031
        :pswitch_3b  #00000032
        :pswitch_3b  #00000033
        :pswitch_3b  #00000034
        :pswitch_3b  #00000035
        :pswitch_3b  #00000036
        :pswitch_3b  #00000037
        :pswitch_3b  #00000038
        :pswitch_3b  #00000039
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x64
        :pswitch_46  #00000064
        :pswitch_41  #00000065
        :pswitch_77  #00000066
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x73
        :pswitch_64  #00000073
        :pswitch_61  #00000074
        :pswitch_5c  #00000075
        :pswitch_4c  #00000076
        :pswitch_49  #00000077
        :pswitch_77  #00000078
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .registers 8

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    const/16 v1, 0x42

    if-ne p1, v1, :cond_18

    .line 61
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-nez v1, :cond_18

    .line 62
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    return v0

    .line 64
    :cond_18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_100

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v3, 0x14

    if-eq p1, v3, :cond_fa

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_33

    goto/16 :goto_fa

    :cond_33
    const/16 v3, 0x13

    if-eq p1, v3, :cond_f4

    const/16 v3, 0x70

    if-ne v1, v3, :cond_3d

    goto/16 :goto_f4

    :cond_3d
    const/16 v3, 0x16

    if-ne p1, v3, :cond_4d

    .line 73
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto/16 :goto_ff

    :cond_4d
    const/16 v3, 0x15

    if-ne p1, v3, :cond_5c

    .line 75
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_ff

    :cond_5c
    const/16 p1, 0x66

    if-ne v1, p1, :cond_67

    .line 77
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->toggleImmersive()V

    goto/16 :goto_ff

    :cond_67
    const/16 p1, 0x6b

    if-ne v1, p1, :cond_7b

    .line 79
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_ff

    :cond_7b
    const/16 p1, 0x6d

    if-ne v1, p1, :cond_88

    .line 82
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto/16 :goto_ff

    :cond_88
    const/16 p1, 0x72

    if-ne v1, p1, :cond_93

    .line 84
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p3}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto/16 :goto_ff

    :cond_93
    const/16 p1, 0x63

    if-ne v1, p1, :cond_9e

    .line 86
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto :goto_ff

    :cond_9e
    const/16 p1, 0x75

    if-ne v1, p1, :cond_a8

    .line 88
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    goto :goto_ff

    :cond_a8
    const/16 p1, 0x76

    if-ne v1, p1, :cond_b2

    .line 90
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->doPaste()V

    goto :goto_ff

    :cond_b2
    const/16 p1, 0x2b

    if-eq v1, p1, :cond_ee

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    if-ne p2, p1, :cond_bd

    goto :goto_ee

    :cond_bd
    const/16 p1, 0x2d

    if-ne v1, p1, :cond_c7

    .line 96
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v2}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto :goto_ff

    :cond_c7
    const/16 p1, 0x31

    if-lt v1, p1, :cond_ff

    const/16 p2, 0x39

    if-gt v1, p2, :cond_ff

    sub-int/2addr v1, p1

    .line 99
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 100
    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_ff

    .line 101
    iget-object p2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_ff

    .line 94
    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto :goto_ff

    .line 71
    :cond_f4
    :goto_f4
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    goto :goto_ff

    .line 69
    :cond_fa
    :goto_fa
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    :cond_ff
    :goto_ff
    return v0

    :cond_100
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(F)F
    .registers 4

    const v0, 0x3f666666  # 0.9f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_10

    const v0, 0x3f8ccccd  # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_f

    goto :goto_10

    :cond_f
    return p1

    :cond_10
    :goto_10
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 34
    :goto_19
    iget-object v1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, p1}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 4

    .line 42
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public readAltKey()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->readAltButton()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public readControlKey()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->readControlButton()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_10
    iget-boolean v0, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-boolean v0, v0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    return v0
.end method
