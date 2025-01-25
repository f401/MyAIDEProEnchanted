.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

.field private final val$dummyString:Landroid/text/SpannableStringBuilder;

.field private final val$shouldReplace:Z


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;Landroid/text/SpannableStringBuilder;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput-object p2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->val$dummyString:Landroid/text/SpannableStringBuilder;

    iput-boolean p3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->val$shouldReplace:Z

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->val$dummyString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_27

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->val$shouldReplace:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    :cond_17
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000007;->val$dummyString:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->onPrintableChar(C)V

    :cond_27
    return-void
.end method
