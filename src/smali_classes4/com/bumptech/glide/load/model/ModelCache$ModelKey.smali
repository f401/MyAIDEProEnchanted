.class final Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModelKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    if-nez v0, :cond_f

    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;-><init>()V

    :cond_f
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->init(Ljava/lang/Object;II)V

    return-object v0
.end method

.method private init(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    iput p2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    iput p3, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    if-eqz v1, :cond_1e

    check-cast p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    if-ne v1, v2, :cond_1e

    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public release()V
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
