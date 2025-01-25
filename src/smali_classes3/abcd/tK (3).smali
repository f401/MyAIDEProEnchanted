.class Labcd/tK;
.super Labcd/rK;


# static fields
.field private static final Hw:Ljava/lang/reflect/Method;

.field private static final v5:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Ljava/io/File;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "canExecute"

    invoke-static {v0, v3, v2}, Labcd/tK;->j6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Labcd/tK;->Hw:Ljava/lang/reflect/Method;

    const-class v0, Ljava/io/File;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const-string v1, "setExecutable"

    invoke-static {v0, v1, v2}, Labcd/tK;->j6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Labcd/tK;->v5:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/rK;-><init>()V

    return-void
.end method

.method static gn()Z
    .registers 1

    sget-object v0, Labcd/tK;->Hw:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    sget-object v0, Labcd/tK;->v5:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs j6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    goto :goto_8

    :catch_7
    move-exception p0

    :goto_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Ljava/io/File;)Z
    .registers 4

    :try_start_0
    sget-object v0, Labcd/tK;->Hw:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_e

    return p1

    :catch_e
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1c
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j6(Ljava/io/File;Z)Z
    .registers 6

    :try_start_0
    sget-object v0, Labcd/tK;->v5:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_16} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    :catch_17
    move-exception p1

    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1e
    move-exception p1

    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_25
    move-exception p1

    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public v5()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
