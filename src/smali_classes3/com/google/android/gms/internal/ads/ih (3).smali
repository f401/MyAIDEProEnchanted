.class final synthetic Lcom/google/android/gms/internal/ads/ih;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/hh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ih;->j6:Lcom/google/android/gms/internal/ads/hh;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ih;->j6:Lcom/google/android/gms/internal/ads/hh;

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hh;->j6(Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method
