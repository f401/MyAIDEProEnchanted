.class final Lcom/google/android/gms/ads/internal/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ea;->j6:Lcom/google/android/gms/ads/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ea;->j6:Lcom/google/android/gms/ads/internal/aa;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->j6()Lcom/google/android/gms/internal/ads/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ea;->j6:Lcom/google/android/gms/ads/internal/aa;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ex;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
