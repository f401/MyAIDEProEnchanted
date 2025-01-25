.class public Lorg/json2/JSONObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json2/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;

.field static final NUMBER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/json2/JSONObject;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/json2/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/json2/JSONObject$Null;-><init>(Lorg/json2/JSONObject$1;)V

    sput-object v0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lorg/json2/JSONObject;-><init>()V

    invoke-direct {p0, p1}, Lorg/json2/JSONObject;->populateMap(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/json2/JSONObject;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/json2/JSONObject;->populateMap(Ljava/lang/Object;Ljava/util/Set;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 7

    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/json2/JSONObject;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    :goto_9
    array-length v2, p2

    if-ge v0, v2, :cond_1c

    aget-object v2, p2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json2/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1d

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return-void

    :catch_1d
    move-exception v2

    goto :goto_19
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json2/JSONObject;-><init>(Lorg/json2/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/json2/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v1, v6

    add-int/lit8 v7, v1, -0x1

    const/4 v1, 0x0

    move v2, v1

    move-object v3, p0

    :goto_2d
    if-ge v2, v7, :cond_43

    aget-object v8, v6, v2

    invoke-virtual {v3, v8}, Lorg/json2/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3f

    new-instance v1, Lorg/json2/JSONObject;

    invoke-direct {v1}, Lorg/json2/JSONObject;-><init>()V

    invoke-virtual {v3, v8, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    goto :goto_2d

    :cond_43
    aget-object v1, v6, v7

    invoke-virtual {v4, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_13

    :cond_4d
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v3, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lorg/json2/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Lorg/json2/JSONObject;[Ljava/lang/String;)V
    .registers 6

    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/json2/JSONObject;-><init>(I)V

    const/4 v0, 0x0

    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_16

    :try_start_8
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json2/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_17

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    return-void

    :catch_17
    move-exception v1

    goto :goto_13
.end method

.method public constructor <init>(Lorg/json2/JSONTokener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v3, 0x7b

    invoke-direct {p0}, Lorg/json2/JSONObject;-><init>()V

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v3, :cond_87

    :goto_b
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->getPrevious()C

    move-result v0

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v1

    sparse-switch v1, :sswitch_data_8e

    :cond_16
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->back()V

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_80

    if-eqz v0, :cond_3a

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_58

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    :cond_3a
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_a0

    const-string v0, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_48
    if-ne v0, v3, :cond_16

    const-string v0, "A JSON Object can not directly nest another JSON Object or JSON Array."

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_51
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_73
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_7c

    :sswitch_7b
    return-void

    :cond_7c
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->back()V

    goto :goto_b

    :cond_80
    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_87
    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_51
        0x5b -> :sswitch_48
        0x7b -> :sswitch_48
        0x7d -> :sswitch_7b
    .end sparse-switch

    :sswitch_data_a0
    .sparse-switch
        0x2c -> :sswitch_73
        0x3b -> :sswitch_73
        0x7d -> :sswitch_7b
    .end sparse-switch
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const-string v0, "null"

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_f

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f

    :goto_2c
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_3f
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private static getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v3, :cond_3a

    aget-object v4, v2, v0

    :try_start_25
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/json2/JSONObject;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_34} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_34} :catch_53

    move-result-object v0

    goto :goto_5

    :catch_36
    move-exception v4

    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/json2/JSONObject;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_4d} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_4d} :catch_51

    move-result-object v0

    goto :goto_5

    :catch_4f
    move-exception v0

    goto :goto_4

    :catch_51
    move-exception v0

    goto :goto_4

    :catch_53
    move-exception v4

    goto :goto_37
.end method

.method private static getAnnotationDepth(Ljava/lang/reflect/Method;Ljava/lang/Class;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    :goto_5
    const/4 v0, -0x1

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v3, :cond_3a

    aget-object v4, v2, v0

    :try_start_21
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/json2/JSONObject;->getAnnotationDepth(Ljava/lang/reflect/Method;Ljava/lang/Class;)I
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_30} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_30} :catch_57

    move-result v4

    if-lez v4, :cond_37

    add-int/lit8 v0, v4, 0x1

    goto :goto_6

    :catch_36
    move-exception v4

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/json2/JSONObject;->getAnnotationDepth(Ljava/lang/reflect/Method;Ljava/lang/Class;)I
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_4d} :catch_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_4d} :catch_55

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_53
    move-exception v0

    goto :goto_5

    :catch_55
    move-exception v0

    goto :goto_5

    :catch_57
    move-exception v4

    goto :goto_37
