.class public abstract Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "MemberIdsSection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 1

    .line 39
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    return-void
.end method

.method private getTooManyMembersMessage()Ljava/lang/String;
    .locals 8

    .line 58
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    check-cast v1, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 64
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 69
    :cond_1
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 71
    :try_start_0
    instance-of v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const-string v1, "method"

    .line 72
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const-string v5, "Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    const/4 v1, 0x2

    const/high16 v4, 0x10000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 77
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 78
    const-string v5, "%n%6d %s"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 82
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 83
    throw v1

    .line 71
    :cond_2
    const-string v1, "field"

    goto :goto_1

    .line 80
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 82
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    return-object v1
.end method


# virtual methods
.method protected orderItems()V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->setIndex(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->getTooManyMembersMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    return-void
.end method
