.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

.field private final val$caretPosition:I


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iput p2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;->val$caretPosition:I

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000009;->val$caretPosition:I

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    return-void
.end method
