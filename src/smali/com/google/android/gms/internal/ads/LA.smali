.class final Lcom/google/android/gms/internal/ads/LA;
.super Ljava/lang/Object;


# instance fields
.field public final DW:[J

.field public final FH:[I

.field public final Hw:I

.field public final Zo:[I

.field public final j6:I

.field public final v5:[J


# direct methods
.method public constructor <init>([J[II[J[I)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/LA;->FH:[I

    iput p3, p0, Lcom/google/android/gms/internal/ads/LA;->Hw:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/LA;->j6:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final DW(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final j6(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6([JJZZ)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
