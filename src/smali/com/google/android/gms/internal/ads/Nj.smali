.class final synthetic Lcom/google/android/gms/internal/ads/Nj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Mj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nj;->j6:Lcom/google/android/gms/internal/ads/Mj;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nj;->j6:Lcom/google/android/gms/internal/ads/Mj;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Mj;->j6(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method
