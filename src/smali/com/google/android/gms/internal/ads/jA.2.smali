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

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/jA;->j6:[J

    return-void

    :array_0
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

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/jA;->j6:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-wide v2, v1, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static j6([BIZ)J
    .registers 11

    const-wide/16 v6, 0xff

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    if-eqz p2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/jA;->j6:[J

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_1

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v4, v3

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    invoke-interface {p1, v0, v2, v3, p2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jA;->j6(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    if-le v0, p4, :cond_3

    iput v2, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    const-wide/16 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v0, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    :cond_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jA;->DW:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/ads/jA;->j6([BIZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/jA;->FH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/jA;->Hw:I

    return-void
.end method
