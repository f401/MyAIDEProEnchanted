.class final Lcom/google/android/gms/internal/ads/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/az;

.field private final j6:Lcom/google/android/gms/internal/ads/Dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/az;Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bz;->DW:Lcom/google/android/gms/internal/ads/az;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bz;->j6:Lcom/google/android/gms/internal/ads/Dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->DW:Lcom/google/android/gms/internal/ads/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/az;)Lcom/google/android/gms/internal/ads/_y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bz;->j6:Lcom/google/android/gms/internal/ads/Dz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/_y;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    return-void
.end method
