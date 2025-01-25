.class public abstract Lcom/google/android/gms/internal/ads/zzbdi;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/internal/ads/In;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field protected final DW:Lcom/google/android/gms/internal/ads/Hn;

.field protected final j6:Lcom/google/android/gms/internal/ads/xn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/xn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->j6:Lcom/google/android/gms/internal/ads/xn;

    new-instance v0, Lcom/google/android/gms/internal/ads/Hn;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/Hn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/In;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    return-void
.end method


# virtual methods
.method public abstract DW()V
.end method

.method public abstract DW(I)V
.end method

.method public abstract FH()V
.end method

.method public FH(I)V
    .registers 2

    return-void
.end method

.method public abstract Hw()V
.end method

.method public Hw(I)V
    .registers 2

    return-void
.end method

.method public Zo(I)V
    .registers 2

    return-void
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract j6()V
.end method

.method public abstract j6(FF)V
.end method

.method public abstract j6(Lcom/google/android/gms/internal/ads/nn;)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract v5()Ljava/lang/String;
.end method

.method public v5(I)V
    .registers 2

    return-void
.end method
