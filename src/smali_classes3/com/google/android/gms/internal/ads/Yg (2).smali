.class final synthetic Lcom/google/android/gms/internal/ads/Yg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/vp;


# instance fields
.field private final DW:Lorg/json/JSONObject;

.field private final j6:Lcom/google/android/gms/internal/ads/Mo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yg;->j6:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Yg;->DW:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yg;->j6:Lcom/google/android/gms/internal/ads/Mo;

    const-string v1, "google.afma.nativeAds.renderVideo"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yg;->DW:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
