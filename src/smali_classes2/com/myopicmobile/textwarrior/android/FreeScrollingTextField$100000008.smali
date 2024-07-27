.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

.field private final val$caretPosition:I

.field private final val$selEnd:I

.field private final val$selStart:I


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$selStart:I

    iput p3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$selEnd:I

    iput p4, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$caretPosition:I

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$selStart:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$selEnd:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$selStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setSelectionRange(II)V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$caretPosition:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->val$selEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000008;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->focusSelectionStart()V

    :cond_0
    return-void
.end method
