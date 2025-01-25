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

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_61

    if-eq v0, v2, :cond_59

    const/4 v3, 0x2

    if-eq v0, v3, :cond_51

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_28

    if-eq v0, v3, :cond_26

    const/4 v3, 0x5

    if-ne v0, v3, :cond_21

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->VH()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;II)V

    return v2

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_26
    const/4 p1, 0x0

    return p1

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xv;->j6()Ljava/lang/Object;

    move-result-object v0

    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_3b

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_3b
    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result p2

    if-ne v3, p2, :cond_4c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/xv;->Zo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->v5()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    throw p1

    :cond_51
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/yt;)V

    return v2

    :cond_59
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Zo()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;IJ)V

    return v2

    :cond_61
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->v5()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract v5(Ljava/lang/Object;)V
.end method
