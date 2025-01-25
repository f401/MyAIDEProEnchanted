.class final Lcom/google/android/gms/internal/ads/Ig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hg;

.field private final j6:Lcom/google/android/gms/internal/ads/kk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Hg;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ig;->DW:Lcom/google/android/gms/internal/ads/Hg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ig;->j6:Lcom/google/android/gms/internal/ads/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ig;->DW:Lcom/google/android/gms/internal/ads/Hg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hg;->j6(Lcom/google/android/gms/internal/ads/Hg;)Lcom/google/android/gms/internal/ads/Ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ig;->j6:Lcom/google/android/gms/internal/ads/kk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
