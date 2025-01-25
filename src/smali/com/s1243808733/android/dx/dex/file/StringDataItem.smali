.class public final Lcom/s1243808733/android/dx/dex/file/StringDataItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "StringDataItem.java"


# instance fields
.field private final value:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .registers 4

    .line 38
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->writeSize(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 40
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method private static writeSize(Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf16Size()I

    move-result v0

    .line 53
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf8Size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 2

    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 3

    .line 95
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    .line 97
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 60
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 72
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf16Size()I

    move-result v0

    .line 75
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 76
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "utf16_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {p2, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 81
    :cond_3a
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 82
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write(Lcom/s1243808733/android/dx/util/ByteArray;)V

    .line 83
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    return-void
.end method
