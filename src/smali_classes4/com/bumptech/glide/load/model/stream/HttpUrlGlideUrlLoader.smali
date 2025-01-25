.class public Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/GlideUrl;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_14
    :goto_14
    new-instance v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;-><init>(Lcom/bumptech/glide/load/model/GlideUrl;)V

    return-object v0

    :cond_1a
    move-object p1, v0

    goto :goto_14
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 5

    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
