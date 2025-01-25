.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/myopicmobile/textwarrior/android/OnSelectionChangedListener;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method


# virtual methods
.method public onSelectionChanged(ZII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000010(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->show()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->access$L1000010(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->hide()V

    goto :goto_b
.end method
