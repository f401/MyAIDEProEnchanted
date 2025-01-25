.class final Lorg/xutils/db/table/TableUtils;
.super Ljava/lang/Object;
.source "TableUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static addColumns2Map(Ljava/lang/Class;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;)V"
        }
    .end annotation

    .line 40
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    :goto_8
    return-void

    .line 43
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 44
    array-length v3, v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_53

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_5c

    aget-object v4, v2, v1

    .line 45
    :try_start_14
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 44
    :cond_24
    :goto_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 49
    :cond_28
    const-class v0, Lorg/xutils/db/annotation/Column;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/annotation/Column;

    .line 50
    if-eqz v0, :cond_24

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/xutils/db/converter/ColumnConverterFactory;->isSupportColumnConverter(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 52
    new-instance v5, Lorg/xutils/db/table/ColumnEntity;

    invoke-direct {v5, p0, v4, v0}, Lorg/xutils/db/table/ColumnEntity;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/xutils/db/annotation/Column;)V

    .line 53
    invoke-virtual {v5}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 54
    invoke-virtual {v5}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_14 .. :try_end_52} :catchall_53

    goto :goto_24

    .line 61
    :catchall_53
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 60
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/util/HashMap;)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_53

    goto :goto_8
.end method

.method static findColumnMap(Ljava/lang/Class;)Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    invoke-static {p0, v0}, Lorg/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/util/HashMap;)V

    .line 36
    return-object v0
.end method
