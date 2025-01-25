.class public Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private static final MINI_HEIGHT:I = 0x180

.field private static final MINI_WIDTH:I = 0x200

.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private final height:I

.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreUri:Landroid/net/Uri;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    sget-object v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iput p4, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    iput p5, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    iput-object p6, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreVideo(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static isMediaStoreUri(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p0, :cond_1c

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static isMediaStoreVideo(Landroid/net/Uri;)Z
    .registers 3

    invoke-static {p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;
    .registers 7

    const/4 v3, -0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_1d

    move-result-object v1

    :cond_a
    :goto_a
    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    move v2, v0

    :goto_15
    if-eq v2, v3, :cond_2f

    new-instance v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    const-string v2, "MediaStoreThumbFetcher"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "MediaStoreThumbFetcher"

    const-string v4, "Failed to find thumbnail file"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_2f
    move-object v0, v1

    goto :goto_1c

    :cond_31
    move v2, v3

    goto :goto_15
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_f

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-void

    :catch_f
    move-exception v0

    goto :goto_9
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    iget v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;->build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
