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
    .registers 4

    .line 47
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 49
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5

    .line 67
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 71
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v2, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 118
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 120
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->compareContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)I

    move-result p1

    return p1
.end method

.method public getList()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->hashContents(Lcom/s1243808733/android/dx/rop/type/TypeList;)I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 61
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 10

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 96
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v0, :cond_71

    .line 100
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 101
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v4

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    const/4 v4, 0x2

    invoke-interface {p2, v4, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 107
    :cond_71
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    :goto_74
    if-ge v2, v0, :cond_86

    .line 110
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->list:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_86
    return-void
.end method
