.class public Lorg/xutils/http/request/AssetsRequest;
.super Lorg/xutils/http/request/ResRequest;
.source "AssetsRequest.java"


# direct methods
.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/ResRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_2b

    .line 24
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/xutils/http/request/AssetsRequest;->queryUrl:Ljava/lang/String;

    const-string v2, "assets://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    .line 27
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/xutils/http/request/AssetsRequest;->contentLength:J

    .line 29
    :cond_2b
    iget-object v0, p0, Lorg/xutils/http/request/AssetsRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method
