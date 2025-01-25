.class final Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
.super Lorg/codehaus/groovy/util/ManagedReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ManagedLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/ManagedReference<",
        "TV;>;"
    }
.end annotation


# instance fields
.field Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

.field final Zo:Lorg/codehaus/groovy/util/ManagedLinkedList;

.field v5:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;


# virtual methods
.method public DW()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->v5:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    iput-object v1, v0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    :cond_c
    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-eqz v1, :cond_16

    iget-object v2, v1, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->v5:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    if-eqz v2, :cond_16

    iput-object v0, v1, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->v5:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    :cond_16
    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Zo:Lorg/codehaus/groovy/util/ManagedLinkedList;

    invoke-static {v0}, Lorg/codehaus/groovy/util/ManagedLinkedList;->j6(Lorg/codehaus/groovy/util/ManagedLinkedList;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    move-result-object v0

    if-ne p0, v0, :cond_25

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Zo:Lorg/codehaus/groovy/util/ManagedLinkedList;

    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/util/ManagedLinkedList;->j6(Lorg/codehaus/groovy/util/ManagedLinkedList;Lorg/codehaus/groovy/util/ManagedLinkedList$Element;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Hw:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Zo:Lorg/codehaus/groovy/util/ManagedLinkedList;

    invoke-static {v1}, Lorg/codehaus/groovy/util/ManagedLinkedList;->DW(Lorg/codehaus/groovy/util/ManagedLinkedList;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    move-result-object v1

    if-ne p0, v1, :cond_37

    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->Zo:Lorg/codehaus/groovy/util/ManagedLinkedList;

    iget-object v2, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->v5:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/util/ManagedLinkedList;->DW(Lorg/codehaus/groovy/util/ManagedLinkedList;Lorg/codehaus/groovy/util/ManagedLinkedList$Element;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    :cond_37
    iput-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList$Element;->v5:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    invoke-super {p0}, Lorg/codehaus/groovy/util/ManagedReference;->DW()V

    return-void
.end method
