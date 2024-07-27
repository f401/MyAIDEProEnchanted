.class final Lcom/google/android/gms/ads/internal/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/ads/ix;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/Q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/Q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/U;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/ix;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/U;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/Q;->FH(Lcom/google/android/gms/ads/internal/Q;)Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/U;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/Q;->Hw(Lcom/google/android/gms/ads/internal/Q;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/hx;->j6(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/hx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ix;-><init>(Lcom/google/android/gms/internal/ads/ex;)V

    return-object v0
.end method
