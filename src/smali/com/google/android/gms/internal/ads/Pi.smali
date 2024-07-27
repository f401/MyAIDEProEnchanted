.class final synthetic Lcom/google/android/gms/internal/ads/Pi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rm;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Oi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Oi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pi;->j6:Lcom/google/android/gms/internal/ads/Oi;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pi;->j6:Lcom/google/android/gms/internal/ads/Oi;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Oi;->j6(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
