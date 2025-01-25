.class public final Lcom/s1243808733/android/dx/dex/file/StringIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "StringIdsSection.java"


# instance fields
.field private final strings:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "Lcom/s1243808733/android/dx/dex/file/StringIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 44
    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 46
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    if-eqz p1, :cond_1a

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfNotPrepared()V

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_12

    return-object p1

    .line 67
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    .registers 3

    if-eqz p1, :cond_1c

    .line 160
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfNotPrepared()V

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    if-eqz p1, :cond_14

    .line 168
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->getIndex()I

    move-result p1

    return p1

    .line 165
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/dex/file/StringIdItem;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1d

    .line 125
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfPrepared()V

    .line 127
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->getValue()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_25

    if-eqz v1, :cond_16

    .line 131
    monitor-exit p0

    return-object v1

    .line 134
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_25

    .line 135
    monitor-exit p0

    return-object p1

    .line 122
    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 135
    :catchall_25
    move-exception p1

    .line 122
    monitor-exit p0

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    .registers 3

    .line 111
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/dex/file/StringIdItem;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    move-result-object p1

    return-object p1
.end method

.method public intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    .registers 4

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/dex/file/StringIdItem;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 3

    monitor-enter p0

    .line 144
    :try_start_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 145
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 146
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

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
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

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

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 177
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfNotPrepared()V

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    .line 82
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->getFileOffset()I

    move-result v1

    .line 84
    :goto_11
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string_ids_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "string_ids_off:  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 89
    :cond_42
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 90
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
