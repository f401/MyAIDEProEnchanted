.class public final Lcom/blankj/utilcode/util/ReflectUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ReflectUtils$NULL;,
        Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p1}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils;->type:Ljava/lang/Class;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_3
    :goto_3
    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_23
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_7} :catch_1b

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_15

    :goto_10
    :try_start_10
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_13} :catch_9

    move-result-object v0

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    :catch_1b
    move-exception v1

    goto :goto_10
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v2

    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_e} :catch_28

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_22

    move-object v2, v0

    :goto_17
    :try_start_17
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_21} :catch_f

    goto :goto_e

    :cond_22
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_28
    move-exception v0

    move-object v1, v0

    goto :goto_17
.end method

.method private varargs getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array v0, v0, [Ljava/lang/Class;

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p1

    new-array v2, v1, [Ljava/lang/Class;

    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    aget-object v1, p1, v0

    if-nez v1, :cond_17

    const-class v1, Lcom/blankj/utilcode/util/ReflectUtils$NULL;

    :goto_12
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_12

    :cond_1c
    move-object v0, v2

    goto :goto_5
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_24

    :try_start_f
    const-class v1, Ljava/lang/reflect/Field;

    const-string v2, "modifiers"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-object v0

    :catch_25
    move-exception v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_24
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/blankj/utilcode/util/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_25

    move v0, v1

    :goto_6
    array-length v2, p2

    if-ge v0, v2, :cond_24

    aget-object v2, p2, v0

    const-class v3, Lcom/blankj/utilcode/util/ReflectUtils$NULL;

    if-eq v2, v3, :cond_21

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method private varargs method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_12

    :catch_1c
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/blankj/utilcode/util/ReflectUtils;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    if-ne v0, v2, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/blankj/utilcode/util/ReflectUtils;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    if-nez p0, :cond_a

    const-class v0, Ljava/lang/Object;

    :goto_4
    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-direct {v1, v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v1

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4
.end method

.method public static reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method public static reflect(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_10
    if-ge v1, v5, :cond_20

    aget-object v6, v4, v1

    invoke-direct {p0, v6, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->sortMethods(Ljava/util/List;)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    :goto_2f
    return-object v0

    :cond_30
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5c

    :cond_36
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_3c
    if-ge v1, v5, :cond_4c

    aget-object v6, v4, v1

    invoke-direct {p0, v6, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-direct {p0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->sortMethods(Ljava/util/List;)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    goto :goto_2f

    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No similar method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could be found on type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sortConstructors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils$1;-><init>(Lcom/blankj/utilcode/util/ReflectUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortMethods(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$2;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils$2;-><init>(Lcom/blankj/utilcode/util/ReflectUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->type:Ljava/lang/Class;

    return-object v0
.end method

.method private unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lcom/blankj/utilcode/util/ReflectUtils;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method private wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_3
    :goto_3
    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_11

    const-class p1, Ljava/lang/Boolean;

    goto :goto_3

    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_18

    const-class p1, Ljava/lang/Integer;

    goto :goto_3

    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1f

    const-class p1, Ljava/lang/Long;

    goto :goto_3

    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_26

    const-class p1, Ljava/lang/Short;

    goto :goto_3

    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2d

    const-class p1, Ljava/lang/Byte;

    goto :goto_3

    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_34

    const-class p1, Ljava/lang/Double;

    goto :goto_3

    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3b

    const-class p1, Ljava/lang/Float;

    goto :goto_3

    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_42

    const-class p1, Ljava/lang/Character;

    goto :goto_3

    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    const-class p1, Ljava/lang/Void;

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/blankj/utilcode/util/ReflectUtils;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    check-cast p1, Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public field(Ljava/lang/String;Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    :try_start_10
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_e

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newInstance()Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    :try_start_5
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_22
    if-ge v1, v6, :cond_36

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_36
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-direct {p0, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->sortConstructors(Ljava/util/List;)V

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    goto :goto_11

    :cond_4a
    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public proxy(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$3;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils$3;-><init>(Lcom/blankj/utilcode/util/ReflectUtils;Z)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
