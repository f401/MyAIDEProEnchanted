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
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetobject(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smon(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1

    invoke-static {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lio/github/zeroaicy/util/reflect/ReflectPie;->reflectAll()Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->IsReflectPie:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 243
    :cond_0
    :goto_0
    return-object p0

    .line 231
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 232
    check-cast v0, Ljava/lang/reflect/Member;

    .line 234
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
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

    .line 539
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    .line 543
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 547
    :goto_0
    return-object v0

    .line 550
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    :goto_1
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v2

    .line 408
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 412
    :goto_1
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 408
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 880
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 886
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 888
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static initValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 198
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 199
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 213
    :goto_0
    return-object v0

    .line 200
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 201
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 203
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 207
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 209
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 213
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
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

    .line 597
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
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

    .line 769
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 770
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 771
    aget-object v2, p2, v0

    const-class v3, Lio/github/zeroaicy/util/reflect/ReflectPie$NULL;

    if-ne v2, v3, :cond_1

    .line 774
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p1, v0

    invoke-static {v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {v3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static on(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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
    .locals 2

    .line 178
    if-nez p0, :cond_0

    const-class v0, Ljava/lang/Object;

    :goto_0
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-direct {v1, v0, p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static on(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method private static varargs on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
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

    move-result-object v1

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 817
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 2
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

    if-ne v0, v1, :cond_0

    .line 829
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 836
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;"
        }
    .end annotation

    .line 165
    new-instance v0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method public static onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/Class;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    .line 747
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 750
    const-string v0, ""

    .line 756
    :goto_0
    return-object v0

    .line 750
    :cond_0
    if-ne v0, v2, :cond_1

    .line 753
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_1
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

    goto :goto_0
.end method

.method public static reflectAll()Z
    .locals 3

    const/4 v2, 0x1

    .line 60
    sget-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->initialized:Z

    if-eqz v0, :cond_0

    .line 61
    sget-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->IsReflectPie:Z

    .line 65
    :goto_0
    return v0

    .line 63
    :cond_0
    sput-boolean v2, Lio/github/zeroaicy/util/reflect/ReflectPie;->initialized:Z

    .line 64
    const-string v0, "ReflectPie"

    const-string v1, "reflectAll\u9996\u6b21\u8c03\u7528"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "L"

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/util/reflect/ReflectPie;->IsReflectPie:Z

    goto :goto_0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
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

    const/4 v3, 0x0

    .line 567
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 572
    invoke-direct {p0, v1, p1, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v1

    .line 580
    :goto_1
    return-object v0

    .line 572
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 579
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 580
    invoke-direct {p0, v1, p1, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 589
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No similar method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could be found on type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

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

.method private static varargs types([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
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

    if-nez p0, :cond_0

    .line 858
    new-array v0, v0, [Ljava/lang/Class;

    .line 865
    :goto_0
    return-object v0

    .line 861
    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Class;

    .line 863
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 864
    aget-object v1, p0, v0

    if-nez v1, :cond_1

    .line 865
    const-class v1, Lio/github/zeroaicy/util/reflect/ReflectPie$NULL;

    :goto_2
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 844
    instance-of v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_0

    .line 845
    check-cast p0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 935
    :cond_0
    :goto_0
    return-object p0

    .line 909
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 911
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 913
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 914
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 916
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 917
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 919
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 920
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 922
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 923
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 925
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 926
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 928
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    .line 929
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 931
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_9

    .line 932
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 934
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 935
    const-class p0, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;[",
            "Ljava/lang/Class",
            "<*>;)TP;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 682
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    .line 683
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPie$1;

    invoke-direct {v1, p0, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie$1;-><init>(Lio/github/zeroaicy/util/reflect/ReflectPie;Z)V

    .line 737
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 738
    aput-object p1, v0, v4

    .line 739
    const/4 v2, 0x1

    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 514
    invoke-static {p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 519
    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 520
    iget-object v2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {v1, v2, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 523
    :catch_0
    move-exception v1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 526
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public create()Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 1
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 641
    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 646
    :try_start_0
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 647
    invoke-static {v0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 651
    :goto_0
    return-object v0

    .line 647
    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 650
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 651
    invoke-static {v5, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 655
    :cond_1
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 794
    instance-of v0, p1, Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    check-cast p1, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 396
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 399
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fields()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/github/zeroaicy/util/reflect/ReflectPie;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 439
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 440
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->type()Ljava/lang/Class;

    move-result-object v0

    .line 443
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 444
    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    iget-object v8, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    if-eq v1, v8, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    xor-int/2addr v1, v8

    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 448
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 444
    goto :goto_1

    .line 452
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4
.end method

.method public get()Ljava/lang/Object;
    .locals 1
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
    .locals 1
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

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 789
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/zeroaicy/util/reflect/ReflectPieException;
        }
    .end annotation

    .line 345
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 349
    :try_start_1
    const-class v1, Ljava/lang/reflect/Field;

    const-string v2, "modifiers"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 350
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Lio/github/zeroaicy/util/reflect/ReflectPieException;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPieException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 803
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie;->type:Ljava/lang/Class;

    return-object v0
.end method
