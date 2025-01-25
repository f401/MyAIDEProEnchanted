.class final Lcom/google/android/gms/internal/ads/ri;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/qi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri;->j6:Lcom/google/android/gms/internal/ads/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/Qd;

    :try_start_2
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ri;->j6:Lcom/google/android/gms/internal/ads/qi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qi;->j6:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Error requesting an ad url"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/oi;->Zo()Lcom/google/android/gms/ads/internal/gmsg/G;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->j6:Lcom/google/android/gms/internal/ads/qi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qi;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/gmsg/G;->DW(Ljava/lang/String;)V

    return-void
.end method
