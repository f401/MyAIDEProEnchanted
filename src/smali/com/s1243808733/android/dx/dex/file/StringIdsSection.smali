.class public final Lcom/s1243808733/android/dx/dex/file/StringIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "StringIdsSection.java"


# instance fields
.field private final strings:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "Lcom/s1243808733/android/dx/dex/file/StringIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 44
    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .locals 2

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfNotPrepared()V

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfNotPrepared()V

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->getIndex()I

    move-result v0

    return v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public intern(Lcom/s1243808733/android/dx/dex/file/StringIdItem;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfPrepared()V

    .line 127
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->getValue()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 131
    monitor-exit p0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit p0

    move-object v0, p1

    goto :goto_0

    .line 122
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0

    throw v0
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    .locals 1

    .line 111
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/dex/file/StringIdItem;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    move-result-object v0

    return-object v0
.end method

.method public intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    .locals 2

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/dex/file/StringIdItem;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    move-result-object v0

    return-object v0
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 145
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

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

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

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

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 177
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->setIndex(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 5

    const/4 v4, 0x4

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->throwIfNotPrepared()V

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string_ids_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string_ids_off:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 89
    :cond_0
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 90
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->getFileOffset()I

    move-result v0

    goto :goto_0
.end method
