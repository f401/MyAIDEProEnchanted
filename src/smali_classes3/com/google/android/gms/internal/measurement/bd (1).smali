.class final Lcom/google/android/gms/internal/measurement/bd;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/dd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->DW()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->FH()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/internal/measurement/gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/gd;-><init>()V

    goto :goto_22

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    :goto_22
    sput-object v0, Lcom/google/android/gms/internal/measurement/bd;->j6:Lcom/google/android/gms/internal/measurement/dd;

    return-void
.end method

.method private static DW(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method private static DW(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method private static DW(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method

.method static DW([BII)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/bd;->j6:Lcom/google/android/gms/internal/measurement/dd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/dd;->DW([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic FH([BII)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/bd;->Hw([BII)I

    move-result p0

    return p0
.end method

.method private static Hw([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/google/android/gms/internal/measurement/bd;->DW(III)I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1d
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/measurement/bd;->DW(II)I

    move-result p0

    return p0

    :cond_24
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bd;->DW(I)I

    move-result p0

    return p0
.end method

.method static synthetic j6(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/bd;->DW(I)I

    move-result p0

    return p0
.end method

.method static synthetic j6(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/bd;->DW(II)I

    move-result p0

    return p0
.end method

.method static synthetic j6(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/bd;->DW(III)I

    move-result p0

    return p0
.end method

.method static j6(Ljava/lang/CharSequence;)I
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    move v3, v0

    :goto_14
    if-ge v2, v0, :cond_59

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_26

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2a
    if-ge v2, v4, :cond_58

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_38

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_55

    :cond_38
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_55

    const v7, 0xdfff

    if-gt v6, v7, :cond_55

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_4f
    new-instance p0, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw p0

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_58
    add-int/2addr v3, v1

    :cond_59
    if-lt v3, v0, :cond_5c

    return v3

    :cond_5c
    int-to-long v0, v3

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :goto_7c
    throw v0

    :goto_7d
    goto :goto_7c
.end method

.method static j6(Ljava/lang/CharSequence;[BII)I
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/bd;->j6:Lcom/google/android/gms/internal/measurement/dd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/dd;->j6(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/bd;->j6:Lcom/google/android/gms/internal/measurement/dd;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;[BII)I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/dd;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2c
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/dd;->DW(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static j6([B)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/bd;->j6:Lcom/google/android/gms/internal/measurement/dd;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/dd;->j6([BII)Z

    move-result p0

    return p0
.end method

.method public static j6([BII)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/bd;->j6:Lcom/google/android/gms/internal/measurement/dd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/dd;->j6([BII)Z

    move-result p0

    return p0
.end method
