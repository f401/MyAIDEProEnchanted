.class final synthetic Lcom/google/android/gms/ads/internal/xa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xp;


# instance fields
.field private final DW:Ljava/lang/Runnable;

.field private final j6:Lcom/google/android/gms/internal/ads/kk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kk;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/xa;->j6:Lcom/google/android/gms/internal/ads/kk;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/xa;->DW:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/xa;->j6:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/xa;->DW:Ljava/lang/Runnable;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->J8:Z

    if-nez v0, :cond_b

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method
