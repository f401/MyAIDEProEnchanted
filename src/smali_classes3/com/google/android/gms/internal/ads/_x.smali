.class public final Lcom/google/android/gms/internal/ads/_x;
.super Lcom/google/android/gms/internal/ads/jy;


# instance fields
.field private u7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V
    .registers 14

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_x;->u7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->gW:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->BT:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_x;->u7:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ax;->j6()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_x;->u7:Ljava/util/List;

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_x;->u7:Ljava/util/List;

    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v0

    :try_start_37
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/_x;->u7:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/br;->gW:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/_x;->u7:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/br;->BT:Ljava/lang/Long;

    monitor-exit v0

    return-void

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_37 .. :try_end_63} :catchall_61

    throw v1

    :cond_64
    return-void
.end method
