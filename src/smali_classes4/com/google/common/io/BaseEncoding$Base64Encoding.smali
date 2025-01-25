.class final Lcom/google/common/io/BaseEncoding$Base64Encoding;
.super Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base64Encoding"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .registers 5
    .param p2  # Ljava/lang/Character;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 924
    invoke-static {p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 925
    return-void

    .line 924
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .registers 6
    .param p3  # Ljava/lang/Character;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 919
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 920
    return-void
.end method


# virtual methods
.method decodeTo([BLjava/lang/CharSequence;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 946
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 948
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    move v2, v1

    .line 952
    :goto_16
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_98

    .line 953
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v0

    .line 954
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v0, v0, 0x12

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v0

    .line 955
    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v0, v1, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 956
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v3, v0, :cond_7a

    .line 957
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v1

    .line 958
    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    .line 959
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_78

    .line 960
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v3

    .line 961
    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_78
    :goto_78
    move v2, v1

    .line 964
    goto :goto_16

    :cond_7a
    move v0, v3

    move v1, v4

    .line 956
    goto :goto_78

    .line 949
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 965
    :cond_98
    return v2
.end method

.method encodeTo(Ljava/lang/Appendable;[BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p3

    move v1, p4

    .line 932
    :goto_b
    const/4 v2, 0x3

    if-lt v1, v2, :cond_59

    .line 933
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 934
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v4, v0, 0x12

    invoke-virtual {v2, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 935
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    invoke-virtual {v2, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 936
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    invoke-virtual {v2, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 937
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 932
    add-int/lit8 v1, v1, -0x3

    add-int/lit8 v0, v3, 0x1

    goto :goto_b

    .line 939
    :cond_59
    add-int v1, p3, p4

    if-ge v0, v1, :cond_63

    .line 940
    add-int v1, p3, p4

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    .line 942
    :cond_63
    return-void
.end method

.method newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .registers 4
    .param p2  # Ljava/lang/Character;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 970
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-object v0
.end method
