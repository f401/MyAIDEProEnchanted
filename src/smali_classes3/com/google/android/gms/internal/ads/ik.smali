.class final Lcom/google/android/gms/internal/ads/ik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Rm;

.field private final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik;->j6:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ik;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ik;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_10
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_b} :catch_e
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    goto :goto_13

    :catch_e
    move-exception v0

    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ik;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
