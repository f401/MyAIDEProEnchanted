.class public final Lzeroaicy/org/objectweb/asm/TypePath;
.super Ljava/lang/Object;
.source "TypePath.java"


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field private final typePathContainer:[B

.field private final typePathOffset:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    .line 74
    iput p2, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/TypePath;
    .locals 9

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 121
    check-cast v0, Lzeroaicy/org/objectweb/asm/TypePath;

    .line 153
    :goto_0
    return-object v1

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 124
    new-instance v5, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v5, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    .line 125
    invoke-virtual {v5, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v1, v3

    :goto_1
    if-lt v1, v4, :cond_2

    .line 152
    iget-object v0, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget v1, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 153
    new-instance v1, Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v0, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    invoke-direct {v1, v0, v3}, Lzeroaicy/org/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    .line 130
    invoke-virtual {v5, v3, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_2
    move v1, v0

    .line 134
    goto :goto_1

    .line 130
    :cond_3
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_4

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v5, v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_4
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_5

    .line 134
    const/4 v1, 0x2

    invoke-virtual {v5, v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_5
    if-lt v1, v7, :cond_9

    if-gt v1, v8, :cond_9

    add-int/lit8 v1, v1, -0x30

    move v2, v1

    :goto_3
    if-lt v0, v4, :cond_6

    .line 147
    :goto_4
    const/4 v1, 0x3

    invoke-virtual {v5, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2

    .line 134
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_7

    if-gt v0, v8, :cond_7

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x30

    move v0, v1

    goto :goto_3

    :cond_7
    const/16 v6, 0x3b

    if-ne v0, v6, :cond_8

    move v0, v1

    goto :goto_4

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 149
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static put(Lzeroaicy/org/objectweb/asm/TypePath;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/TypePath;",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    aget-byte v2, v0, v1

    .line 198
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .line 84
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .locals 3

    .line 96
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStepArgument(I)I
    .locals 3

    .line 108
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/TypePath;->getLength()I

    move-result v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/TypePath;->getStep(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 177
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_2
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :cond_4
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
