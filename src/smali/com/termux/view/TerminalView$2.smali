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
    .registers 4

    .line 247
    iput-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 3

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 266
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 p2, 0x1

    if-nez p1, :cond_b

    return p2

    .line 268
    :cond_b
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 270
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return p2
.end method

.method public deleteSurroundingText(II)Z
    .registers 6

    .line 280
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x43

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    :goto_8
    if-ge v2, p1, :cond_10

    .line 281
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 282
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public finishComposingText()Z
    .registers 2

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
    .registers 9

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_4c

    .line 288
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 290
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1f

    .line 292
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_22

    :cond_1f
    const v3, 0xfffd

    :cond_22
    :goto_22
    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-gt v3, v4, :cond_44

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_44

    const/16 v4, 0xa

    if-ne v3, v4, :cond_31

    const/16 v3, 0xd

    :cond_31
    packed-switch v3, :pswitch_data_4e

    add-int/lit8 v3, v3, 0x60

    goto :goto_42

    :pswitch_37  #0x1f
    const/16 v3, 0x5f

    goto :goto_42

    :pswitch_3a  #0x1e
    const/16 v3, 0x5e

    goto :goto_42

    :pswitch_3d  #0x1d
    const/16 v3, 0x5d

    goto :goto_42

    :pswitch_40  #0x1c
    const/16 v3, 0x5c

    :goto_42
    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    .line 332
    :goto_45
    iget-object v6, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v6, v3, v4, v1}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    add-int/2addr v2, v5

    goto :goto_6

    :cond_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1c
        :pswitch_40  #0000001c
        :pswitch_3d  #0000001d
        :pswitch_3a  #0000001e
        :pswitch_37  #0000001f
    .end packed-switch
.end method
