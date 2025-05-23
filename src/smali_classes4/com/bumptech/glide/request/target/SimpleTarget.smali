.class public abstract Lcom/bumptech/glide/request/target/SimpleTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iput p2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    return-void
.end method


# virtual methods
.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 5

    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", either provide dimensions in the constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or call override()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method
