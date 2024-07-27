.class Lorg/xutils/http/loader/StringLoader;
.super Lorg/xutils/http/loader/Loader;
.source "StringLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private resultStr:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    .line 16
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->charset:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/StringLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 37
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/loader/StringLoader;->charset:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

    .line 38
    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/StringLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/xutils/http/loader/StringLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/StringLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lorg/xutils/http/loader/StringLoader;->resultStr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/StringLoader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .registers 4

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    iput-object v0, p0, Lorg/xutils/http/loader/StringLoader;->charset:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method
