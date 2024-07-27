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
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ax;->FH()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/gx;->er:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/gx;->j6(Lcom/google/android/gms/internal/ads/Ax;Landroid/content/Context;Lcom/google/android/gms/internal/ads/br;Lcom/google/android/gms/internal/ads/Fp;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ax;->J8()I

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/gx;->j6(Lcom/google/android/gms/internal/ads/Ax;Landroid/content/Context;Lcom/google/android/gms/internal/ads/br;Lcom/google/android/gms/internal/ads/Fp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/Ux;

    const-string v2, "DPtJycwRqj/e0TdTHULzeUhZhWJ1IU3iwhH90sUbn4eYKEdB5HI7UC0PtJgg2RSN"

    const-string v3, "Ye7G7hL63+8nOBoyCAHdjfK62rvCOKz3+aC1KA/K9CI="

    const/16 v6, 0x18

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Ux;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    goto :goto_0
.end method
