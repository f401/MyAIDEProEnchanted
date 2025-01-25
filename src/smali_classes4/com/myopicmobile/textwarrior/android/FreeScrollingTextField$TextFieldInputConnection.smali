.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextFieldInputConnection"
.end annotation


# instance fields
.field private _composingCharCount:I

.field private _isComposing:Z

.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_isComposing:Z

    iput v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretPosition()I

    move-result v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->replaceComposingText(IILjava/lang/String;)V

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->endBatchEdit()V

    if-le p2, v5, :cond_38

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    :cond_35
    :goto_35
    iput-boolean v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_isComposing:Z

    return v5

    :cond_38
    if-gtz p2, :cond_35

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    goto :goto_35
.end method

.method public deleteSurroundingText(II)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    if-eqz v0, :cond_1e

    const-string v0, "lua"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Warning: Implmentation of InputConnection.deleteSurroundingText"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " will not skip composing text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->deleteAroundComposingText(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->resetComposingState()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v2, 0x4000

    const/16 v1, 0x2000

    const/4 v0, 0x0

    and-int/lit16 v3, p1, 0x2000

    if-ne v3, v1, :cond_2a

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_23

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v4

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v5, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lcom/myopicmobile/textwarrior/common/Language;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_23
    and-int/lit16 v0, p1, 0x4000

    if-ne v0, v2, :cond_5d

    const/16 v0, 0x6000

    :cond_29
    :goto_29
    return v0

    :cond_2a
    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v5

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x1

    move v3, v0

    :goto_36
    if-gez v4, :cond_3c

    :cond_38
    :goto_38
    if-eqz v1, :cond_29

    move v0, v2

    goto :goto_29

    :cond_3c
    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v6, v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_38

    invoke-virtual {v5, v6}, Lcom/myopicmobile/textwarrior/common/Language;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_58

    if-eqz v3, :cond_56

    invoke-virtual {v5, v6}, Lcom/myopicmobile/textwarrior/common/Language;->isSentenceTerminator(C)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_56
    move v1, v0

    goto :goto_38

    :cond_58
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    :cond_5d
    move v0, v1

    goto :goto_29
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->getTextAfterCursor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->getTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComposingStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_isComposing:Z

    return v0
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    packed-switch p1, :pswitch_data_1e

    :goto_3
    :pswitch_3  #0x1020023, 0x1020024, 0x1020025, 0x1020026, 0x1020027
    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1020021
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->copy()V

    goto :goto_3

    :pswitch_b  #0x1020020
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->cut()V

    goto :goto_3

    :pswitch_11  #0x1020022
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->paste()V

    goto :goto_3

    :pswitch_17  #0x102001f, 0x1020028, 0x1020029
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectAll()V

    goto :goto_3

    nop

    :pswitch_data_1e
    .packed-switch 0x102001f
        :pswitch_17  #0102001f
        :pswitch_b  #01020020
        :pswitch_5  #01020021
        :pswitch_11  #01020022
        :pswitch_3  #01020023
        :pswitch_3  #01020024
        :pswitch_3  #01020025
        :pswitch_3  #01020026
        :pswitch_3  #01020027
        :pswitch_17  #01020028
        :pswitch_17  #01020029
    .end packed-switch
.end method

.method public resetComposingState()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_isComposing:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->endBatchEdit()V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_50

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_d
    return v0

    :sswitch_e
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    goto :goto_d

    :cond_1c
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    goto :goto_d

    :sswitch_22
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaretLeft()V

    goto :goto_d

    :sswitch_28
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaretUp()V

    goto :goto_d

    :sswitch_2e
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaretRight()V

    goto :goto_d

    :sswitch_34
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaretDown()V

    goto :goto_d

    :sswitch_3a
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    goto :goto_d

    :sswitch_40
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    goto :goto_d

    :sswitch_data_50
    .sparse-switch
        0x13 -> :sswitch_28
        0x14 -> :sswitch_34
        0x15 -> :sswitch_22
        0x16 -> :sswitch_2e
        0x3b -> :sswitch_e
        0x7a -> :sswitch_3a
        0x7b -> :sswitch_40
    .end sparse-switch
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_isComposing:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isBatchEdit()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->beginBatchEdit()V

    :cond_14
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretPosition()I

    move-result v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->replaceComposingText(IILjava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->_composingCharCount:I

    if-le p2, v4, :cond_45

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    :cond_44
    :goto_44
    return v4

    :cond_45
    if-gtz p2, :cond_44

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    goto :goto_44
.end method

.method public setSelection(II)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    if-ne p1, p2, :cond_d

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    :goto_c
    return v3

    :cond_d
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    sub-int v1, p2, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectionRange(IIZZ)V

    goto :goto_c
.end method
