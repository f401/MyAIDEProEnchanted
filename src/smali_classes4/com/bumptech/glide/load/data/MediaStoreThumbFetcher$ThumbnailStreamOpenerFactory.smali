.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpenerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    .registers 6

    invoke-static {p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->access$000(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x200

    if-gt p2, v0, :cond_e

    const/16 v0, 0x180

    if-le p3, v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-static {p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->access$100(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    new-instance v1, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;

    invoke-direct {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;-><init>()V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    goto :goto_f

    :cond_21
    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    new-instance v1, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;

    invoke-direct {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;-><init>()V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    goto :goto_f
.end method
