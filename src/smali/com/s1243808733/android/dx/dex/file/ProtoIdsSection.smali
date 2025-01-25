.class public final Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "ProtoIdsSection.java"


# instance fields
.field private final protoIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/type/Prototype;",
            "Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 43
    const-string v0, "proto_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 45
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    if-eqz p1, :cond_2a

    .line 61
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_22

    .line 65
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->throwIfNotPrepared()V

    .line 66
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_1a

    return-object p1

    .line 69
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cst not instance of CstProtoRef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/s1243808733/android/dx/rop/type/Prototype;)I
    .registers 3

    if-eqz p1, :cond_1c

    .line 134
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->throwIfNotPrepared()V

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    if-eqz p1, :cond_14

    .line 142
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->getIndex()I

    move-result p1

    return p1

    .line 139
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1c

    .line 110
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->throwIfPrepared()V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    if-nez v0, :cond_1a

    .line 115
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    .line 116
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    .line 119
    :cond_1a
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 119
    :catchall_24
    move-exception p1

    .line 107
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

    .line 51
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .registers 4

    .line 150
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->items()Ljava/util/Collection;

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

    .line 151
    check-cast v2, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 81
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->throwIfNotPrepared()V

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    .line 84
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->getFileOffset()I

    move-result v1

    :goto_11
    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_4d

    .line 90
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proto_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "proto_ids_off:   "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 95
    :cond_46
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 96
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 87
    :cond_4d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "too many proto ids"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
