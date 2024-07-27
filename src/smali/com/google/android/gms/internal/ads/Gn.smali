.class final Lcom/google/android/gms/internal/ads/Gn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Z

.field private j6:Lcom/google/android/gms/internal/ads/pn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pn;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gn;->DW:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gn;->j6:Lcom/google/android/gms/internal/ads/pn;

    return-void
.end method

.method private final FH()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gn;->DW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Gn;->FH()V

    return-void
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gn;->DW:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gn;->j6:Lcom/google/android/gms/internal/ads/pn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pn;->J8()V

    return-void
.end method

.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gn;->DW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gn;->j6:Lcom/google/android/gms/internal/ads/pn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pn;->J8()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Gn;->FH()V

    :cond_0
    return-void
.end method
