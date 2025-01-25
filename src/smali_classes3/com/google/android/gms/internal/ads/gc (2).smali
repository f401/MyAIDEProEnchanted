.class final Lcom/google/android/gms/internal/ads/gc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Gc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gc;->j6:Ljava/util/List;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gc;->j6:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final j6(Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gc;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Lcom/google/android/gms/internal/ads/Fc;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Gc;

    invoke-direct {v2, p0, v3, p1}, Lcom/google/android/gms/internal/ads/Fc;-><init>(Lcom/google/android/gms/internal/ads/gc;Lcom/google/android/gms/internal/ads/Gc;Lcom/google/android/gms/internal/ads/Hc;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gc;->j6:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
