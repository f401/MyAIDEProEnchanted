.class public final Lcom/google/android/gms/internal/ads/FD;
.super Ljava/lang/Object;


# instance fields
.field private DW:[J

.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/FD;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FD;->DW:[J

    return-void
.end method


# virtual methods
.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/FD;->j6:I

    return v0
.end method

.method public final j6(I)J
    .registers 5

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/FD;->j6:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FD;->DW:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/FD;->j6:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(J)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/FD;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/FD;->DW:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FD;->DW:[J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FD;->DW:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/FD;->j6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/FD;->j6:I

    aput-wide p1, v0, v1

    return-void
.end method
