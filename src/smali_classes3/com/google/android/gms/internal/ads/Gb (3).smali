.class public final Lcom/google/android/gms/internal/ads/Gb;
.super Lcom/google/android/gms/internal/ads/gb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/formats/d$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gb;->j6:Lcom/google/android/gms/ads/formats/d$a;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Ta;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gb;->j6:Lcom/google/android/gms/ads/formats/d$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/Wa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Wa;-><init>(Lcom/google/android/gms/internal/ads/Ta;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/d$a;->j6(Lcom/google/android/gms/ads/formats/d;)V

    return-void
.end method
