.class public abstract Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.super Lcom/s1243808733/android/dx/dex/file/Section;
.source "UniformItemSection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    return-void
.end method


# virtual methods
.method public abstract get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.end method

.method public final getAbsoluteItemOffset(Lcom/s1243808733/android/dx/dex/file/Item;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 98
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    .line 99
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->writeSize()I

    move-result v1

    .line 101
    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->getAbsoluteOffset(I)I

    move-result v0

    return v0
.end method

.method protected abstract orderItems()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method protected final prepare0()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->orderItems()V

    .line 74
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/Item;

    .line 75
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/Item;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_0
.end method

.method public final writeSize()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/Item;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/Item;->writeSize()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final writeTo0(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->getAlignment()I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 87
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/Item;

    .line 86
    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/dex/file/Item;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 87
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->alignTo(I)V

    goto :goto_0
.end method
