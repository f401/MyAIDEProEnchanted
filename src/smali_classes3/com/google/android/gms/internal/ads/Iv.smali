.class abstract Lcom/google/android/gms/internal/ads/Iv;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DW(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1f

    :try_start_d
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_1f

    add-int v3, v1, v2

    int-to-byte v4, v4

    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_1c
    move-exception v0

    goto/16 :goto_ce

    :cond_1f
    if-ne v2, v0, :cond_27

    add-int v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_27
    add-int/2addr v1, v2

    :goto_28
    if-ge v2, v0, :cond_ca

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_36

    int-to-byte v4, v4

    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_34} :catch_1c

    goto/16 :goto_c2

    :cond_36
    const/16 v5, 0x800

    if-ge v4, v5, :cond_51

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_41
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_4b} :catch_4e

    move v1, v5

    goto/16 :goto_c2

    :catch_4e
    move-exception v0

    goto/16 :goto_c8

    :cond_51
    const v5, 0xd800

    if-lt v4, v5, :cond_a6

    const v5, 0xdfff

    if-ge v5, v4, :cond_5c

    goto :goto_a6

    :cond_5c
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_a0

    :try_start_60
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_6e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_60 .. :try_end_6e} :catch_9c

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    :try_start_75
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_78
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_75 .. :try_end_78} :catch_98

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_80
    invoke-virtual {p1, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_83
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_80 .. :try_end_83} :catch_9c

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_8b
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_95
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8b .. :try_end_95} :catch_98

    move v1, v4

    move v2, v5

    goto :goto_c2

    :catch_98
    move-exception v0

    goto :goto_9e

    :cond_9a
    move v2, v5

    goto :goto_a0

    :catch_9c
    move-exception v0

    move v4, v1

    :goto_9e
    move v2, v5

    goto :goto_cf

    :cond_a0
    :goto_a0
    :try_start_a0
    new-instance v3, Lcom/google/android/gms/internal/ads/Kv;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/Kv;-><init>(II)V

    throw v3
    :try_end_a6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a0 .. :try_end_a6} :catch_1c

    :cond_a6
    :goto_a6
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_ad
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ad .. :try_end_b0} :catch_4e

    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_b8
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_c2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_28

    :goto_c8
    move v4, v5

    goto :goto_cf

    :cond_ca
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b8 .. :try_end_cd} :catch_1c

    return-void

    :goto_ce
    move v4, v1

    :goto_cf
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_105

    :goto_104
    throw p0

    :goto_105
    goto :goto_104
.end method


# virtual methods
.method abstract DW([BII)Ljava/lang/String;
.end method

.method abstract j6(I[BII)I
.end method

.method abstract j6(Ljava/lang/CharSequence;[BII)I
.end method

.method abstract j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final j6([BII)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Iv;->j6(I[BII)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method
