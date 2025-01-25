.class public final Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "TypeIdsSection.java"


# instance fields
.field private final typeIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/dex/file/TypeIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 44
    const-string v0, "type_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 46
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 4

    if-eqz p1, :cond_2b

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz v0, :cond_17

    return-object v0

    .line 68
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I
    .registers 3

    if-eqz p1, :cond_b

    .line 184
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result p1

    return p1

    .line 181
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I
    .registers 4

    if-eqz p1, :cond_28

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    .line 163
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    if-eqz v0, :cond_14

    .line 169
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result p1

    return p1

    .line 166
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_20

    .line 136
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->throwIfPrepared()V

    .line 138
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    if-nez v1, :cond_1e

    .line 142
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 143
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_28

    .line 146
    :cond_1e
    monitor-exit p0

    return-object v1

    .line 133
    :cond_20
    :try_start_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 146
    :catchall_28
    move-exception p1

    .line 133
    monitor-exit p0

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_21

    .line 113
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->throwIfPrepared()V

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    if-nez v0, :cond_1f

    .line 118
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 119
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_29

    .line 122
    :cond_1f
    monitor-exit p0

    return-object v0

    .line 110
    :cond_21
    :try_start_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 122
    :catchall_29
    move-exception p1

    .line 110
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

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .registers 4

    .line 192
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 193
    check-cast v2, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v2, 0x0

    goto :goto_12

    .line 83
    :cond_e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->getFileOffset()I

    move-result v2

    :goto_12
    const/high16 v3, 0x10000

    if-gt v0, v3, :cond_4e

    .line 93
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type_ids_size:   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p1, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "type_ids_off:    "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 98
    :cond_47
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 99
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 86
    :cond_4e
    nop

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->items()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    .line 87
    new-instance v0, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    const-string p1, "Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
