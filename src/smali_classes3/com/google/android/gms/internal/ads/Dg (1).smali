.class final Lcom/google/android/gms/internal/ads/Dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Cg;

.field private final j6:Lcom/google/android/gms/internal/ads/kk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Cg;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dg;->DW:Lcom/google/android/gms/internal/ads/Cg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dg;->j6:Lcom/google/android/gms/internal/ads/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dg;->DW:Lcom/google/android/gms/internal/ads/Cg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cg;->j6(Lcom/google/android/gms/internal/ads/Cg;)Lcom/google/android/gms/internal/ads/Ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dg;->j6:Lcom/google/android/gms/internal/ads/kk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
