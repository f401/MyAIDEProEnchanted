.class final synthetic Lcom/google/android/gms/internal/ads/mh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# instance fields
.field private final DW:Lorg/json/JSONObject;

.field private final j6:Lcom/google/android/gms/internal/ads/hh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mh;->j6:Lcom/google/android/gms/internal/ads/hh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mh;->DW:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mh;->j6:Lcom/google/android/gms/internal/ads/hh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mh;->DW:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/hh;->j6(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method
