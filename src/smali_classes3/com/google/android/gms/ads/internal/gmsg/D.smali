.class final Lcom/google/android/gms/ads/internal/gmsg/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/gmsg/C;

.field private final j6:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/C;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/D;->DW:Lcom/google/android/gms/ads/internal/gmsg/C;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/D;->j6:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/D;->DW:Lcom/google/android/gms/ads/internal/gmsg/C;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/gmsg/C;->DW:Lcom/google/android/gms/internal/ads/Sc;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/gmsg/D;->j6:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method
