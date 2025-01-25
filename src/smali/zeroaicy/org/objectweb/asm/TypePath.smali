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
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    .line 74
    iput p2, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/TypePath;
    .registers 9

    if-eqz p0, :cond_7f

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7f

    .line 123
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    new-instance v1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x2

    if-lt v3, v0, :cond_2b

    .line 152
    iget-object p0, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget v0, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    div-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 153
    new-instance p0, Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    invoke-direct {p0, v0, v2}, Lzeroaicy/org/objectweb/asm/TypePath;-><init>([BI)V

    return-object p0

    :cond_2b
    add-int/lit8 v5, v3, 0x1

    .line 128
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5b

    if-ne v3, v6, :cond_39

    .line 130
    invoke-virtual {v1, v2, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_49

    :cond_39
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_42

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_49

    :cond_42
    const/16 v6, 0x2a

    if-ne v3, v6, :cond_4b

    .line 134
    invoke-virtual {v1, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_49
    move v3, v5

    goto :goto_72

    :cond_4b
    const/16 v4, 0x30

    if-lt v3, v4, :cond_79

    const/16 v6, 0x39

    if-gt v3, v6, :cond_79

    add-int/lit8 v3, v3, -0x30

    :goto_55
    if-lt v5, v0, :cond_58

    goto :goto_6d

    :cond_58
    add-int/lit8 v7, v5, 0x1

    .line 138
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_68

    if-gt v5, v6, :cond_68

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    move v5, v7

    goto :goto_55

    :cond_68
    const/16 v4, 0x3b

    if-ne v5, v4, :cond_73

    move v5, v7

    .line 147
    :goto_6d
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v3, v5

    .line 134
    :goto_72
    goto :goto_18

    .line 144
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 149
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 121
    :cond_7f
    :goto_7f
    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Lzeroaicy/org/objectweb/asm/TypePath;

    return-object p0
.end method

.method static put(Lzeroaicy/org/objectweb/asm/TypePath;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/TypePath;",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 195
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_14

    .line 197
    :cond_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget p0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    aget-byte v1, v0, p0

    .line 198
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_14
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 3

    .line 84
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .registers 4

    .line 96
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-byte p1, v0, v1

    return p1
.end method

.method public getStepArgument(I)I
    .registers 4

    .line 108
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathContainer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/TypePath;->typePathOffset:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget-byte p1, v0, v1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/TypePath;->getLength()I

    move-result v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v0, :cond_13

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_13
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/TypePath;->getStep(I)I

    move-result v3

    if-eqz v3, :cond_41

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_35

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2f

    .line 177
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 180
    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_35
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 171
    :cond_3b
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 168
    :cond_41
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method
