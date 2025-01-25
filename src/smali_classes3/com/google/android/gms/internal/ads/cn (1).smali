.class public final Lcom/google/android/gms/internal/ads/cn;
.super Lcom/google/android/gms/internal/ads/zzbdi;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final FH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:I

.field private final Hw:Lcom/google/android/gms/internal/ads/Fn;

.field private J0:I

.field private J8:I

.field private QX:Z

.field private VH:I

.field private Ws:Lcom/google/android/gms/internal/ads/zzbdx;

.field private XL:I

.field private Zo:I

.field private aM:Lcom/google/android/gms/internal/ads/nn;

.field private gn:Landroid/media/MediaPlayer;

.field private tp:I

.field private u7:Landroid/net/Uri;

.field private final v5:Z

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cn;->FH:Ljava/util/Map;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_43

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_bf

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/Cn;Lcom/google/android/gms/internal/ads/Fn;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->Zo:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/cn;->QX:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/cn;->v5:Z

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/Fn;->j6(Lcom/google/android/gms/internal/ads/zzbdi;)V

    return-void
.end method

.method private final VH()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cn;->v5:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_59

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_59

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cn;->j6(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_51

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cn;->j6()V

    :cond_59
    return-void
.end method

.method private final Zo()V
    .registers 7

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cn;->u7:Landroid/net/Uri;

    if-eqz v1, :cond_c9

    if-nez v0, :cond_11

    goto/16 :goto_c9

    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cn;->j6(Z)V

    const/4 v2, 0x1

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->lg()Lcom/google/android/gms/ads/internal/overlay/t;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/cn;->we:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/cn;->QX:Z

    if-eqz v3, :cond_6f

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->FH()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_67

    move-object v0, v3

    goto :goto_6f

    :cond_67
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    :cond_6f
    :goto_6f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cn;->u7:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->rN()Lcom/google/android/gms/ads/internal/overlay/u;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9a} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_9a} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_9a} :catch_9b

    return-void

    :catch_9b
    move-exception v0

    goto :goto_a0

    :catch_9d
    move-exception v0

    goto :goto_a0

    :catch_9f
    move-exception v0

    :goto_a0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cn;->u7:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to initialize MediaPlayer at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/cn;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_c9
    :goto_c9
    return-void
.end method

.method private final gn(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->DW()V

    goto :goto_1c

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/cn;->Zo:I

    if-ne v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->FH()V

    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->Zo:I

    return-void
.end method

.method private final gn()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->Zo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cn;->aM:Lcom/google/android/gms/internal/ads/nn;

    return-object p0
.end method

.method private final j6(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    :goto_9
    return-void

    :cond_a
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Z)V
    .registers 4

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    if-eqz p1, :cond_27

    iput v0, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    :cond_27
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 4

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/mn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/mn;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    return-void
.end method

.method public final DW(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    return-void

    :cond_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    return-void
.end method

.method public final FH()V
    .registers 4

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->j6:Lcom/google/android/gms/internal/ads/xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xn;->j6()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/ln;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ln;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    iput v1, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    return-void
.end method

.method public final Hw()V
    .registers 2

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->j6()V

    return-void
.end method

.method final synthetic VH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->aM:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/nn;->onWindowVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method public final getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->gn()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public final getVideoHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoWidth()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->j6()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cn;->j6(F)V

    return-void
.end method

.method public final j6(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(FF)V

    :cond_7
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/nn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cn;->aM:Lcom/google/android/gms/internal/ads/nn;

    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/internal/ads/cn;->we:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "AdMediaPlayerView completion"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/gn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/gn;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    sget-object p1, Lcom/google/android/gms/internal/ads/cn;->FH:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    sget-object p3, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/hn;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/hn;-><init>(Lcom/google/android/gms/internal/ads/cn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6

    sget-object p1, Lcom/google/android/gms/internal/ads/cn;->FH:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    if-lez v2, :cond_7a

    iget v2, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    if-lez v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    if-nez v2, :cond_7a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_41

    if-ne v1, v2, :cond_41

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-ge v2, v3, :cond_3c

    div-int v0, v2, v1

    move v1, p2

    goto :goto_7a

    :cond_3c
    if-le v2, v3, :cond_7c

    div-int p2, v3, v0

    goto :goto_7c

    :cond_41
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_53

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_51

    if-le v0, p2, :cond_51

    goto :goto_7c

    :cond_51
    move p2, v0

    goto :goto_7c

    :cond_53
    if-ne v1, v2, :cond_61

    iget v1, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_78

    if-le v1, p1, :cond_78

    goto :goto_7c

    :cond_61
    iget v2, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    if-ne v1, v3, :cond_6d

    if-le v4, p2, :cond_6d

    mul-int v1, v2, p2

    div-int/2addr v1, v4

    goto :goto_6f

    :cond_6d
    move v1, v2

    move p2, v4

    :goto_6f
    if-ne v0, v3, :cond_78

    if-le v1, p1, :cond_78

    mul-int v4, v4, p1

    div-int p2, v4, v2

    goto :goto_7c

    :cond_78
    move p1, v1

    goto :goto_7c

    :cond_7a
    :goto_7a
    move p1, v0

    move p2, v1

    :cond_7c
    :goto_7c
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v0, :cond_86

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(II)V

    :cond_86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9f

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->J0:I

    if-lez v0, :cond_92

    if-ne v0, p1, :cond_98

    :cond_92
    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->J8:I

    if-lez v0, :cond_9b

    if-eq v0, p2, :cond_9b

    :cond_98
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->VH()V

    :cond_9b
    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->J0:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/cn;->J8:I

    :cond_9f
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cn;->gn(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->Hw()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/en;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/en;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    if-eqz p1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cn;->DW(I)V

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->VH()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_58

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cn;->FH()V

    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cn;->j6()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p1, "AdMediaPlayerView surface created"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->Zo()V

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/in;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/in;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string p1, "AdMediaPlayerView surface destroyed"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    :cond_1a
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/kn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/kn;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cn;->j6(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    const-string p1, "AdMediaPlayerView surface changed"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/cn;->VH:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    if-ne v0, p2, :cond_18

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    if-ne v0, p3, :cond_18

    const/4 v1, 0x1

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->gn:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    if-eqz v1, :cond_2a

    iget p1, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    if-eqz p1, :cond_27

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cn;->DW(I)V

    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cn;->FH()V

    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cn;->Ws:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz p1, :cond_31

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(II)V

    :cond_31
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/jn;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/jn;-><init>(Lcom/google/android/gms/internal/ads/cn;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Fn;->DW(Lcom/google/android/gms/internal/ads/zzbdi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->j6:Lcom/google/android/gms/internal/ads/xn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cn;->aM:Lcom/google/android/gms/internal/ads/nn;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/xn;->j6(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/nn;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->EQ:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/cn;->tp:I

    if-eqz p2, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_33
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dn;-><init>(Lcom/google/android/gms/internal/ads/cn;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzty;->j6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzty;->j6:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cn;->u7:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn;->XL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn;->Zo()V

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/google/android/gms/internal/ads/cn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v5()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cn;->QX:Z

    if-eqz v0, :cond_7

    const-string v0, " spherical"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MediaPlayer"

    if-eqz v1, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
