.class public final Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "MethodHandlesSection.java"


# instance fields
.field private final methodHandles:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;",
            "Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 28
    const-string v0, "method_handles"

    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .locals 2

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->throwIfNotPrepared()V

    .line 38
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method indexOf(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->getIndex()I

    move-result v0

    return v0
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->throwIfPrepared()V

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    .line 68
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "methodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    throw v0
.end method

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    .line 49
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->setIndex(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