.end method

.method private static getKeyNameFromMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-class v0, Lorg/json2/JSONPropertyIgnore;

    invoke-static {p0, v0}, Lorg/json2/JSONObject;->getAnnotationDepth(Ljava/lang/reflect/Method;Ljava/lang/Class;)I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_19

    const-class v4, Lorg/json2/JSONPropertyName;

    invoke-static {p0, v4}, Lorg/json2/JSONObject;->getAnnotationDepth(Ljava/lang/reflect/Method;Ljava/lang/Class;)I

    move-result v4

    if-ltz v4, :cond_a7

    if-gt v0, v4, :cond_19

    move-object v0, v3

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-class v0, Lorg/json2/JSONPropertyName;

    invoke-static {p0, v0}, Lorg/json2/JSONObject;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONPropertyName;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Lorg/json2/JSONPropertyName;->value()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Lorg/json2/JSONPropertyName;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-interface {v0}, Lorg/json2/JSONPropertyName;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_38
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "get"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_61

    move v0, v1

    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a7

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_71

    move-object v0, v3

    goto :goto_18

    :cond_61
    const-string v0, "is"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_a7

    move v0, v2

    goto :goto_4b

    :cond_71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_7e

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_7e
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    :cond_a7
    move-object v0, v3

    goto/16 :goto_18
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    if-eqz v3, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public static getNames(Lorg/json2/JSONObject;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/json2/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json2/JSONObject;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_7
.end method

.method static final indent(Ljava/io/Writer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method protected static isDecimalNotation(Ljava/lang/String;)Z
    .registers 3

    const/4 v1, -0x1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_21

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_21

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_21

    const-string v0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method static isNumberSimilar(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/json2/JSONObject;->numberIsFinite(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lorg/json2/JSONObject;->numberIsFinite(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    instance-of v1, p0, Ljava/lang/Comparable;

    if-eqz v1, :cond_2b

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_e

    :cond_29
    const/4 v0, 0x1

    goto :goto_e

    :cond_2b
    invoke-static {p0, v3, v0}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;Z)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {p1, v3, v0}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;Z)Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_e
.end method

.method private static isValidMethodName(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "getClass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "getDeclaringClass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static numberIsFinite(Ljava/lang/Number;)Z
    .registers 4

    instance-of v0, p0, Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2a

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_15

    :cond_2a
    const/4 v0, 0x1

    goto :goto_15

    :cond_2c
    move v0, v1

    goto :goto_15
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_48

    invoke-static {p0}, Lorg/json2/JSONObject;->testValidity(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_47

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_47

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_47

    :goto_22
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_35
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_47
    return-object v0

    :cond_48
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;Z)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method static objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;Z)Ljava/math/BigDecimal;
    .registers 5

    sget-object v0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/math/BigDecimal;

    move-object p1, p0

    goto :goto_8

    :cond_11
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1d

    new-instance p1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_8

    :cond_1d
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_25

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3a

    :cond_25
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lorg/json2/JSONObject;->numberIsFinite(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Ljava/math/BigDecimal;

    if-eqz p2, :cond_61

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_8

    :cond_3a
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4a

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_4a

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4a

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_56

    :cond_4a
    new-instance p1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_8

    :cond_56
    :try_start_56
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_69

    move-object p1, v0

    goto :goto_8

    :cond_61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :catch_69
    move-exception v0

    goto :goto_8
.end method

.method static objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6

    sget-object v0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/math/BigInteger;

    move-object p1, p0

    goto :goto_8

    :cond_11
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1c

    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_8

    :cond_1c
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_24

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3a

    :cond_24
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/json2/JSONObject;->numberIsFinite(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_8

    :cond_3a
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4a

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_4a

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4a

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_55

    :cond_4a
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_8

    :cond_55
    :try_start_55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/JSONObject;->isDecimalNotation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_8

    :cond_69
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6e} :catch_70

    move-object p1, p0

    goto :goto_8

    :catch_70
    move-exception v0

    goto :goto_8
.end method

.method private populateMap(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONObject;->populateMap(Ljava/lang/Object;Ljava/util/Set;)V

    return-void
.end method

.method private populateMap(Ljava/lang/Object;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_7e

    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_80

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v0

    :goto_13
    array-length v3, v1

    :goto_14
    if-ge v2, v3, :cond_8d

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_7a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_7a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/json2/JSONObject;->isValidMethodName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-static {v0}, Lorg/json2/JSONObject;->getKeyNameFromMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7a

    const/4 v5, 0x0

    :try_start_54
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-static {v0, p2}, Lorg/json2/JSONObject;->wrap(Ljava/lang/Object;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    instance-of v4, v0, Ljava/io/Closeable;
    :try_end_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_73} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_73} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_73} :catch_90

    if-eqz v4, :cond_7a

    :try_start_75
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7a} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_7a} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7a} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_75 .. :try_end_7a} :catch_90

    :cond_7a
    :goto_7a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_7e
    move v0, v2

    goto :goto_c

    :cond_80
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v0

    goto :goto_13

    :cond_86
    :try_start_86
    invoke-static {v4}, Lorg/json2/JSONObject;->recursivelyDefinedObjectException(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
    :try_end_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_86 .. :try_end_8b} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_8b} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_86 .. :try_end_8b} :catch_90

    :catch_8b
    move-exception v0

    goto :goto_7a

    :cond_8d
    return-void

    :catch_8e
    move-exception v0

    goto :goto_7a

    :catch_90
    move-exception v0

    goto :goto_7a

    :catch_92
    move-exception v0

    goto :goto_7a
