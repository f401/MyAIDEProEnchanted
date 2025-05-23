.class public final Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;
.source "FieldIdsSection.java"


# instance fields
.field private final fieldIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;",
            "Lcom/s1243808733/android/dx/dex/file/FieldIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 42
    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/dex/file/MemberIdsSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 44
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    if-eqz p1, :cond_1a

    .line 60
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->throwIfNotPrepared()V

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_12

    return-object p1

    .line 65
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I
    .registers 3

    if-eqz p1, :cond_1c

    .line 126
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->throwIfNotPrepared()V

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    if-eqz p1, :cond_14

    .line 134
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;->getIndex()I

    move-result p1

    return p1

    .line 131
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ref == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1c

    .line 102
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->throwIfPrepared()V

    .line 104
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    if-nez v0, :cond_1a

    .line 107
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)V

    .line 108
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    .line 111
    :cond_1a
    monitor-exit p0

    return-object v0

    .line 99
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 111
    :catchall_24
    move-exception p1

    .line 99
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

    .line 50
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 77
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->throwIfNotPrepared()V

    .line 79
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    .line 80
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->getFileOffset()I

    move-result v1

    .line 82
    :goto_11
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "field_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "field_ids_off:   "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 87
    :cond_42
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 88
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
