.class final Lcom/google/android/gms/internal/ads/Kd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Um;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Hd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kd;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kd;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hd;->j6(Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->Hw()V

    return-void
.end method
