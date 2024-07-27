.class final Lcom/google/android/gms/internal/measurement/ed;
.super Lcom/google/android/gms/internal/measurement/dd;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/dd;-><init>()V

    return-void
.end method


# virtual methods
.method final DW([BII)Ljava/lang/String;
    .registers 13

    const/4 v6, 0x0

    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    add-int v7, p2, p3

    new-array v4, p3, [C

    move v5, v6

    move v0, p2

    :goto_0
    if-ge v0, v7, :cond_1

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :cond_1
    :goto_1
    if-ge v0, v7, :cond_8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_0

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->DW(B)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge v1, v7, :cond_3

    aget-byte v2, p1, v1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(BB[CI)V

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->FH(B)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v7, -0x1

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v3, p1, v2

    invoke-static {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(BBB[CI)V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_6
    add-int/lit8 v2, v7, -0x2

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p1, v2

    aget-byte v3, p1, v8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(BBBB[CI)V

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v5, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "buffer length=%d, index=%d, size=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j6(I[BII)I
    .registers 14

    const/4 v1, 0x0

    const/16 v8, -0x20

    const/16 v7, -0x60

    const/4 v3, -0x1

    const/16 v6, -0x41

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_0

    aget-byte v2, p2, v0

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v0, p4, :cond_e

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v2, v0

    :cond_2
    :goto_2
    if-lt v2, p4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p2, v2

    if-gez v2, :cond_1

    if-ge v2, v8, :cond_6

    if-lt v0, p4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    const/16 v4, -0x3e

    if-lt v2, v4, :cond_5

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    if-le v0, v6, :cond_2

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    const/16 v4, -0x10

    if-ge v2, v4, :cond_b

    add-int/lit8 v4, p4, -0x1

    if-lt v0, v4, :cond_7

    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/bd;->FH([BII)I

    move-result v0

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p2, v0

    if-gt v0, v6, :cond_a

    if-ne v2, v8, :cond_8

    if-lt v0, v7, :cond_a

    :cond_8
    const/16 v5, -0x13

    if-ne v2, v5, :cond_9

    if-ge v0, v7, :cond_a

    :cond_9
    add-int/lit8 v0, v4, 0x1

    aget-byte v2, p2, v4

    if-le v2, v6, :cond_e

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    add-int/lit8 v4, p4, -0x2

    if-lt v0, v4, :cond_c

    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/bd;->FH([BII)I

    move-result v0

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p2, v0

    if-gt v0, v6, :cond_d

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_d

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, p2, v4

    if-gt v0, v6, :cond_d

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p2, v2

    if-le v2, v6, :cond_1

    :cond_d
    move v0, v3

    goto :goto_1

    :cond_e
    move v2, v0

    goto :goto_2
.end method

.method final j6(Ljava/lang/CharSequence;[BII)I
    .registers 15

    const v9, 0xdfff

    const v8, 0xd800

    const/16 v7, 0x80

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v5, p4, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    add-int v0, v1, p3

    if-ge v0, v5, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ge v2, v7, :cond_0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    add-int v0, p3, v4

    :goto_1
    return v0

    :cond_1
    add-int v3, p3, v1

    :goto_2
    if-ge v1, v4, :cond_b

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v7, :cond_2

    if-ge v3, v5, :cond_2

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v6

    aput-byte v2, p2, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x800

    if-ge v6, v0, :cond_3

    add-int/lit8 v0, v5, -0x2

    if-gt v3, v0, :cond_3

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v0, v6, 0x6

    or-int/lit16 v0, v0, 0x3c0

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, v6, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    goto :goto_3

    :cond_3
    if-lt v6, v8, :cond_4

    if-ge v9, v6, :cond_5

    :cond_4
    add-int/lit8 v0, v5, -0x3

    if-gt v3, v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v2, v6, 0xc

    or-int/lit16 v2, v2, 0x1e0

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, v6, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, v6, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v5, -0x4

    if-gt v3, v0, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v2, v0, :cond_6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v6, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v6, v1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, p2, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p2, v0

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    add-int/lit8 v0, v6, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p2, v6

    move v1, v2

    goto/16 :goto_3

    :cond_6
    move v2, v1

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_8
    if-gt v8, v6, :cond_a

    if-gt v6, v9, :cond_a

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_9

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move v0, v3

    goto/16 :goto_1
.end method

.method final j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/dd;->DW(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method
