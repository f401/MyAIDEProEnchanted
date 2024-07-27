.class Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;)Lcom/s1243808733/util/ChooseDir$FileAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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

    .line 142
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    move-result-object v0

    .line 143
    iget-boolean v1, v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->access$1000012(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z

    .line 146
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    iget-object v0, v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    goto :goto_0
.end method
