.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

.field private final val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    iput-object p2, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;->val$results:Ljava/util/List;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

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

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v0

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;->val$results:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->setSpans(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController$100000010;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;->access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldController;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate()V

    return-void
.end method
