.class Lcom/termux/view/TerminalView$2;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    const/4 v1, 0x1

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 266
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return v1

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 270
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 3

    const/4 v0, 0x0

    .line 280
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 281
    invoke-virtual {p0, v1}, Lcom/termux/view/TerminalView$2;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 252
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 254
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method sendTextToTerminal(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v2, 0x0

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    .line 288
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 290
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_1

    .line 292
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    move v3, v1

    :goto_1
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0xd

    :cond_0
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, 0x60

    :goto_2
    const/4 v1, 0x1

    .line 332
    :goto_3
    iget-object v5, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v5, v0, v1, v2}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 292
    :cond_1
    const v0, 0xfffd

    move v3, v1

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x5f

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x5e

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x5d

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x5c

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    .line 332
    :cond_3
    return-void

    :cond_4
    move v3, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
