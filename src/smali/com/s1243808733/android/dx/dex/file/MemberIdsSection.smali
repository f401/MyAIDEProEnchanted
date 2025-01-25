.class public abstract Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "MemberIdsSection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 39
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    return-void
.end method

.method private getTooManyMembersMessage()Ljava/lang/String;
    .registers 10

    .line 58
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v3, :cond_31

    .line 63
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 64
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_31
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_d

    .line 69
    :cond_35
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 71
    :try_start_3a
    instance-of v2, p0, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_a1

    if-eqz v2, :cond_41

    const-string v2, "method"

    goto :goto_43

    :cond_41
    const-string v2, "field"

    .line 72
    :goto_43
    nop

    .line 76
    :try_start_44
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    .line 72
    const-string v4, "Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    const-string v4, "%n%6d %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_6f

    .line 80
    :cond_99
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9d
    .catchall {:try_start_44 .. :try_end_9d} :catchall_a1

    .line 82
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    return-object v0

    :catchall_a1
    move-exception v0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 83
    goto :goto_a7

    :goto_a6
    throw v0

    :goto_a7
    goto :goto_a6
.end method


# virtual methods
.method protected orderItems()V
    .registers 4

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_28

    .line 51
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 52
    check-cast v2, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_27
    return-void

    .line 48
    :cond_28
    new-instance v0, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;->getTooManyMembersMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    goto :goto_33

    :goto_32
    throw v0

    :goto_33
    goto :goto_32
.end method
