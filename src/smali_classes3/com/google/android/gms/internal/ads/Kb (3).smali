.class public final Lcom/google/android/gms/internal/ads/Kb;
.super Lcom/google/android/gms/internal/ads/vb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/formats/g$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/g$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kb;->j6:Lcom/google/android/gms/ads/formats/g$a;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/zb;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kb;->j6:Lcom/google/android/gms/ads/formats/g$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/Cb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Cb;-><init>(Lcom/google/android/gms/internal/ads/zb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/g$a;->j6(Lcom/google/android/gms/ads/formats/g;)V

    return-void
.end method
