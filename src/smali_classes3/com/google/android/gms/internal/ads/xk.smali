.class public final Lcom/google/android/gms/internal/ads/xk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/yk;

.field private final j6:Ljava/lang/Object;

.field private final v5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/yk;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xk;->j6:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xk;->Hw:Lcom/google/android/gms/internal/ads/yk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xk;->v5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->J8()Lcom/google/android/gms/internal/ads/yk;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/xk;-><init>(Lcom/google/android/gms/internal/ads/yk;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xk;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_1f

    const-class v1, Lcom/google/android/gms/internal/ads/xk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_1f

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/xk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xk;->v5:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xk;->v5:Ljava/lang/String;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    if-nez p1, :cond_1f

    return v0

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xk;->v5:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final j6()Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/ads/xk;->DW:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/ads/xk;->FH:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final j6(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/xk;->DW:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/xk;->FH:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xk;->Hw:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/xk;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
