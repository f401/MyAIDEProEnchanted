.class final Lcom/google/android/gms/internal/ads/_g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Ug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ug;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_g;->j6:Lcom/google/android/gms/internal/ads/Ug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/_g;->j6:Lcom/google/android/gms/internal/ads/Ug;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ug;->j6(Lcom/google/android/gms/internal/ads/Ug;)Lcom/google/android/gms/ads/internal/C;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/C;->NZ()V

    return-void
.end method
