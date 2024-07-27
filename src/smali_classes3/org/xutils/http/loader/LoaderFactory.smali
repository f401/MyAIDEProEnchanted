.class public final Lorg/xutils/http/loader/LoaderFactory;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# static fields
.field private static final converterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    .line 27
    const-class v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/xutils/http/loader/JSONObjectLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/JSONObjectLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lorg/xutils/http/loader/JSONArrayLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/JSONArrayLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/xutils/http/loader/StringLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/StringLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v1, Ljava/io/File;

    new-instance v2, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v1, [B

    new-instance v2, Lorg/xutils/http/loader/ByteArrayLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/ByteArrayLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lorg/xutils/http/loader/InputStreamLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/InputStreamLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Lorg/xutils/http/loader/BooleanLoader;

    invoke-direct {v1}, Lorg/xutils/http/loader/BooleanLoader;-><init>()V

    .line 35
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lorg/xutils/http/loader/IntegerLoader;

    invoke-direct {v1}, Lorg/xutils/http/loader/IntegerLoader;-><init>()V

    .line 39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getLoader(Ljava/lang/reflect/Type;)Lorg/xutils/http/loader/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/xutils/http/loader/Loader",
            "<*>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/loader/Loader;

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/xutils/http/loader/ObjectLoader;

    invoke-direct {v0, p0}, Lorg/xutils/http/loader/ObjectLoader;-><init>(Ljava/lang/reflect/Type;)V

    .line 50
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/http/loader/Loader;->newInstance()Lorg/xutils/http/loader/Loader;

    move-result-object v0

    goto :goto_0
.end method

.method public static registerLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/loader/Loader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader",
            "<TT;>;)V"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
