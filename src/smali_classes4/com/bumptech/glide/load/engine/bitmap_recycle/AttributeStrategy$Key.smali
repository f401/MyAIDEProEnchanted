.class Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private height:I

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    if-eqz v1, :cond_1a

    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    if-ne v1, v2, :cond_1a

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    if-ne v1, v2, :cond_1a

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public init(IILandroid/graphics/Bitmap$Config;)V
    .registers 4

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iput p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public offer()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
