.class Lorg/xutils/http/loader/JSONObjectLoader;
.super Lorg/xutils/http/loader/Loader;
.source "JSONObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private resultStr:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    .line 17
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/xutils/http/loader/JSONObjectLoader;->charset:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/loader/JSONObjectLoader;->resultStr:Ljava/lang/String;

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

    .line 15
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/JSONObjectLoader;->load(Lorg/xutils/http/request/UriRequest;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 38
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/loader/JSONObjectLoader;->charset:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/JSONObjectLoader;->resultStr:Ljava/lang/String;

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/xutils/http/loader/JSONObjectLoader;->resultStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/JSONObjectLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_12

    .line 45
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/xutils/http/loader/JSONObjectLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/JSONObjectLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lorg/xutils/http/loader/JSONObjectLoader;->resultStr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/JSONObjectLoader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .registers 4

    .line 27
    if-eqz p1, :cond_e

    .line 28
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 30
    iput-object v0, p0, Lorg/xutils/http/loader/JSONObjectLoader;->charset:Ljava/lang/String;

    .line 33
    :cond_e
    return-void
.end method
