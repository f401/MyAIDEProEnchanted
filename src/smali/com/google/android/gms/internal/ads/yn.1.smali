.class final Lcom/google/android/gms/internal/ads/yn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/nn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xn;Lcom/google/android/gms/internal/ads/nn;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yn;->j6:Lcom/google/android/gms/internal/ads/nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn;->j6:Lcom/google/android/gms/internal/ads/nn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->Hw()V

    return-void
.end method
