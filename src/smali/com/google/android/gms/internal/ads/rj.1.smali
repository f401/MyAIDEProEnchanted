.class final Lcom/google/android/gms/internal/ads/rj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Je;

.field private final FH:Lcom/google/android/gms/internal/ads/qj;

.field private final j6:Lcom/google/android/gms/internal/ads/zzwb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qj;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rj;->FH:Lcom/google/android/gms/internal/ads/qj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rj;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rj;->DW:Lcom/google/android/gms/internal/ads/Je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->FH:Lcom/google/android/gms/internal/ads/qj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rj;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rj;->DW:Lcom/google/android/gms/internal/ads/Je;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qj;->j6(Lcom/google/android/gms/internal/ads/qj;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V

    return-void
.end method
