.class Lcom/termux/view/TerminalView$100000002;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TerminalView.java"


# instance fields
.field private final this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/termux/view/TerminalView$100000002;->this$0:Lcom/termux/view/TerminalView;

    return-void
.end method

.method static access$0(Lcom/termux/view/TerminalView$100000002;)Lcom/termux/view/TerminalView;
    .registers 2

    iget-object v0, p0, Lcom/termux/view/TerminalView$100000002;->this$0:Lcom/termux/view/TerminalView;

    return-object v0
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 266
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000002;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$100000002;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$100000002;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 270
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 280
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 281
    :goto_0
    if-lt v0, p1, :cond_0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0

    .line 281
    :cond_0
    invoke-virtual {p0, v1}, Lcom/termux/view/TerminalView$100000002;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 252
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 254
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$100000002;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$100000002;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$100000002;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method sendTextToTerminal(Ljava/lang/CharSequence;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v0, v1

    .line 287
    :goto_0
    if-lt v0, v4, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 289
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_2

    .line 292
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v0

    .line 302
    :goto_1
    const/16 v0, 0x1f

    if-gt v2, v0, :cond_4

    const/16 v0, 0x1b

    if-eq v2, v0, :cond_4

    .line 303
    const/16 v0, 0xa

    if-ne v2, v0, :cond_1

    .line 308
    const/16 v2, 0xd

    .line 312
    :cond_1
    const/4 v0, 0x1

    .line 313
    packed-switch v2, :pswitch_data_0

    .line 327
    add-int/lit8 v2, v2, 0x60

    .line 332
    :goto_2
    iget-object v5, p0, Lcom/termux/view/TerminalView$100000002;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v5, v2, v0, v1}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 287
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 295
    :cond_2
    const v2, 0xfffd

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v0

    .line 298
    goto :goto_1

    .line 315
    :pswitch_0
    const/16 v2, 0x5f

    .line 316
    goto :goto_2

    .line 318
    :pswitch_1
    const/16 v2, 0x5e

    .line 319
    goto :goto_2

    .line 321
    :pswitch_2
    const/16 v2, 0x5d

    .line 322
    goto :goto_2

    .line 324
    :pswitch_3
    const/16 v2, 0x5c

    .line 325
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
