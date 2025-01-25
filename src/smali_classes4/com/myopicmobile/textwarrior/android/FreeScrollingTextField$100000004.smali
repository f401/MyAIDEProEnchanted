.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

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

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000000(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->moveCaretUp()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->caretOnFirstRowOfFile()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000004;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000054(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->SCROLL_PERIOD:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method
