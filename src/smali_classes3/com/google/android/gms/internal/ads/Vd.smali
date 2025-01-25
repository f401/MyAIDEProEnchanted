.class public final Lcom/google/android/gms/internal/ads/Vd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/ce;

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vd;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/ce;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vd;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vd;->DW:Lcom/google/android/gms/internal/ads/ce;

    if-nez v1, :cond_22

    new-instance v1, Lcom/google/android/gms/internal/ads/ce;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_11

    :cond_10
    move-object p1, v2

    :goto_11
    sget-object v2, Lcom/google/android/gms/internal/ads/p;->DW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ce;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Vd;->DW:Lcom/google/android/gms/internal/ads/ce;

    :cond_22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Vd;->DW:Lcom/google/android/gms/internal/ads/ce;

    monitor-exit v0

    return-object p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method
