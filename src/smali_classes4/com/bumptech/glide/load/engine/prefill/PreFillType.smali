.class public final Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private final weight:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(IILandroid/graphics/Bitmap$Config;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    iput p2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    iput p4, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    if-eqz v1, :cond_20

    check-cast p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method getHeight()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    return v0
.end method

.method getWeight()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    return v0
.end method

.method getWidth()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreFillSize{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
