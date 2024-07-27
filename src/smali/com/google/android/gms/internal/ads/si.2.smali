.class final Lcom/google/android/gms/internal/ads/si;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Um;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/qi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->j6:Lcom/google/android/gms/internal/ads/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/oi;->Zo()Lcom/google/android/gms/ads/internal/gmsg/G;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->j6:Lcom/google/android/gms/internal/ads/qi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qi;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/G;->DW(Ljava/lang/String;)V

    return-void
.end method
