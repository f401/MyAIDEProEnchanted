.class public Lorg/objectweb/asm/Attribute;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/objectweb/asm/Attribute;

.field b:[B

.field public final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    goto :goto_1

    :cond_8
    return v0
.end method

.method final a(Lorg/objectweb/asm/ClassWriter;[BIII)I
    .registers 13

    const/4 v1, 0x0

    move-object v0, p0

    move v6, v1

    :goto_3
    if-eqz v0, :cond_1c

    iget-object v1, v0, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->write(Lorg/objectweb/asm/ClassWriter;[BIII)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v0, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v6

    move v6, v1

    goto :goto_3

    :cond_1c
    return v6
.end method

.method final a(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V
    .registers 13

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_26

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->write(Lorg/objectweb/asm/ClassWriter;[BIII)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p6, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    iget v3, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    const/4 v3, 0x0

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p6, v2, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    goto :goto_1

    :cond_26
    return-void
.end method

.method protected getLabels()[Lorg/objectweb/asm/Label;
    .registers 2

    const/4 v0, 0x0

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

.method protected read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .registers 11

    new-instance v0, Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    new-array v1, p3, [B

    iput-object v1, v0, Lorg/objectweb/asm/Attribute;->b:[B

    iget-object v1, p1, Lorg/objectweb/asm/ClassReader;->b:[B

    iget-object v2, v0, Lorg/objectweb/asm/Attribute;->b:[B

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method protected write(Lorg/objectweb/asm/ClassWriter;[BIII)Lorg/objectweb/asm/ByteVector;
    .registers 8

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/Attribute;->b:[B

    iput-object v1, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/Attribute;->b:[B

    array-length v1, v1

    iput v1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object v0
.end method
