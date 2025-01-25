.class final Lcom/google/android/gms/internal/ads/Bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gc;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/_i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/_i;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bc;->j6:Lcom/google/android/gms/internal/ads/_i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Hc;->Zo:Lcom/google/android/gms/internal/ads/jj;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bc;->j6:Lcom/google/android/gms/internal/ads/_i;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/jj;->j6(Lcom/google/android/gms/internal/ads/_i;)V

    :cond_9
    return-void
.end method