.end method

.method public static quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x22

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_b
    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_10
    return-object p1

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    move v0, v1

    move v3, v1

    :goto_1a
    if-ge v3, v4, :cond_6e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_72

    const/16 v0, 0x20

    if-lt v2, v0, :cond_37

    const/16 v0, 0x80

    if-lt v2, v0, :cond_2f

    const/16 v0, 0xa0

    if-lt v2, v0, :cond_37

    :cond_2f
    const/16 v0, 0x2000

    if-lt v2, v0, :cond_5b

    const/16 v0, 0x2100

    if-ge v2, v0, :cond_5b

    :cond_37
    const-string v0, "\\u"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :goto_4b
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_1a

    :sswitch_52
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_5b

    :sswitch_56
    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_5b
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_4e

    :sswitch_5f
    const-string v0, "\\r"

    goto :goto_4b

    :sswitch_62
    const-string v0, "\\f"

    goto :goto_4b

    :sswitch_65
    const-string v0, "\\n"

    goto :goto_4b

    :sswitch_68
    const-string v0, "\\t"

    goto :goto_4b

    :sswitch_6b
    const-string v0, "\\b"

    goto :goto_4b

    :cond_6e
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_10

    :sswitch_data_72
    .sparse-switch
        0x8 -> :sswitch_6b
        0x9 -> :sswitch_68
        0xa -> :sswitch_65
        0xc -> :sswitch_62
        0xd -> :sswitch_5f
        0x22 -> :sswitch_56
        0x2f -> :sswitch_52
        0x5c -> :sswitch_56
    .end sparse-switch
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    invoke-static {p0, v0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_14
    .catchall {:try_start_a .. :try_end_11} :catchall_18

    move-result-object v0

    :goto_12
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_18

    return-object v0

    :catch_14
    move-exception v0

    const-string v0, ""

    goto :goto_12

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private static recursivelyDefinedObjectException(Ljava/lang/String;)Lorg/json2/JSONException;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaBean object contains recursively defined member variable of key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected static stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v6, 0x2

    const/16 v5, 0x39

    const/16 v4, 0x2d

    const/4 v3, 0x1

    const/16 v2, 0x30

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_11

    if-le v1, v5, :cond_13

    :cond_11
    if-ne v1, v4, :cond_ff

    :cond_13
    invoke-static {p0}, Lorg/json2/JSONObject;->isDecimalNotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    :try_start_19
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-ne v1, v4, :cond_2e

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_25} :catch_2f

    move-result v1

    if-nez v1, :cond_2e

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_2e
    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_40
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "val ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    if-ne v1, v2, :cond_bb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_bb

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_89

    if-le v0, v5, :cond_9f

    :cond_89
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_ed

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2e

    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    if-ne v1, v4, :cond_89

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_89

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v2, :cond_89

    if-lt v1, v2, :cond_89

    if-gt v1, v5, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ed
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_2e

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_2e

    :cond_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_14
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_1f
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_8

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_37

    const/16 v1, 0x39

    if-le v0, v1, :cond_3b

    :cond_37
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    :cond_3b
    :try_start_3b
    invoke-static {p0}, Lorg/json2/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object p0

    goto :goto_8

    :catch_40
    move-exception v0

    goto :goto_8
.end method

