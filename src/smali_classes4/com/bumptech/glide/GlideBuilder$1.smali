.class Lcom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bumptech/glide/GlideBuilder;

.field final val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder$1;->this$0:Lcom/bumptech/glide/GlideBuilder;

    iput-object p2, p0, Lcom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
