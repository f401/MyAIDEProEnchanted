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
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf16Size()I

    move-result v0

    .line 53
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf8Size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 95
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    .line 97
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 60
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf16Size()I

    move-result v1

    .line 75
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-static {v1}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "utf16_size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 81
    :cond_0
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 82
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write(Lcom/s1243808733/android/dx/util/ByteArray;)V

    .line 83
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    return-void
.end method