.method public static testValidity(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/json2/JSONObject;->numberIsFinite(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lorg/json2/JSONWriter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/json2/JSONObject;->wrap(Ljava/lang/Object;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static wrap(Ljava/lang/Object;Ljava/util/Set;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_8
    move-object p0, v0

    :cond_9
    :goto_9
    return-object p0

    :cond_a
    instance-of v1, p0, Lorg/json2/JSONObject;

    if-nez v1, :cond_9

    instance-of v1, p0, Lorg/json2/JSONArray;

    if-nez v1, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/json2/JSONString;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Enum;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_59

    new-instance v0, Lorg/json2/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_57
    move-object p0, v0

    goto :goto_9

    :cond_59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V
    :try_end_68
    .catch Lorg/json2/JSONException; {:try_start_0 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_77

    goto :goto_57

    :catch_69
    move-exception v0

    throw v0

    :cond_6b
    :try_start_6b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7a

    new-instance v0, Lorg/json2/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_57

    :catch_77
    move-exception v0

    const/4 p0, 0x0

    goto :goto_9

    :cond_7a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_88
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_ab

    :cond_a2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a5
    .catch Lorg/json2/JSONException; {:try_start_6b .. :try_end_a5} :catch_69
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a5} :catch_77

    move-result-object p0

    goto/16 :goto_9

    :cond_a8
    const-string v0, ""

    goto :goto_88

    :cond_ab
    if-eqz p1, :cond_b4

    :try_start_ad
    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p0, p1}, Lorg/json2/JSONObject;-><init>(Ljava/lang/Object;Ljava/util/Set;)V

    goto/16 :goto_8

    :cond_b4
    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p0}, Lorg/json2/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_b9
    .catch Lorg/json2/JSONException; {:try_start_ad .. :try_end_b9} :catch_69
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b9} :catch_77

    goto :goto_57
.end method

.method static final writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_9
    const-string v1, "null"

    :cond_b
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_e
    return-object p0

    :cond_f
    instance-of v1, p1, Lorg/json2/JSONString;

    if-eqz v1, :cond_32

    :try_start_13
    move-object v0, p1

    check-cast v0, Lorg/json2/JSONString;

    move-object v1, v0

    invoke-interface {v1}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_2b

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-static {v1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :catch_2b
    move-exception v1

    new-instance v2, Lorg/json2/JSONException;

    invoke-direct {v2, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_32
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_4c

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/json2/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/json2/JSONObject;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_b

    :goto_48
    invoke-static {v1, p0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    goto :goto_e

    :cond_4c
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_55

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_55
    instance-of v1, p1, Ljava/lang/Enum;

    if-eqz v1, :cond_60

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_60
    instance-of v1, p1, Lorg/json2/JSONObject;

    if-eqz v1, :cond_6a

    check-cast p1, Lorg/json2/JSONObject;

    invoke-virtual {p1, p0, p2, p3}, Lorg/json2/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    :cond_6a
    instance-of v1, p1, Lorg/json2/JSONArray;

    if-eqz v1, :cond_74

    check-cast p1, Lorg/json2/JSONArray;

    invoke-virtual {p1, p0, p2, p3}, Lorg/json2/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    :cond_74
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_83

    new-instance v1, Lorg/json2/JSONObject;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, p0, p2, p3}, Lorg/json2/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    :cond_83
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_93

    new-instance v1, Lorg/json2/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_8e
    invoke-virtual {v1, p0, p2, p3}, Lorg/json2/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto/16 :goto_e

    :cond_93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a3

    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1, p1}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_8e

    :cond_a3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_48
.end method

.method private static wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;
    .registers 6

    if-nez p2, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONObject["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] is not a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (null)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    return-object v0

    :cond_2a
    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_36

    instance-of v0, p2, Ljava/lang/Iterable;

    if-nez v0, :cond_36

    instance-of v0, p2, Lorg/json2/JSONObject;

    if-eqz v0, :cond_6a

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONObject["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] is not a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONObject["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] is not a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2}, Lorg/json2/JSONObject;->testValidity(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    instance-of v0, p2, Lorg/json2/JSONArray;

    if-eqz v0, :cond_16

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0}, Lorg/json2/JSONArray;-><init>()V

    :goto_12
    invoke-virtual {v0, p2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object p2

    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    :goto_19
    return-object p0

    :cond_1a
    instance-of v1, v0, Lorg/json2/JSONArray;

    if-eqz v1, :cond_24

    check-cast v0, Lorg/json2/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_19

    :cond_24
    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    goto :goto_12
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p2}, Lorg/json2/JSONObject;->testValidity(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0}, Lorg/json2/JSONArray;-><init>()V

    :goto_f
    invoke-virtual {v0, p2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    return-object p0

    :cond_17
    instance-of v1, v0, Lorg/json2/JSONArray;

    if-eqz v1, :cond_1e

    check-cast v0, Lorg/json2/JSONArray;

    goto :goto_f

    :cond_1e
    const-string v0, "JSONArray"

    invoke-static {p1, v0, v2, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_29

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONObject["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    const-string v1, "BigDecimal"

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/json2/JSONObject;->objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    const-string v1, "BigInteger"

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1d

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    if-eqz v2, :cond_34

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    goto :goto_1c

    :cond_34
    const-string v0, "Boolean"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-wide v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "double"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/json2/JSONObject;->optEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enum of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "float"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "int"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONArray;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONArray;

    return-object v0

    :cond_b
    const-string v1, "JSONArray"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONObject;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONObject;

    return-object v0

    :cond_b
    const-string v1, "JSONObject"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-wide v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "long"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getMapType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/Number;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_a

    :catch_14
    move-exception v1

    const-string v2, "number"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_b
    const-string v1, "string"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONObject;->wrongValueFormatException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public increment(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;I)Lorg/json2/JSONObject;

    :goto_a
    return-object p0

    :cond_b
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;I)Lorg/json2/JSONObject;

    goto :goto_a

    :cond_1b
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2c

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;J)Lorg/json2/JSONObject;

    goto :goto_a

    :cond_2c
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_3c

    check-cast v0, Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_38
    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_a

    :cond_3c
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4d

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;F)Lorg/json2/JSONObject;

    goto :goto_a

    :cond_4d
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5e

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;D)Lorg/json2/JSONObject;

    goto :goto_a

    :cond_5e
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6b

    check-cast v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_38

    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to increment ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Lorg/json2/JSONArray;
    .registers 3

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lorg/json2/JSONArray;

    iget-object v1, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public optBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public optBigInteger(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/json2/JSONObject;->objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .registers 5

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return p2

    :cond_d
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_c

    :cond_18
    :try_start_18
    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result p2

    goto :goto_c

    :catch_1d
    move-exception v0

    goto :goto_c
.end method

.method public optDouble(Ljava/lang/String;)D
    .registers 4

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lorg/json2/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .registers 6

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->optNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    goto :goto_6
.end method

.method public optEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json2/JSONObject;->optEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public optEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object p3

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    check-cast v0, Ljava/lang/Enum;

    move-object p3, v0

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_22} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22} :catch_26

    move-result-object p3

    goto :goto_c

    :catch_24
    move-exception v0

    goto :goto_c

    :catch_26
    move-exception v0

    goto :goto_c
