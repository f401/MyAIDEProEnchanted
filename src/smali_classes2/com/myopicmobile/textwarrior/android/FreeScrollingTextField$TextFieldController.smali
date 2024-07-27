.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextFieldController"
.end annotation


# instance fields
.field private _isInSelectionMode:Z

.field private _isInSelectionMode2:Z

.field private final _lexer:Lcom/myopicmobile/textwarrior/common/Lexer;

.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Lexer;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/common/Lexer;-><init>(Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_lexer:Lcom/myopicmobile/textwarrior/common/Lexer;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method

.method private createAutoIndent()[C
    .registers 9

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findLineNumber(I)I

    move-result v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getLineOffset(I)I

    move-result v2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->seekChar(I)I

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoIndentWidth:I

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->createAutoIndent(Ljava/lang/CharSequence;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    if-gez v3, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char v6, v0, v1

    :cond_1
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->next()C

    move-result v3

    if-eq v3, v7, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    :cond_3
    add-int v3, v2, v0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [C

    aput-char v6, v0, v1

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->seekChar(I)I

    :goto_1
    if-ge v1, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    aput-char v7, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateAfterCaretJump()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000045(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    return-void
.end method

.method private updateSelectionRange(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p2, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p2, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p2, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p2, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    goto :goto_0
.end method


# virtual methods
.method public cancelSpanning()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_lexer:Lcom/myopicmobile/textwarrior/common/Lexer;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Lexer;->cancelTokenize()V

    return-void
.end method

.method public copy(Landroid/text/ClipboardManager;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/ClipboardManager;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public cut(Landroid/text/ClipboardManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/ClipboardManager;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->copy(Landroid/text/ClipboardManager;)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->selectionDelete()V

    return-void
.end method

.method deleteAroundComposingText(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-le v1, v3, :cond_1

    add-int/lit8 v1, v2, -0x1

    :cond_1
    sub-int/2addr v1, v0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->replaceComposingText(IILjava/lang/String;)V

    return-void
.end method

.method public determineSpans()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_lexer:Lcom/myopicmobile/textwarrior/common/Lexer;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Lexer;->tokenize(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V

    return-void
.end method

.method public focusSelection(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateAfterCaretJump()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateAfterCaretJump()V

    goto :goto_0
.end method

.method getTextAfterCursor(I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/2addr v1, p1

    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getTextBeforeCursor(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inSelectionRange(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    if-gt v1, p1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isSelectText()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    return v0
.end method

.method public final isSelectText2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode2:Z

    return v0
.end method

.method public lexDone(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    new-instance v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;

    invoke-direct {v1, p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public moveCaret(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "Invalid caret position"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateSelectionRange(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateAfterCaretJump()V

    goto :goto_0
.end method

.method public moveCaretDown()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnLastRowOfFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getColumn(I)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v5, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowSize(I)I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    :goto_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$S1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateSelectionRange(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000003(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/RowListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/myopicmobile/textwarrior/common/RowListener;->onRowChange(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    iget v4, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/2addr v3, v4

    iput v3, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    goto :goto_0
.end method

.method public moveCaretLeft(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateSelectionRange(II)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    :cond_1
    return-void
.end method

.method public moveCaretRight(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnEOF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateSelectionRange(II)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    :cond_1
    return-void
.end method

.method public moveCaretUp()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnFirstRowOfFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getColumn(I)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v4, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowSize(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int v4, v5, v4

    iput v4, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    :goto_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$S1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-direct {p0, v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateSelectionRange(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000003(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/RowListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/myopicmobile/textwarrior/common/RowListener;->onRowChange(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v3, v3, 0x1

    sub-int v3, v5, v3

    iput v3, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    goto :goto_0
.end method

.method public onPrintableChar(C)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->selectionDelete()V

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v0, p1, v4, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore(CIJ)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretRight(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-interface {v0, v4, v5, v1}, Lcom/myopicmobile/textwarrior/android/TextChangeListener;->onAdd(Ljava/lang/CharSequence;II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    if-eq v3, v0, :cond_8

    add-int/lit8 v0, v2, -0x1

    :goto_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    return-void

    :pswitch_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IJ)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v0

    const v4, 0xd83d

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v0

    const v4, 0xd83c

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IJ)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretLeft(Z)V

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-interface {v0, v4, v5, v1}, Lcom/myopicmobile/textwarrior/android/TextChangeListener;->onDel(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretLeft(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v0

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    if-eq v3, v0, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-boolean v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_isAutoIndent:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->createAutoIndent()[C

    move-result-object v0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore([CIJ)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaret(I)V

    :goto_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    if-eq v3, v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    :cond_6
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-interface {v0, v3, v4, v1}, Lcom/myopicmobile/textwarrior/android/TextChangeListener;->onNewLine(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v0, p1, v4, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore(CIJ)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretRight(Z)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public paste(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->beginBatchEdit()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->selectionDelete()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore([CIJ)V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v2, p1, v3, v4}, Lcom/myopicmobile/textwarrior/android/TextChangeListener;->onAdd(Ljava/lang/CharSequence;II)V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->endBatchEdit()V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method replaceComposingText(IILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v5}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    sub-int/2addr v0, v3

    if-lez v0, :cond_c

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v6, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v3, v6, v0, v8, v9}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v0

    if-eq v5, v0, :cond_b

    move v0, v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    move v7, v3

    move v6, v0

    :goto_2
    if-lez p2, :cond_a

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    if-ge v3, v5, :cond_9

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    :goto_3
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v4

    if-eq v3, v4, :cond_8

    move v4, v1

    :goto_4
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p1, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    move v7, v2

    move v5, v3

    move v6, v4

    :goto_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    if-ge v3, v5, :cond_6

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    :goto_6
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v7, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v7, v7, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore([CIJ)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    move v4, v2

    :goto_7
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    move-result-object v5

    iget-object v7, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v7, v7, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-interface {v5, p3, v7, v8}, Lcom/myopicmobile/textwarrior/android/TextChangeListener;->onAdd(Ljava/lang/CharSequence;II)V

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v4

    if-eq v2, v4, :cond_5

    :goto_8
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v2, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    :cond_2
    :goto_9
    return-void

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v4

    move v7, v1

    move v6, v2

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto :goto_9

    :cond_5
    move v1, v6

    goto :goto_8

    :cond_6
    move v3, v5

    goto/16 :goto_6

    :cond_7
    move v3, v5

    move v4, v7

    goto/16 :goto_7

    :cond_8
    move v4, v6

    goto/16 :goto_4

    :cond_9
    move v0, v4

    move v3, v5

    goto/16 :goto_3

    :cond_a
    move v0, v4

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v3, v1

    move v0, v2

    goto/16 :goto_1
.end method

.method replaceText(IILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v5}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    sub-int/2addr v0, v3

    if-lez v0, :cond_c

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v6, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v3, v6, v0, v8, v9}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v0

    if-eq v5, v0, :cond_b

    move v0, v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    move v7, v3

    move v6, v0

    :goto_2
    if-lez p2, :cond_a

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    if-ge v3, v5, :cond_9

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    :goto_3
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v4

    if-eq v3, v4, :cond_8

    move v4, v1

    :goto_4
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p1, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    move v7, v2

    move v5, v3

    move v6, v4

    :goto_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v3, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    if-ge v3, v5, :cond_6

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v0

    :goto_6
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v7, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v7, v7, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore([CIJ)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v5, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    move v4, v2

    :goto_7
    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v4

    if-eq v2, v4, :cond_5

    :goto_8
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v2, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v2

    if-eq v0, v2, :cond_4

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    :cond_1
    :goto_a
    return-void

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v4

    move v7, v1

    move v6, v2

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto :goto_a

    :cond_4
    move v0, v3

    goto :goto_9

    :cond_5
    move v1, v6

    goto :goto_8

    :cond_6
    move v3, v5

    goto/16 :goto_6

    :cond_7
    move v4, v7

    move v3, v5

    goto/16 :goto_7

    :cond_8
    move v4, v6

    goto/16 :goto_4

    :cond_9
    move v0, v4

    move v3, v5

    goto/16 :goto_3

    :cond_a
    move v0, v4

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v3, v1

    move v0, v2

    goto/16 :goto_1
.end method

.method public selectionDelete()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    sub-int v4, v0, v3

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    invoke-virtual {v0, v6}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v0

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_1
    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v7, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v7, v7, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v6}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000015(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/TextChangeListener;

    move-result-object v6

    const-string v7, ""

    iget-object v8, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v8, v8, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-interface {v6, v7, v8, v4}, Lcom/myopicmobile/textwarrior/android/TextChangeListener;->onDel(Ljava/lang/CharSequence;II)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iput v6, v4, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->determineSpans()V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v1, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowOffset(I)I

    move-result v1

    if-eq v5, v1, :cond_5

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->isWordWrap()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000043(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;II)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000044(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000045(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public setSelectText(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    :goto_1
    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode2:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000004(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;->onSelectionChanged(ZII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    goto :goto_1
.end method

.method public setSelectionRange(IIZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Invalid range to select"

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000046(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    :goto_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->stopTextComposing()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->updateCaretRow()V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000004(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->isSelectText()Z

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    invoke-interface {v0, v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;->onSelectionChanged(ZII)V

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionEdge:I

    invoke-static {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v0

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_selectionAnchor:I

    invoke-static {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000047(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000046(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$1000045(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    if-eqz p4, :cond_6

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->setSelectText(Z)V

    goto :goto_1

    :cond_6
    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->_isInSelectionMode:Z

    goto :goto_1
.end method

.method public stopTextComposing()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000001(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000001(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->isComposingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000001(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldInputConnection;->resetComposingState()V

    :cond_0
    return-void
.end method

.method updateCaretRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->findRowNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$S1000005(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000003(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/RowListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/myopicmobile/textwarrior/common/RowListener;->onRowChange(I)V

    :cond_0
    return-void
.end method
