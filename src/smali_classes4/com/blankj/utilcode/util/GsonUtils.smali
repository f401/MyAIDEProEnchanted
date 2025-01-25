.class public final Lcom/blankj/utilcode/util/GsonUtils;
.super Ljava/lang/Object;


# static fields
.field private static final GSONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DEFAULT:Ljava/lang/String; = "defaultGson"

.field private static final KEY_DELEGATE:Ljava/lang/String; = "delegateGson"

.field private static final KEY_LOG_UTILS:Ljava/lang/String; = "logUtilsGson"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createGson()Lutilcode/com/google/gson/Gson;
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lutilcode/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lutilcode/com/google/gson/GsonBuilder;->serializeNulls()Lutilcode/com/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/GsonBuilder;->disableHtmlEscaping()Lutilcode/com/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/GsonBuilder;->create()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lutilcode/com/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lutilcode/com/google/gson/Gson;Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lutilcode/com/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lutilcode/com/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lutilcode/com/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/Gson;",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lutilcode/com/google/gson/Gson;Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/Gson;",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lutilcode/com/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lutilcode/com/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    invoke-static {p0}, Lutilcode/com/google/gson/reflect/TypeToken;->getArray(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getGson()Lutilcode/com/google/gson/Gson;
    .registers 3

    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    const-string v1, "delegateGson"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/Gson;

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    const-string v1, "defaultGson"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/Gson;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->createGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    sget-object v1, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    const-string v2, "defaultGson"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static getGson(Ljava/lang/String;)Lutilcode/com/google/gson/Gson;
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/Gson;

    return-object v0
.end method

.method static getGson4LogUtils()Lutilcode/com/google/gson/Gson;
    .registers 3

    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    const-string v1, "logUtilsGson"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/Gson;

    if-nez v0, :cond_24

    new-instance v0, Lutilcode/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lutilcode/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lutilcode/com/google/gson/GsonBuilder;->setPrettyPrinting()Lutilcode/com/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/GsonBuilder;->serializeNulls()Lutilcode/com/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/GsonBuilder;->create()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    sget-object v1, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    const-string v2, "logUtilsGson"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v0
.end method

.method public static getListType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lutilcode/com/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getMapType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5

    const-class v0, Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lutilcode/com/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getSetType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    const-class v0, Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lutilcode/com/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3

    invoke-static {p0, p1}, Lutilcode/com/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static setGson(Ljava/lang/String;Lutilcode/com/google/gson/Gson;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static setGsonDelegate(Lutilcode/com/google/gson/Gson;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    const-string v1, "delegateGson"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Lutilcode/com/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Lutilcode/com/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Lutilcode/com/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Lutilcode/com/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
