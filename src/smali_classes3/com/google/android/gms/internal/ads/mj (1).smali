.class public final Lcom/google/android/gms/internal/ads/mj;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/gx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/_i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/_i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mj;->j6:Lcom/google/android/gms/internal/ads/_i;

    return-void
.end method


# virtual methods
.method public final Z1()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->j6:Lcom/google/android/gms/internal/ads/_i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_i;->Z1()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v2, "Could not forward getAmount to RewardItem"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final getType()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->j6:Lcom/google/android/gms/internal/ads/_i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_i;->getType()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v2, "Could not forward getType to RewardItem"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
