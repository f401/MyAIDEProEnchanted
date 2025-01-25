.class final Lcom/google/android/gms/internal/ads/jA;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[J


# instance fields
.field private final DW:[B

.field private FH:I

.field private Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/jA;->j6:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    return-void
.end method

.method public static j6(I)I
    .registers 7

    const/4 v0, 0x0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/jA;->j6:[J

    array-length v2, v1

    if-ge v0, v2, :cond_13

    aget-wide v2, v1, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_1

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    return v0
.end method

.method public static j6([BIZ)J
    .registers 11

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p2, :cond_13

    sget-object p2, Lcom/google/android/gms/internal/ads/jA;->j6:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, p2, v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v0, v4

    :cond_13
    const/4 p2, 0x1

    :goto_14
    if-ge p2, p1, :cond_21

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    aget-byte v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_21
    return-wide v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result p2

    if-nez p2, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jA;->j6(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_23

    iput v2, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    goto :goto_2b

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No valid varint length mask found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    iget p2, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    if-le p2, p4, :cond_34

    iput v1, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    const-wide/16 p1, -0x2

    return-wide p1

    :cond_34
    if-eq p2, v2, :cond_3c

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    sub-int/2addr p2, v2

    invoke-interface {p1, p4, v2, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    :cond_3c
    iput v1, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    iget p2, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/jA;->j6([BIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    return-void
.end method
