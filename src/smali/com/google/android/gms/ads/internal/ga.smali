.class final Lcom/google/android/gms/ads/internal/ga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/fa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/fa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ga;->j6:Lcom/google/android/gms/ads/internal/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ga;->j6:Lcom/google/android/gms/ads/internal/fa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/fa;->DW(Lcom/google/android/gms/internal/ads/Mo;)V

    return-void
.end method
