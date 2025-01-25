.class abstract Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;,
        Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public hashBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/HashCode;
    .registers 3

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public abstract hashBytes([BII)Lcom/google/common/hash/HashCode;
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .registers 4

    .line 47
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .registers 6

    .line 52
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .registers 4

    .line 67
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .registers 6

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 58
    mul-int/lit8 v0, v1, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 59
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_1d

    .line 60
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 62
    :cond_1d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 2

    .line 36
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .registers 3

    .line 41
    if-ltz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    new-instance v0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;-><init>(Lcom/google/common/hash/AbstractNonStreamingHashFunction;I)V

    return-object v0

    .line 41
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method
