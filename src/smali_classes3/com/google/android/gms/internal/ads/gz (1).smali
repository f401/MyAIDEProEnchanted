.class final Lcom/google/android/gms/internal/ads/gz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/az;

.field private final j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/az;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gz;->DW:Lcom/google/android/gms/internal/ads/az;

    iput p2, p0, Lcom/google/android/gms/internal/ads/gz;->j6:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->DW:Lcom/google/android/gms/internal/ads/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/az;)Lcom/google/android/gms/internal/ads/_y;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/gz;->j6:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/_y;->j6(I)V

    return-void
.end method
