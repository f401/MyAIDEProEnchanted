.class final Lorg/xutils/http/RequestParamsHelper;
.super Ljava/lang/Object;
.source "RequestParamsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/RequestParamsHelper$ParseKVListener;
    }
.end annotation


# static fields
.field private static final BOOT_CL:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lorg/xutils/http/RequestParamsHelper;->BOOT_CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 109
    :cond_3
    :goto_3
    return-object p0

    .line 68
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 70
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 71
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 72
    const/4 v1, 0x0

    :goto_18
    if-ge v1, v2, :cond_28

    .line 73
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_28
    move-object p0, v0

    .line 75
    goto :goto_3

    :cond_2a
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_4d

    .line 77
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    check-cast p0, Ljava/lang/Iterable;

    .line 79
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    invoke-static {v2}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_39

    :cond_4b
    move-object p0, v0

    .line 82
    goto :goto_3

    :cond_4d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_87

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    check-cast p0, Ljava/util/Map;

    .line 86
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 89
    if-eqz v3, :cond_60

    if-eqz v0, :cond_60

    .line 90
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_60

    :cond_84
    move-object p0, v1

    .line 93
    goto/16 :goto_3

    .line 95
    :cond_87
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    sget-object v2, Lorg/xutils/http/RequestParamsHelper;->BOOT_CL:Ljava/lang/ClassLoader;

    if-eq v0, v2, :cond_3

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    new-instance v2, Lorg/xutils/http/RequestParamsHelper$1;

    invoke-direct {v2, v0}, Lorg/xutils/http/RequestParamsHelper$1;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p0, v1, v2}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    move-object p0, v0

    goto/16 :goto_3
.end method

.method static parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/http/RequestParamsHelper$ParseKVListener;",
            ")V"
        }
    .end annotation

    .line 31
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    const-class v0, Lorg/xutils/http/RequestParams;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    .line 61
    :cond_c
    :goto_c
    return-void

    .line 34
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_c

    sget-object v1, Lorg/xutils/http/RequestParamsHelper;->BOOT_CL:Ljava/lang/ClassLoader;

    if-eq v0, v1, :cond_c

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_5f

    array-length v0, v2

    if-lez v0, :cond_5f

    .line 42
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_23
    if-ge v1, v3, :cond_5f

    aget-object v0, v2, v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_52

    .line 45
    const-string v5, "serialVersionUID"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 46
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/os/Parcelable$Creator;

    if-eq v5, v6, :cond_52

    .line 48
    const/4 v5, 0x1

    :try_start_46
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_52

    .line 51
    invoke-interface {p2, v4, v0}, Lorg/xutils/http/RequestParamsHelper$ParseKVListener;->onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_56

    .line 42
    :cond_52
    :goto_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 53
    :catchall_56
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    .line 60
    :cond_5f
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    goto :goto_c
.end method