.end method

.method public optFloat(Ljava/lang/String;)F
    .registers 3

    const/high16 v0, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public optFloat(Ljava/lang/String;F)F
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->optNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    goto :goto_6
.end method

.method public optInt(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return p2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_7
.end method

.method public optJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONArray;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONArray;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public optJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optJSONObject(Ljava/lang/String;Lorg/json2/JSONObject;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public optJSONObject(Ljava/lang/String;Lorg/json2/JSONObject;)Lorg/json2/JSONObject;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONObject;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONObject;

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p2

    goto :goto_a
.end method

.method public optLong(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json2/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-wide p2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    goto :goto_7
.end method

.method public optNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public optNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object p2

    :cond_d
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_15

    check-cast v0, Ljava/lang/Number;

    move-object p2, v0

    goto :goto_c

    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1e

    move-result-object p2

    goto :goto_c

    :catch_1e
    move-exception v0

    goto :goto_c
.end method

.method public optQuery(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/json2/JSONPointer;

    invoke-direct {v0, p1}, Lorg/json2/JSONPointer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->optQuery(Lorg/json2/JSONPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optQuery(Lorg/json2/JSONPointer;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json2/JSONPointer;->queryFrom(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json2/JSONPointerException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object p2

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_c
.end method

.method public put(Ljava/lang/String;D)Lorg/json2/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;F)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;J)Lorg/json2/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_11

    if-eqz p2, :cond_d

    invoke-static {p2}, Lorg/json2/JSONObject;->testValidity(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_c

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json2/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p2}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json2/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p2}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Z)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1, p2}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object p0

    :cond_e
    return-object p0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public query(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/json2/JSONPointer;

    invoke-direct {v0, p1}, Lorg/json2/JSONPointer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->query(Lorg/json2/JSONPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/json2/JSONPointer;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1, p0}, Lorg/json2/JSONPointer;->queryFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/json2/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public similar(Ljava/lang/Object;)Z
    .registers 8

    const/4 v4, 0x0

    :try_start_1
    instance-of v1, p1, Lorg/json2/JSONObject;

    if-nez v1, :cond_7

    move v1, v4

    :goto_6
    return v1

    :cond_7
    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lorg/json2/JSONObject;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    move v1, v4

    goto :goto_6

    :cond_1b
    invoke-virtual {p0}, Lorg/json2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lorg/json2/JSONObject;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lorg/json2/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eq v3, v2, :cond_23

    if-nez v3, :cond_47

    move v1, v4

    goto :goto_6

    :cond_47
    instance-of v1, v3, Lorg/json2/JSONObject;

    if-eqz v1, :cond_57

    move-object v0, v3

    check-cast v0, Lorg/json2/JSONObject;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lorg/json2/JSONObject;->similar(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v4

    goto :goto_6

    :cond_57
    instance-of v1, v3, Lorg/json2/JSONArray;

    if-eqz v1, :cond_65

    check-cast v3, Lorg/json2/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json2/JSONArray;->similar(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v4

    goto :goto_6

    :cond_65
    instance-of v1, v3, Ljava/lang/Number;

    if-eqz v1, :cond_7b

    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_7b

    check-cast v3, Ljava/lang/Number;

    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-static {v3, v1}, Lorg/json2/JSONObject;->isNumberSimilar(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v4

    goto :goto_6

    :cond_7b
    instance-of v1, v3, Lorg/json2/JSONString;

    if-eqz v1, :cond_98

    instance-of v1, v2, Lorg/json2/JSONString;

    if-eqz v1, :cond_98

    check-cast v3, Lorg/json2/JSONString;

    invoke-interface {v3}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lorg/json2/JSONString;

    invoke-interface {v2}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v4

    goto/16 :goto_6

    :cond_98
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_a4

    move-result v1

    if-nez v1, :cond_23

    move v1, v4

    goto/16 :goto_6

    :cond_a1
    const/4 v1, 0x1

    goto/16 :goto_6

    :catchall_a4
    move-exception v1

    move v1, v4

    goto/16 :goto_6
.end method

.method public toJSONArray(Lorg/json2/JSONArray;)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/json2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Lorg/json2/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {p1, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    move-object v0, v1

    goto :goto_9
.end method

.method public toMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json2/JSONObject;

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json2/JSONObject;

    invoke-virtual {v1}, Lorg/json2/JSONObject;->toMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2c

    :cond_47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json2/JSONArray;

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json2/JSONArray;

    invoke-virtual {v1}, Lorg/json2/JSONArray;->toList()Ljava/util/List;

    move-result-object v1

    goto :goto_2c

    :cond_5a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2c

    :cond_5f
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0, v0, p1, v2}, Lorg/json2/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/json2/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;II)Ljava/io/Writer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0}, Lorg/json2/JSONObject;->length()I

    move-result v0

    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    if-ne v0, v2, :cond_5f

    invoke-virtual {p0}, Lorg/json2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    if-lez p2, :cond_33

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_33} :catch_58

    :cond_33
    :try_start_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lorg/json2/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_40
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_58

    :cond_3a
    :goto_3a
    const/16 v0, 0x7d

    :try_start_3c
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-object p1

    :catch_40
    move-exception v0

    new-instance v2, Lorg/json2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write JSONObject value for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_58} :catch_58

    :catch_58
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    if-eqz v0, :cond_3a

    add-int v3, p3, p2

    :try_start_63
    invoke-virtual {p0}, Lorg/json2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_80

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_80
    if-lez p2, :cond_87

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_87
    invoke-static {p1, v3}, Lorg/json2/JSONObject;->indent(Ljava/io/Writer;I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    if-lez p2, :cond_a3

    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_a3} :catch_58

    :cond_a3
    :try_start_a3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, v3}, Lorg/json2/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_aa} :catch_ac
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_aa} :catch_58

    move v1, v2

    goto :goto_6d

    :catch_ac
    move-exception v0

    :try_start_ad
    new-instance v2, Lorg/json2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write JSONObject value for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_c4
    if-lez p2, :cond_cb

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_cb
    invoke-static {p1, p3}, Lorg/json2/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ce} :catch_58

    goto/16 :goto_3a
.end method
