.class final Lcom/google/android/gms/internal/ads/Mi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/ads/Ji;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Li;

.field private final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Li;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mi;->DW:Lcom/google/android/gms/internal/ads/Li;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Mi;->j6:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->DW:Lcom/google/android/gms/internal/ads/Li;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Li;->j6(Lcom/google/android/gms/internal/ads/Li;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mi;->j6:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ni;

    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/Ni;->j6:J

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->xg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaua;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mi;->j6:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ni;->DW:Lcom/google/android/gms/internal/ads/Ji;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ji;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaua;->j6()Lcom/google/android/gms/internal/ads/Ji;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mi;->DW:Lcom/google/android/gms/internal/ads/Li;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Li;->j6(Lcom/google/android/gms/internal/ads/Li;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mi;->j6:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/Ni;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Mi;->DW:Lcom/google/android/gms/internal/ads/Li;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/Ni;-><init>(Lcom/google/android/gms/internal/ads/Li;Lcom/google/android/gms/internal/ads/Ji;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mi;->j6:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaua;->j6()Lcom/google/android/gms/internal/ads/Ji;

    move-result-object v0

    goto :goto_1
.end method
