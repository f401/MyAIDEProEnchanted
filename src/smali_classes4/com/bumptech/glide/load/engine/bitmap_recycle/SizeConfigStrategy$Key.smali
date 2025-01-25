.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;ILandroid/graphics/Bitmap$Config;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V

    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_17

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    :cond_16
    :goto_16
    return v0

    :cond_17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_16
.end method

.method public hashCode()I
    .registers 3

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_c
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public init(ILandroid/graphics/Bitmap$Config;)V
    .registers 3

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public offer()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
