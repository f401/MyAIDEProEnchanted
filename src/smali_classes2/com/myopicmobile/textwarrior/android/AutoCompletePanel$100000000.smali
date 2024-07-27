.class Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretPosition()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000009(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000009(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->replaceText(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000004(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->abort()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->dismiss()V

    return-void
.end method
