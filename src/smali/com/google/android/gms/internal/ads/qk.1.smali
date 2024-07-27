.class final synthetic Lcom/google/android/gms/internal/ads/qk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/pk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qk;->j6:Lcom/google/android/gms/internal/ads/pk;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qk;->j6:Lcom/google/android/gms/internal/ads/pk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->Ws()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
