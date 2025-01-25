.class public Lio/github/zeroaicy/util/reflect/ReflectPie;
.super Ljava/lang/Object;
.source "ReflectPie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/util/reflect/ReflectPie$NULL;
    }
.end annotation


# static fields
.field private static IsReflectPie:Z = false

.field private static final TAG:Ljava/lang/String; = "ReflectPie"

.field private static initialized:Z


# instance fields
.field private final object:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetobject(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smon(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2

    invoke-static {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    invoke-static {}, Lio/github/zeroaicy/util/reflect/ReflectPie;->reflectAll()Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->IsReflectPie:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    .line 299
    iput-object p2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    return-void
.end method

.method public static accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_24

    .line 232
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 234
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 235
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p0

    .line 242
    :cond_24
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2e
    return-object p0
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    .line 543
    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 554
    :catch_9
    move-exception v1

    .line 547
    :goto_a
    :try_start_a
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    .line 550
    :catch_f
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_a

    .line 554
    :cond_17
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    goto :goto_1e

    :goto_1d
    throw p1

    :goto_1e
    goto :goto_1d
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    .line 408
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v1

    .line 412
    :goto_10
    :try_start_10
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception v2

    .line 415
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_10

    .line 419
    :cond_23
    new-instance p1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p1, v1}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 878
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 880
    new-instance v0, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 886
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 888
    new-instance p1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p1, p0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static initValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 198
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 199
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4d

    .line 200
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_11

    .line 201
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_4d

    .line 202
    :cond_11
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    .line 203
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_4d

    .line 204
    :cond_1a
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4d

    .line 206
    :cond_23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    .line 207
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_4d

    .line 208
    :cond_2e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_39

    .line 209
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_4d

    .line 210
    :cond_39
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 211
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_4d

    .line 212
    :cond_43
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4c

    .line 213
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    return-object p0
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 597
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 769
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    .line 770
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_26

    .line 771
    aget-object v1, p2, v0

    const-class v3, Lio/github/zeroaicy/util/reflect/ReflectPie$NULL;

    if-ne v1, v3, :cond_10

    goto :goto_22

    .line 774
    :cond_10
    aget-object v1, p1, v0

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-static {v3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_25

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    return v2

    :cond_26
    const/4 p1, 0x1

    return p1

    :cond_28
    return v2
.end method

.method public static on(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;"
        }
    .end annotation

    .line 182
    new-instance v0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-direct {v0, p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 3

    .line 178
    if-nez p0, :cond_5

    const-class v0, Ljava/lang/Object;

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_9
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-direct {v1, v0, p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static on(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0
.end method

.method private static varargs on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 815
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 817
    new-instance p1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p1, p0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static varargs on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 826
    :try_start_0
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 828
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    .line 829
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0

    .line 833
    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 836
    new-instance p1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p1, p0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;"
        }
    .end annotation

    .line 165
    new-instance v0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0
.end method

.method public static onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    return-object p0
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 747
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 750
    const-string p0, ""

    return-object p0

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 753
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 756
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectAll()Z
    .registers 3

    .line 60
    sget-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->initialized:Z

    if-eqz v0, :cond_7

    .line 61
    sget-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->IsReflectPie:Z

    return v0

    .line 63
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->initialized:Z

    .line 64
    const-string v1, "ReflectPie"

    const-string v2, "reflectAll首次调用"

    invoke-static {v1, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "L"

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->IsReflectPie:Z

    return v0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_19

    aget-object v5, v1, v4

    .line 572
    invoke-direct {p0, v5, p1, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16

    return-object v5

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 579
    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    .line 580
    invoke-direct {p0, v5, p1, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2a

    return-object v5

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 585
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_34

    goto :goto_19

    .line 589
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No similar method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with params "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found on type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method private static varargs types([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 858
    new-array p0, v0, [Ljava/lang/Class;

    return-object p0

    .line 861
    :cond_6
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    .line 863
    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 864
    aget-object v2, p0, v0

    if-nez v2, :cond_13

    .line 865
    const-class v2, Lio/github/zeroaicy/util/reflect/ReflectPie$NULL;

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_17
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method private static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 844
    instance-of v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_a

    .line 845
    check-cast p0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 909
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 910
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_11

    .line 911
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 913
    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_18

    .line 914
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 916
    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1f

    .line 917
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 919
    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_26

    .line 920
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 922
    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2d

    .line 923
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 925
    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_34

    .line 926
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 928
    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3b

    .line 929
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 931
    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_42

    .line 932
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 934
    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_48

    .line 935
    const-class p0, Ljava/lang/Void;

    :cond_48
    return-object p0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;[",
            "Ljava/lang/Class<",
            "*>;)TP;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    .line 683
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPie$1;

    invoke-direct {v1, p0, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie$1;-><init>(Lio/github/zeroaicy/util/reflect/ReflectPie;Z)V

    .line 737
    array-length v0, p2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Class;

    .line 738
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 739
    array-length v4, p2

    invoke-static {p2, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1

    return-object p1
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 514
    invoke-static {p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 519
    :try_start_4
    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 520
    iget-object v2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {v1, v2, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 523
    :catch_f
    move-exception v1

    :try_start_10
    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 524
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    .line 526
    new-instance p2, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p2, p1}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public create()Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 611
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method public varargs create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 641
    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 646
    :try_start_4
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 647
    invoke-static {v1, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception v1

    .line 649
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_32

    aget-object v5, v2, v4

    .line 650
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 651
    invoke-static {v5, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1

    return-object p1

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 655
    :cond_32
    new-instance p1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p1, v1}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_39

    :goto_38
    throw p1

    :goto_39
    goto :goto_38
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 794
    instance-of v0, p1, Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_11

    .line 795
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    check-cast p1, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 396
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 399
    new-instance v0, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public fields()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 440
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v1

    .line 443
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_3c

    aget-object v6, v2, v5

    .line 444
    iget-object v7, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    iget-object v8, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    if-eq v7, v8, :cond_1c

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_39

    .line 445
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 447
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 448
    invoke-virtual {p0, v6}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 452
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v0
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

    .line 313
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 789
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 345
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_2e

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    .line 349
    :try_start_d
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_22} :catch_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_2e

    goto :goto_24

    .line 358
    :catch_23
    move-exception v0

    .line 355
    :cond_24
    :goto_24
    :try_start_24
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p1

    .line 358
    new-instance p2, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {p2, p1}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 803
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    return-object v0
.end method
