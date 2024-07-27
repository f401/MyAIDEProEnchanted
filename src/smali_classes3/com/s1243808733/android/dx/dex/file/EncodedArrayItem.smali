.class public final Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "EncodedArrayItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x1


# instance fields
.field private final array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

.field private encodedForm:[B


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstArray;)V
    .registers 4

    .line 49
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    .line 56
    const/4 v0, 0x0

    check-cast v0, [B

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 74
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 62
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/Section;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 96
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 97
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 99
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V

    .line 100
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 6
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

    .line 107
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->offsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 117
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 118
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->array:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V

    .line 120
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    goto :goto_0
.end method
