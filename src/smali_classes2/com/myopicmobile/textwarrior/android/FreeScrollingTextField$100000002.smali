.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/myopicmobile/textwarrior/android/TextChangeListener;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method


# virtual methods
.method public onAdd(Ljava/lang/CharSequence;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Pair;->setFirst(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_caretPosition:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->update(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->dismiss()V

    goto :goto_1
.end method

.method public onDel(Ljava/lang/CharSequence;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v0

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Pair;->setFirst(I)V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->dismiss()V

    return-void
.end method

.method public onNewLine(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000020(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Pair;->setFirst(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000002;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->dismiss()V

    return-void
.end method
