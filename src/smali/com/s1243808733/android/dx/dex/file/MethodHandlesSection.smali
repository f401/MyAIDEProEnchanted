.class public final Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "MethodHandlesSection.java"


# instance fields
.field private final methodHandles:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;",
            "Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 28
    const-string v0, "method_handles"

    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 25
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    if-eqz p1, :cond_1a

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->throwIfNotPrepared()V

    .line 38
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_12

    return-object p1

    .line 40
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method indexOf(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)I
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->getIndex()I

    move-result p1

    return p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1c

    .line 63
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->throwIfPrepared()V

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    if-nez v0, :cond_1a

    .line 67
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    .line 68
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    .line 70
    :cond_1a
    monitor-exit p0

    return-void

    .line 60
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "methodHandle == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 70
    :catchall_24
    move-exception p1

    .line 60
    monitor-exit p0

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
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
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;

    .line 49
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method
