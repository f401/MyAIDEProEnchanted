.class final Lcom/google/android/gms/internal/ads/jc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gc;


# instance fields
.field private final j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hc;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/internal/ads/jc;->j6:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Hc;->j6:Lcom/google/android/gms/internal/ads/xH;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/jc;->j6:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V

    :cond_0
    return-void
.end method
