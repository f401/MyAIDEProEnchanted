.class public abstract Lcom/google/android/gms/internal/ads/Ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/hl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hl",
        "<",
        "Lcom/google/android/gms/internal/ads/Hm;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile DW:Ljava/lang/Thread;

.field private FH:Z

.field private final j6:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Bk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Bk;-><init>(Lcom/google/android/gms/internal/ads/Ak;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->j6:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ak;->FH:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Bk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Bk;-><init>(Lcom/google/android/gms/internal/ads/Ak;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->j6:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ak;->FH:Z

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ak;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ak;->DW:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract DW()V
.end method

.method public final synthetic FH()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ak;->FH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->j6:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/Lk;->DW:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Lm;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->j6:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract Hw()V
.end method

.method public final cancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ak;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->DW:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->DW:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/Hm;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ak;->FH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->j6:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/Lk;->DW:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Lm;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ak;->j6:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    goto :goto_0
.end method
