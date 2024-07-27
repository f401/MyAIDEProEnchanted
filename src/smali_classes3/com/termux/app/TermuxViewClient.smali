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
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    .line 271
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    move v0, v1

    .line 272
    goto :goto_0

    .line 273
    :cond_2
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    .line 274
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    move v0, v1

    .line 275
    goto :goto_0
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v4, 0x7c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 127
    iget-boolean v0, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    .line 132
    sparse-switch v6, :sswitch_data_0

    move v0, v3

    move v5, v2

    move v6, v3

    .line 218
    :goto_0
    if-eq v0, v3, :cond_1

    .line 219
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v4

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v3

    invoke-static {v0, v2, v4, v3}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 256
    :goto_2
    return v0

    .line 135
    :sswitch_0
    const/16 v0, 0x13

    move v5, v2

    move v6, v3

    .line 136
    goto :goto_0

    .line 138
    :sswitch_1
    const/16 v0, 0x15

    move v5, v2

    move v6, v3

    .line 139
    goto :goto_0

    .line 141
    :sswitch_2
    const/16 v0, 0x14

    move v5, v2

    move v6, v3

    .line 142
    goto :goto_0

    .line 144
    :sswitch_3
    const/16 v0, 0x16

    move v5, v2

    move v6, v3

    .line 145
    goto :goto_0

    .line 149
    :sswitch_4
    const/16 v0, 0x5c

    move v5, v2

    move v6, v3

    .line 150
    goto :goto_0

    .line 152
    :sswitch_5
    const/16 v0, 0x5d

    move v5, v2

    move v6, v3

    .line 153
    goto :goto_0

    .line 157
    :sswitch_6
    const/16 v0, 0x3d

    move v5, v2

    move v6, v3

    .line 158
    goto :goto_0

    :sswitch_7
    move v0, v4

    move v5, v2

    move v6, v3

    .line 161
    goto :goto_0

    .line 163
    :sswitch_8
    const/16 v4, 0x7e

    move v0, v3

    move v5, v2

    move v6, v4

    .line 164
    goto :goto_0

    .line 168
    :sswitch_9
    const/16 v4, 0x5f

    move v0, v3

    move v5, v2

    move v6, v4

    .line 169
    goto :goto_0

    :sswitch_a
    move v0, v3

    move v5, v2

    move v6, v4

    .line 172
    goto :goto_0

    .line 184
    :sswitch_b
    add-int/lit8 v0, p1, -0x31

    add-int/lit16 v0, v0, 0x83

    move v5, v2

    move v6, v3

    .line 185
    goto :goto_0

    .line 187
    :sswitch_c
    const/16 v0, 0x8c

    move v5, v2

    move v6, v3

    .line 188
    goto :goto_0

    .line 192
    :sswitch_d
    const/16 v4, 0x1b

    move v0, v3

    move v5, v2

    move v6, v4

    .line 193
    goto :goto_0

    .line 195
    :sswitch_e
    const/16 v4, 0x1c

    move v0, v3

    move v5, v2

    move v6, v4

    .line 196
    goto :goto_0

    :sswitch_f
    move v0, v3

    move v5, v1

    .line 203
    goto :goto_0

    .line 208
    :sswitch_10
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 209
    const/high16 v4, -0x80000000

    invoke-virtual {v0, v2, v4, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    move v0, v3

    move v5, v2

    move v6, v3

    .line 210
    goto :goto_0

    .line 214
    :sswitch_11
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    move v0, v3

    move v5, v2

    move v6, v3

    .line 215
    goto/16 :goto_0

    .line 221
    :cond_1
    if-eq v6, v3, :cond_0

    .line 222
    invoke-virtual {p3, v5, v6}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    goto :goto_1

    .line 225
    :cond_2
    if-eqz p2, :cond_4

    .line 226
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    move v0, v1

    .line 228
    goto/16 :goto_2

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object v4, v0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 232
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .line 234
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-gez v3, :cond_5

    :cond_4
    move v0, v2

    .line 256
    goto/16 :goto_2

    .line 235
    :cond_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    .line 236
    iget v6, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->codePoint:I

    if-ne v5, v6, :cond_6

    .line 237
    iget v0, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->shortcutAction:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    .line 239
    :pswitch_0
    iget-object v2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    move v0, v1

    .line 240
    goto/16 :goto_2

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    move v0, v1

    .line 243
    goto/16 :goto_2

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    move v0, v1

    .line 246
    goto/16 :goto_2

    .line 248
    :pswitch_3
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    move v0, v1

    .line 249
    goto/16 :goto_2

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_e
        0x30 -> :sswitch_c
        0x31 -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x34 -> :sswitch_b
        0x35 -> :sswitch_b
        0x36 -> :sswitch_b
        0x37 -> :sswitch_b
        0x38 -> :sswitch_b
        0x39 -> :sswitch_b
        0x61 -> :sswitch_1
        0x62 -> :sswitch_f
        0x64 -> :sswitch_3
        0x65 -> :sswitch_d
        0x66 -> :sswitch_f
        0x68 -> :sswitch_8
        0x69 -> :sswitch_7
        0x6c -> :sswitch_a
        0x6e -> :sswitch_5
        0x70 -> :sswitch_4
        0x71 -> :sswitch_11
        0x73 -> :sswitch_2
        0x74 -> :sswitch_6
        0x75 -> :sswitch_9
        0x76 -> :sswitch_10
        0x77 -> :sswitch_0
        0x78 -> :sswitch_f
    .end sparse-switch

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v4, 0x2b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, p1, p2, v1}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 61
    :cond_0
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    move v0, v1

    .line 63
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

    .line 68
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

    .line 103
    goto :goto_0

    .line 70
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

    .line 72
    :cond_6
    const/16 v3, 0x16

    if-ne p1, v3, :cond_7

    .line 73
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_1

    .line 74
    :cond_7
    const/16 v3, 0x15

    if-ne p1, v3, :cond_8

    .line 75
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_1

    .line 76
    :cond_8
    const/16 v3, 0x66

    if-ne v0, v3, :cond_9

    .line 77
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->toggleImmersive()V

    goto :goto_1

    .line 78
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

    .line 81
    :cond_a
    const/16 v3, 0x6d

    if-ne v0, v3, :cond_b

    .line 82
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_1

    .line 83
    :cond_b
    const/16 v3, 0x72

    if-ne v0, v3, :cond_c

    .line 84
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p3}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_1

    .line 85
    :cond_c
    const/16 v3, 0x63

    if-ne v0, v3, :cond_d

    .line 86
    iget-object v2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_d
    const/16 v3, 0x75

    if-ne v0, v3, :cond_e

    .line 88
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    goto :goto_1

    .line 89
    :cond_e
    const/16 v3, 0x76

    if-ne v0, v3, :cond_f

    .line 90
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->doPaste()V

    goto :goto_1

    .line 91
    :cond_f
    if-eq v0, v4, :cond_10

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    if-ne v3, v4, :cond_11

    .line 94
    :cond_10
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto/16 :goto_1

    .line 95
    :cond_11
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_12

    .line 96
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto/16 :goto_1

    .line 97
    :cond_12
    const/16 v2, 0x31

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    .line 98
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

    .line 106
    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onScale(F)F
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 33
    :cond_0
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, v0}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    move p1, v1

    .line 37
    :cond_1
    return p1

    .line 33
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->readAltButton()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readControlKey()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-boolean v0, v0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    return v0
.end method
