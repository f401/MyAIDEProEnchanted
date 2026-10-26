.class public Lzeroaicy/org/objectweb/asm/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzeroaicy/org/objectweb/asm/Attribute$Set;
    }
.end annotation


# instance fields
.field private content:[B

.field nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

.field public final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method static computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;II)I
    .locals 2

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_2

    .line 249
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/4 v0, 0x6

    :goto_0
    if-eqz p2, :cond_0

    .line 254
    const-string v1, "Signature"

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_0
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "Deprecated"

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_1
    return v0

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "II",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    .line 337
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_0
    if-eqz p2, :cond_1

    .line 340
    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_1
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 346
    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_2
    return-void
.end method


# virtual methods
.method final computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 187
    move-object v0, v2

    check-cast v0, [B

    .line 191
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I

    move-result v0

    return v0
.end method

.method final computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I
    .locals 7

    .line 219
    iget-object v1, p1, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move-object v0, p0

    move v6, v2

    :goto_0
    if-nez v0, :cond_0

    return v6

    .line 223
    :cond_0
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 224
    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->write(Lzeroaicy/org/objectweb/asm/ClassWriter;[BIII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v6

    .line 225
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move v6, v2

    goto :goto_0
.end method

.method final getAttributeCount()I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 172
    iget-object p0, p0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_0
.end method

.method protected getLabels()[Lzeroaicy/org/objectweb/asm/Label;
    .locals 1

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Label;

    return-object v0
.end method

.method public isCodeAttribute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 275
    move-object v0, v2

    check-cast v0, [B

    .line 279
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIIILzeroaicy/org/objectweb/asm/ByteVector;)V

    return-void
.end method

.method final putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIIILzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "[BIII",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 307
    iget-object v1, p1, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 310
    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->write(Lzeroaicy/org/objectweb/asm/ClassWriter;[BIII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    .line 313
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p6, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v3

    iget v4, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v3, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 314
    iget-object v3, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/4 v4, 0x0

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p6, v3, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 315
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_0
.end method

.method protected read(Lzeroaicy/org/objectweb/asm/ClassReader;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;
    .locals 4

    .line 128
    new-instance v0, Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 129
    new-array v1, p3, [B

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Attribute;->content:[B

    .line 130
    iget-object v1, p1, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Attribute;->content:[B

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method protected write(Lzeroaicy/org/objectweb/asm/ClassWriter;[BIII)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 2

    .line 159
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Attribute;->content:[B

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>([B)V

    return-object v0
.end method
