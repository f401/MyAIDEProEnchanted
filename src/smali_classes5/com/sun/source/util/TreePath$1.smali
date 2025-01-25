.class Lcom/sun/source/util/TreePath$1;
.super Ljava/lang/Object;
.source "TreePath.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sun/source/tree/Tree;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lcom/sun/source/util/TreePath;

.field final this$0:Lcom/sun/source/util/TreePath;


# direct methods
.method constructor <init>(Lcom/sun/source/util/TreePath;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/sun/source/util/TreePath$1;->this$0:Lcom/sun/source/util/TreePath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iget-object v0, p0, Lcom/sun/source/util/TreePath$1;->this$0:Lcom/sun/source/util/TreePath;

    iput-object v0, p0, Lcom/sun/source/util/TreePath$1;->next:Lcom/sun/source/util/TreePath;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/sun/source/util/TreePath$1;->next:Lcom/sun/source/util/TreePath;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Lcom/sun/source/tree/Tree;
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/sun/source/util/TreePath$1;->next:Lcom/sun/source/util/TreePath;

    invoke-static {v0}, Lcom/sun/source/util/TreePath;->access$000(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/sun/source/util/TreePath$1;->next:Lcom/sun/source/util/TreePath;

    invoke-static {v1}, Lcom/sun/source/util/TreePath;->access$100(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/source/util/TreePath$1;->next:Lcom/sun/source/util/TreePath;

    .line 129
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath$1;->next()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
