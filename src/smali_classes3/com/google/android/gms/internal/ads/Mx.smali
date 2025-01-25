.class public final Lcom/google/android/gms/internal/ads/Mx;
.super Lcom/google/android/gms/internal/ads/jy;


# instance fields
.field private final tp:Landroid/view/View;

.field private final u7:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;IILandroid/view/View;Landroid/app/Activity;)V
    .registers 16

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Mx;->tp:Landroid/view/View;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Mx;->u7:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final j6()V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mx;->tp:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->om:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mx;->tp:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mx;->u7:Landroid/app/Activity;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v2

    :try_start_35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/br;->XG:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    aget-object v4, v1, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/br;->jJ:Ljava/lang/Long;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->wc:Ljava/lang/String;

    :cond_5f
    monitor-exit v2

    return-void

    :catchall_61
    move-exception v0

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_61

    throw v0
.end method
