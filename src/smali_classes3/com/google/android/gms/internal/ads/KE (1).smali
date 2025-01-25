.class final Lcom/google/android/gms/internal/ads/KE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/EE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/EE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/EE;->j6(Lcom/google/android/gms/internal/ads/EE;)Lcom/google/android/gms/internal/ads/sE;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/sE;->j6(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/EE;->j6(Lcom/google/android/gms/internal/ads/EE;)Lcom/google/android/gms/internal/ads/sE;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/sE;->j6(Lcom/google/android/gms/internal/ads/OE;Ljava/util/Map;)V

    :cond_17
    return-void
.end method
