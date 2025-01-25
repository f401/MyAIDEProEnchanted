.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    }
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final CHUNK_SIZE:I = 0x4

.field static final GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

.field static final MURMUR3_32:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    .line 57
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 69
    return-void
.end method

.method static synthetic access$000(I)I
    .registers 2

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .registers 3

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([BI)I
    .registers 3

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(C)J
    .registers 3

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(C)J
    .registers 3

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(I)J
    .registers 3

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(II)Lcom/google/common/hash/HashCode;
    .registers 3

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static charToThreeUtf8Bytes(C)J
    .registers 3

    .line 401
    ushr-int/lit8 v0, p0, 0xc

    or-int/lit16 v0, v0, 0x1e0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private static charToTwoUtf8Bytes(C)J
    .registers 3

    .line 407
    ushr-int/lit8 v0, p0, 0x6

    or-int/lit16 v0, v0, 0x3c0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p0, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private static codePointToFourUtf8Bytes(I)J
    .registers 9

    const-wide/16 v6, 0x80

    .line 394
    ushr-int/lit8 v0, p0, 0x12

    int-to-long v0, v0

    const-wide/16 v2, 0xf0

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-int/lit8 v2, p0, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static fmix(II)Lcom/google/common/hash/HashCode;
    .registers 4

    .line 250
    xor-int v0, p0, p1

    .line 251
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    .line 253
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    .line 255
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static getIntLittleEndian([BI)I
    .registers 6

    .line 231
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v3, p0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method private static mixH1(II)I
    .registers 4

    .line 242
    xor-int v0, p0, p1

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 244
    mul-int/lit8 v0, v0, 0x5

    const v1, 0x19ab949c

    sub-int/2addr v0, v1

    return v0
.end method

.method private static mixK1(I)I
    .registers 3

    .line 235
    const v0, -0x3361d2af  # -8.2930312E7f

    mul-int/2addr v0, p0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 237
    const v1, 0x1b873593

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public bits()I
    .registers 2

    .line 73
    const/16 v0, 0x20

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    if-eqz v1, :cond_e

    .line 89
    check-cast p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 90
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    iget v2, p1, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 92
    :cond_e
    return v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .registers 9

    const/4 v1, 0x0

    .line 214
    add-int v0, p2, p3

    array-length v2, p1

    invoke-static {p2, v0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 215
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    move v4, v0

    move v3, v1

    .line 217
    :goto_b
    add-int/lit8 v0, v3, 0x4

    if-gt v0, p3, :cond_21

    .line 218
    add-int v0, p2, v3

    invoke-static {p1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 219
    invoke-static {v4, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 217
    add-int/lit8 v3, v3, 0x4

    move v4, v0

    goto :goto_b

    :cond_21
    move v0, v1

    move v2, v1

    .line 223
    :goto_23
    if-ge v3, p3, :cond_35

    .line 224
    add-int v1, p2, v3

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    shl-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 223
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x8

    move v2, v1

    goto :goto_23

    .line 226
    :cond_35
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 227
    xor-int/2addr v0, v4

    invoke-static {v0, p3}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .registers 4

    .line 102
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 105
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .registers 8

    .line 110
    long-to-int v0, p1

    .line 111
    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    .line 113
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 114
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 116
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    .line 117
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 119
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .registers 15

    const/16 v11, 0x20

    const/4 v3, 0x0

    const/16 v10, 0x80

    .line 146
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 148
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    move v4, v3

    move v5, v3

    .line 153
    :goto_15
    add-int/lit8 v0, v4, 0x4

    if-gt v0, v6, :cond_4d

    .line 154
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 155
    add-int/lit8 v1, v4, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 156
    add-int/lit8 v7, v4, 0x2

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 157
    add-int/lit8 v8, v4, 0x3

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 158
    if-ge v0, v10, :cond_4d

    if-ge v1, v10, :cond_4d

    if-ge v7, v10, :cond_4d

    if-ge v8, v10, :cond_4d

    .line 159
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v8, 0x18

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 161
    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v2

    .line 162
    add-int/lit8 v4, v4, 0x4

    .line 163
    add-int/lit8 v5, v5, 0x4

    .line 167
    goto :goto_15

    .line 169
    :cond_4d
    const-wide/16 v0, 0x0

    .line 171
    :goto_4f
    if-ge v4, v6, :cond_b1

    .line 172
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 173
    if-ge v7, v10, :cond_6f

    .line 174
    int-to-long v8, v7

    shl-long/2addr v8, v3

    or-long/2addr v0, v8

    .line 175
    add-int/lit8 v3, v3, 0x8

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 196
    :goto_5e
    if-lt v3, v11, :cond_6c

    .line 197
    long-to-int v7, v0

    invoke-static {v7}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v7

    .line 198
    invoke-static {v2, v7}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v2

    .line 199
    ushr-long/2addr v0, v11

    .line 200
    add-int/lit8 v3, v3, -0x20

    .line 171
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 177
    :cond_6f
    const/16 v8, 0x800

    if-ge v7, v8, :cond_7e

    .line 178
    invoke-static {v7}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v8

    shl-long/2addr v8, v3

    or-long/2addr v0, v8

    .line 179
    add-int/lit8 v3, v3, 0x10

    .line 180
    add-int/lit8 v5, v5, 0x2

    goto :goto_5e

    .line 181
    :cond_7e
    const v8, 0xd800

    if-lt v7, v8, :cond_88

    const v8, 0xdfff

    if-le v7, v8, :cond_93

    .line 182
    :cond_88
    invoke-static {v7}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v8

    shl-long/2addr v8, v3

    or-long/2addr v0, v8

    .line 183
    add-int/lit8 v3, v3, 0x18

    .line 184
    add-int/lit8 v5, v5, 0x3

    goto :goto_5e

    .line 186
    :cond_93
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 187
    if-ne v8, v7, :cond_a6

    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    .line 208
    :goto_a5
    return-object v0

    .line 191
    :cond_a6
    add-int/lit8 v4, v4, 0x1

    .line 192
    invoke-static {v8}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v8

    shl-long/2addr v8, v3

    or-long/2addr v0, v8

    .line 193
    add-int/lit8 v5, v5, 0x4

    goto :goto_5e

    .line 204
    :cond_b1
    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 205
    xor-int/2addr v0, v2

    invoke-static {v0, v5}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    goto :goto_a5

    .line 208
    :cond_bc
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    goto :goto_a5
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .registers 7

    const/4 v1, 0x1

    .line 124
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    move v0, v1

    .line 127
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 128
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 129
    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v3

    .line 130
    invoke-static {v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v2

    .line 127
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 134
    :cond_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_39

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 136
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 137
    xor-int/2addr v2, v0

    .line 140
    :cond_39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 3

    .line 78
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_32("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
