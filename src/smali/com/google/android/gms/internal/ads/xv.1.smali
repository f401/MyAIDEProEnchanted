.class abstract Lcom/google/android/gms/internal/ads/xv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract DW(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract DW(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract DW(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation
.end method

.method abstract DW(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract FH(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract FH(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract Hw(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract Zo(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract j6()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/yt;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/android/gms/internal/ads/yt;",
            ")V"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract j6(Lcom/google/android/gms/internal/ads/ev;)Z
.end method

.method final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/android/gms/internal/ads/ev;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->VH()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;II)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xv;->j6()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    shl-int/lit8 v3, v2, 0x3

    or-int/lit8 v3, v3, 0x4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/xv;->Zo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->v5()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/yt;)V

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Zo()J

    move-result-wide v4

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;IJ)V

    goto :goto_0

    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->v5()J

    move-result-wide v4

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;IJ)V

    goto :goto_0
.end method

.method abstract v5(Ljava/lang/Object;)V
.end method
