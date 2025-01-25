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
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method static computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;II)I
    .registers 5

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_13

    .line 246
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_13

    .line 249
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/4 v0, 0x6

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz p2, :cond_1d

    .line 254
    const-string p2, "Signature"

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_1d
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_29

    .line 260
    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_29
    return v0
.end method

.method static putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "II",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 335
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v2, 0x31

    if-ge v0, v2, :cond_1a

    .line 337
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_1a
    if-eqz p2, :cond_2e

    .line 340
    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_2e
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_40

    .line 346
    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p0

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_40
    return-void
.end method


# virtual methods
.method final computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I
    .registers 9

    .line 187
    const/4 v0, 0x0

    check-cast v0, [B

    .line 191
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I

    move-result p1

    return p1
.end method

.method final computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I
    .registers 15

    .line 219
    iget-object v6, p1, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v8, p0

    :goto_5
    if-nez v8, :cond_8

    return v7

    .line 223
    :cond_8
    iget-object v0, v8, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 224
    move-object v0, v8

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->write(Lzeroaicy/org/objectweb/asm/ClassWriter;[BIII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    .line 225
    iget-object v8, v8, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_5
.end method

.method final getAttributeCount()I
    .registers 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    if-nez v1, :cond_5

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 172
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_2
.end method

.method protected getLabels()[Lzeroaicy/org/objectweb/asm/Label;
    .registers 2

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Label;

    return-object v0
.end method

.method public isCodeAttribute()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    check-cast v0, [B

    .line 279
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIIILzeroaicy/org/objectweb/asm/ByteVector;)V

    return-void
.end method

.method final putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIIILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 15
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
    iget-object v6, p1, Lzeroaicy/org/objectweb/asm/SymbolTable;->classWriter:Lzeroaicy/org/objectweb/asm/ClassWriter;

    move-object v7, p0

    :goto_3
    if-nez v7, :cond_6

    return-void

    .line 310
    :cond_6
    move-object v0, v7

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->write(Lzeroaicy/org/objectweb/asm/ClassWriter;[BIII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    .line 313
    iget-object v1, v7, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 314
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p6, v1, v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 315
    iget-object v7, v7, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_3
.end method

.method protected read(Lzeroaicy/org/objectweb/asm/ClassReader;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;
    .registers 7

    .line 128
    new-instance p4, Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object p5, p0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {p4, p5}, Lzeroaicy/org/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 129
    new-array p5, p3, [B

    iput-object p5, p4, Lzeroaicy/org/objectweb/asm/Attribute;->content:[B

    .line 130
    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    iget-object p5, p4, Lzeroaicy/org/objectweb/asm/Attribute;->content:[B

    const/4 p6, 0x0

    invoke-static {p1, p2, p5, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method protected write(Lzeroaicy/org/objectweb/asm/ClassWriter;[BIII)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 6

    .line 159
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/Attribute;->content:[B

    invoke-direct {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>([B)V

    return-object p1
.end method
