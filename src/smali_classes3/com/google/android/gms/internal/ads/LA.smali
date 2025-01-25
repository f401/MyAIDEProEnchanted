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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/LA;->FH:[I

    iput p3, p0, Lcom/google/android/gms/internal/ads/LA;->Hw:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/LA;->j6:I

    return-void
.end method


# virtual methods
.method public final DW(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result p1

    :goto_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    array-length p2, p2

    if-ge p1, p2, :cond_18

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    aget p2, p2, p1

    and-int/2addr p2, v2

    if-eqz p2, :cond_15

    return p1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public final j6(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/TD;->j6([JJZZ)I

    move-result p1

    :goto_8
    if-ltz p1, :cond_15

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    aget p2, p2, p1

    and-int/2addr p2, v2

    if-eqz p2, :cond_12

    return p1

    :cond_12
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_15
    const/4 p1, -0x1

    return p1
.end method
