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
    .registers 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Hc;->j6:Lcom/google/android/gms/internal/ads/xH;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/jc;->j6:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V

    :cond_9
    return-void
.end method
