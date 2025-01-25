.class public final Lcom/google/android/gms/internal/ads/hx;
.super Lcom/google/android/gms/internal/ads/gx;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/gx;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static j6(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/hx;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/gx;->j6(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/hx;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/ads/hx;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected final j6(Lcom/google/android/gms/internal/ads/Ax;Landroid/content/Context;Lcom/google/android/gms/internal/ads/br;Lcom/google/android/gms/internal/ads/Fp;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Ax;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/br;",
            "Lcom/google/android/gms/internal/ads/Fp;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ax;->FH()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/gx;->er:Z

    if-nez v0, :cond_b

    goto :goto_2d

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ax;->J8()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/gx;->j6(Lcom/google/android/gms/internal/ads/Ax;Landroid/content/Context;Lcom/google/android/gms/internal/ads/br;Lcom/google/android/gms/internal/ads/Fp;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/Ux;

    const-string v3, "DPtJycwRqj/e0TdTHULzeUhZhWJ1IU3iwhH90sUbn4eYKEdB5HI7UC0PtJgg2RSN"

    const-string v4, "Ye7G7hL63+8nOBoyCAHdjfK62rvCOKz3+aC1KA/K9CI="

    const/16 v7, 0x18

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Ux;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2d
    :goto_2d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/gx;->j6(Lcom/google/android/gms/internal/ads/Ax;Landroid/content/Context;Lcom/google/android/gms/internal/ads/br;Lcom/google/android/gms/internal/ads/Fp;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
