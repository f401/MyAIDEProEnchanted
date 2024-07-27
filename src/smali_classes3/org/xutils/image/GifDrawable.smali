.class public Lorg/xutils/image/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private final begin:J

.field private byteCount:I

.field private final duration:I

.field private final movie:Landroid/graphics/Movie;

.field private rate:I

.field private volatile running:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Movie;I)V
    .registers 5

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lorg/xutils/image/GifDrawable;->rate:I

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/image/GifDrawable;->begin:J

    .line 24
    iput-object p1, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    .line 25
    iput p2, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 55
    :try_start_0
    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xutils/image/GifDrawable;->begin:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/xutils/image/GifDrawable;->duration:I

    rem-int/2addr v0, v1

    .line 56
    :goto_0
    iget-object v1, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 57
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 58
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_1
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getByteCount()I
    .registers 3

    .line 38
    iget v0, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    .line 41
    :cond_0
    iget v0, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    return v0
.end method

.method public getDuration()I
    .registers 2

    .line 30
    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 105
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    return v0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .registers 2

    .line 34
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getRate()I
    .registers 2

    .line 45
    iget v0, p0, Lorg/xutils/image/GifDrawable;->rate:I

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lorg/xutils/image/GifDrawable;->running:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .registers 5

    .line 87
    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->invalidateSelf()V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/xutils/image/GifDrawable;->rate:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lorg/xutils/image/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 91
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 96
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 110
    return-void
.end method

.method public setRate(I)V
    .registers 2

    .line 49
    iput p1, p0, Lorg/xutils/image/GifDrawable;->rate:I

    .line 50
    return-void
.end method

.method public start()V
    .registers 2

    .line 66
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/GifDrawable;->running:Z

    .line 68
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->run()V

    .line 70
    :cond_0
    return-void
.end method

.method public stop()V
    .registers 2

    .line 74
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/image/GifDrawable;->running:Z

    .line 76
    invoke-virtual {p0, p0}, Lorg/xutils/image/GifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 78
    :cond_0
    return-void
.end method
