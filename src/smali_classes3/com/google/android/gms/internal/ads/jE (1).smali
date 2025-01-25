.class final Lcom/google/android/gms/internal/ads/jE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/gE;

.field private final j6:Lcom/google/android/gms/internal/ads/zzfs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jE;->DW:Lcom/google/android/gms/internal/ads/gE;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jE;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jE;->DW:Lcom/google/android/gms/internal/ads/gE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/gE;)Lcom/google/android/gms/internal/ads/fE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jE;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fE;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void
.end method
