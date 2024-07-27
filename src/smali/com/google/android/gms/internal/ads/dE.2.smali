.class final Lcom/google/android/gms/internal/ads/dE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/aE;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dE;->j6:Lcom/google/android/gms/internal/ads/aE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/bE;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dE;-><init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dE;->j6:Lcom/google/android/gms/internal/ads/aE;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    if-eq p0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    goto :goto_0
.end method
