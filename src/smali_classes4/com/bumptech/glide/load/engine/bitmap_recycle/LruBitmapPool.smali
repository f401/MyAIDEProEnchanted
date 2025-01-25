.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String; = "LruBitmapPool"


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:I

.field private maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

.field private final tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    return-void
.end method

.method private dump()V
    .registers 3

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    :cond_c
    return-void
.end method

.method private dumpUnchecked()V
    .registers 4

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private evict()V
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    return-void
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;-><init>()V

    goto :goto_b
.end method

.method private trimToSize(I)V
    .registers 6

    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    if-le v0, p1, :cond_23

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "LruBitmapPool"

    const-string v1, "Size mismatch, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_69

    :cond_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LruBitmapPool"

    const-string v3, "Evicting bitmap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_68
    .catchall {:try_start_25 .. :try_end_68} :catchall_69

    goto :goto_1

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearMemory()V
    .registers 3

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    if-eqz p3, :cond_65

    move-object v0, p3

    :goto_6
    invoke-interface {v1, p1, p2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_68

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LruBitmapPool"

    const-string v3, "Missing bitmap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    :cond_39
    :goto_39
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LruBitmapPool"

    const-string v3, "Get bitmap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_89

    monitor-exit p0

    return-object v0

    :cond_65
    :try_start_65
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    goto :goto_6

    :cond_68
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_39

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_88
    .catchall {:try_start_65 .. :try_end_88} :catchall_89

    goto :goto_39

    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSize()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    return v0
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    if-gt v0, v1, :cond_2a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    :cond_2a
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LruBitmapPool"

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", is mutable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", is allowed config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_e .. :try_end_73} :catchall_b

    :cond_73
    const/4 v0, 0x0

    :goto_74
    monitor-exit p0

    return v0

    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->add(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LruBitmapPool"

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_be
    .catchall {:try_start_76 .. :try_end_be} :catchall_b

    const/4 v0, 0x1

    goto :goto_74
.end method

.method public setSizeMultiplier(F)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimMemory(I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_29

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->clearMemory()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const/16 v0, 0x28

    if-lt p1, v0, :cond_28

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    goto :goto_28
.end method
