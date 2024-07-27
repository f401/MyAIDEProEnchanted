.class final Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ManagedLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private DW:Z

.field private j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedLinkedList",
            "<TT;>.Element<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public hasNext()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->DW:Z

    if-eqz v3, :cond_3

    iget-object v2, v2, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->DW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    iget-object v0, v0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    iput-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->DW:Z

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->DW()V

    :cond_0
    return-void
.end method
