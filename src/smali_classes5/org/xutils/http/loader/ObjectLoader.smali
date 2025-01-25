.class Lorg/xutils/http/loader/ObjectLoader;
.super Lorg/xutils/http/loader/Loader;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final innerLoader:Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/http/loader/Loader",
            "<*>;"
        }
    .end annotation
.end field

.field private final objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final objectType:Ljava/lang/reflect/Type;

.field private final parser:Lorg/xutils/http/app/ResponseParser;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 6

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    .line 31
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5a

    move-object v0, p1

    .line 32
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    .line 42
    :goto_15
    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 43
    const-class v0, Ljava/util/List;

    invoke-static {p1, v0, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 44
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_64

    move-object v0, v1

    .line 46
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 54
    :goto_32
    const-class v2, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpResponse;

    .line 58
    :goto_3a
    if-eqz v0, :cond_b3

    .line 60
    :try_start_3c
    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpResponse;->parser()Ljava/lang/Class;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/app/ResponseParser;

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    .line 62
    const-class v0, Lorg/xutils/http/app/ResponseParser;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/http/loader/LoaderFactory;->getLoader(Ljava/lang/reflect/Type;)Lorg/xutils/http/loader/Loader;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_aa

    .line 66
    instance-of v0, v0, Lorg/xutils/http/loader/ObjectLoader;

    if-nez v0, :cond_93

    .line 74
    return-void

    .line 33
    :cond_5a
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_ca

    move-object v0, p1

    .line 37
    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    goto :goto_15

    .line 47
    :cond_64
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_6c

    move-object v0, v1

    .line 51
    check-cast v0, Ljava/lang/Class;

    goto :goto_32

    .line 48
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support callback type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_87
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    const-class v1, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpResponse;

    move-object v1, p1

    goto :goto_3a

    .line 72
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support callback type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :catchall_aa
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "create parser error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :cond_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found @HttpResponse from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support callback type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    invoke-virtual {p1, v0}, Lorg/xutils/http/request/UriRequest;->setResponseParser(Lorg/xutils/http/app/ResponseParser;)V

    .line 90
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, v0}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, v0}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "use constructor create ObjectLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->save2Cache(Lorg/xutils/http/request/UriRequest;)V

    .line 104
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->setParams(Lorg/xutils/http/RequestParams;)V

    .line 84
    return-void
.end method
