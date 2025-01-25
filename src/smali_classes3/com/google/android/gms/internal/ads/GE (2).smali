.class final Lcom/google/android/gms/internal/ads/GE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Um;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/EE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/EE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/EE;->j6(Lcom/google/android/gms/internal/ads/EE;)Lcom/google/android/gms/internal/ads/sE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/GE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->DW(Lcom/google/android/gms/internal/ads/OE;)V

    return-void
.end method
