.class public final Lcom/google/android/gms/internal/ads/M;
.super Lcom/google/android/gms/internal/ads/K;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M;->j6:Lcom/google/android/gms/ads/doubleclick/c;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/G;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/M;->j6:Lcom/google/android/gms/ads/doubleclick/c;

    new-instance v1, Lcom/google/android/gms/internal/ads/F;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/F;-><init>(Lcom/google/android/gms/internal/ads/G;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/c;->j6(Lcom/google/android/gms/ads/doubleclick/b;)V

    return-void
.end method
