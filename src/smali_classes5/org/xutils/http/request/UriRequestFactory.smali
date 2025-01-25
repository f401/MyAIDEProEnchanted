.class public final Lorg/xutils/http/request/UriRequestFactory;
.super Ljava/lang/Object;
.source "UriRequestFactory.java"


# static fields
.field private static final SCHEME_CLS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/request/UriRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private static defaultTrackerCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/app/RequestTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/http/request/UriRequestFactory;->SCHEME_CLS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getDefaultTracker()Lorg/xutils/http/app/RequestTracker;
    .registers 3

    const/4 v1, 0x0

    .line 71
    :try_start_1
    sget-object v0, Lorg/xutils/http/request/UriRequestFactory;->defaultTrackerCls:Ljava/lang/Class;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 75
    :goto_6
    return-object v0

    .line 71
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/app/RequestTracker;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_6

    .line 72
    :catchall_e
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 75
    goto :goto_6
.end method

.method public static getUriRequest(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)Lorg/xutils/http/request/UriRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 33
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 34
    const-string v0, "file"

    .line 40
    :cond_18
    :goto_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 42
    sget-object v0, Lorg/xutils/http/request/UriRequestFactory;->SCHEME_CLS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 43
    if-eqz v0, :cond_4e

    .line 44
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Lorg/xutils/http/RequestParams;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/reflect/Type;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 46
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/request/UriRequest;

    .line 55
    :goto_46
    return-object v0

    .line 35
    :cond_47
    if-lez v2, :cond_18

    .line 36
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 48
    :cond_4e
    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 49
    new-instance v0, Lorg/xutils/http/request/HttpRequest;

    invoke-direct {v0, p0, p1}, Lorg/xutils/http/request/HttpRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_46

    .line 50
    :cond_5c
    const-string v0, "assets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 51
    new-instance v0, Lorg/xutils/http/request/AssetsRequest;

    invoke-direct {v0, p0, p1}, Lorg/xutils/http/request/AssetsRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_46

    .line 52
    :cond_6a
    const-string v0, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 53
    new-instance v0, Lorg/xutils/http/request/LocalFileRequest;

    invoke-direct {v0, p0, p1}, Lorg/xutils/http/request/LocalFileRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_46

    .line 54
    :cond_78
    const-string v0, "res"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 55
    new-instance v0, Lorg/xutils/http/request/ResRequest;

    invoke-direct {v0, p0, p1}, Lorg/xutils/http/request/ResRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    goto :goto_46

    .line 57
    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The url not be support: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The url not be support: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static registerDefaultTrackerClass(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/app/RequestTracker;",
            ">;)V"
        }
    .end annotation

    .line 66
    sput-object p0, Lorg/xutils/http/request/UriRequestFactory;->defaultTrackerCls:Ljava/lang/Class;

    .line 67
    return-void
.end method

.method public static registerRequestClass(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xutils/http/request/UriRequest;",
            ">;)V"
        }
    .end annotation

    .line 79
    sget-object v0, Lorg/xutils/http/request/UriRequestFactory;->SCHEME_CLS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
