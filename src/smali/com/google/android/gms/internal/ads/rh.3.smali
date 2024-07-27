.class final Lcom/google/android/gms/internal/ads/rh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sm",
        "<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lorg/json/JSONObject;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rh;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rh;->DW:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rh;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rh;->DW:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final j6(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
