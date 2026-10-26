.class public final Lcom/s1243808733/android/dx/dex/file/TypeListItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "TypeListItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final ELEMENT_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x4


# instance fields
.field private final list:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .locals 2

    .line 47
    const/4 v0, 0x4

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 49
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 4

    .line 67
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 118
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 120
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->compareContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)I

    move-result v0

    return v0
.end method

.method public getList()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->hashContents(Lcom/s1243808733/android/dx/rop/type/TypeList;)I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 61
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 8

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v2

    .line 94
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v3

    .line 96
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->offsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type_list"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 100
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v4, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    .line 101
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v5

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " // "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    const/4 v5, 0x2

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    :goto_1
    if-ge v0, v3, :cond_1

    .line 110
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
