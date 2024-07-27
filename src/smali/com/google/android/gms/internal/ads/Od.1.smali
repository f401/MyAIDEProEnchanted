.class final Lcom/google/android/gms/internal/ads/Od;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm",
        "<",
        "Lcom/google/android/gms/internal/ads/gd;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Lcom/google/android/gms/internal/ads/Ld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Od;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Pd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Pd;-><init>(Lcom/google/android/gms/internal/ads/Od;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
