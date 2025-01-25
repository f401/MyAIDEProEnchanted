.class final Lcom/google/android/gms/internal/ads/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/az;

.field private final j6:Lcom/google/android/gms/internal/ads/zzfs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/az;Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dz;->DW:Lcom/google/android/gms/internal/ads/az;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dz;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->DW:Lcom/google/android/gms/internal/ads/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/az;)Lcom/google/android/gms/internal/ads/_y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/_y;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void
.end method
