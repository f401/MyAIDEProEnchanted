.class public Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/FragmentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentNode"
.end annotation


# instance fields
.field final fragment:Landroidx/fragment/app/Fragment;

.field final next:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->fragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->next:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getNext()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->next:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->next:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_21
    const-string v0, "no child"

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;->next:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method
