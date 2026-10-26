.class Lcom/s1243808733/util/ChooseDir$FileAdapter$1;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ChooseDir$FileAdapter;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$1;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$1;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    move-result-object v0

    .line 143
    iget-boolean v1, v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$1;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->-$$Nest$mgoBack(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z

    .line 146
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$1;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    iget-object v0, v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    goto :goto_0
.end method
