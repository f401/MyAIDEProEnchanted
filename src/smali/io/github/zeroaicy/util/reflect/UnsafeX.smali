.class public Lio/github/zeroaicy/util/reflect/UnsafeX;
.super Ljava/lang/Object;
.source "UnsafeX.java"


# static fields
.field private static UnsafeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static addressSize:Ljava/lang/reflect/Method;

.field private static getInt:Ljava/lang/reflect/Method;

.field private static getInt1:Ljava/lang/reflect/Method;

.field private static getLong:Ljava/lang/reflect/Method;

.field private static getLong1:Ljava/lang/reflect/Method;

.field private static getUnsafe:Ljava/lang/reflect/Method;

.field private static putInt:Ljava/lang/reflect/Method;

.field private static putInt1:Ljava/lang/reflect/Method;

.field private static putLong:Ljava/lang/reflect/Method;

.field private static putObject:Ljava/lang/reflect/Method;


# instance fields
.field unsafe:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 30
    const-string v0, "putInt"

    const-string v1, "getLong"

    const-string v2, "getInt"

    :try_start_6
    const-string v3, "sun.misc.Unsafe"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    .line 31
    const-string v4, "getUnsafe"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->getUnsafe:Ljava/lang/reflect/Method;

    .line 33
    sget-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    const-string v4, "addressSize"

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->addressSize:Ljava/lang/reflect/Method;

    .line 35
    sget-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt:Ljava/lang/reflect/Method;

    .line 36
    sget-object v3, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt1:Ljava/lang/reflect/Method;

    .line 38
    sget-object v2, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong:Ljava/lang/reflect/Method;

    .line 39
    sget-object v2, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v3, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong1:Ljava/lang/reflect/Method;

    .line 41
    sget-object v1, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lio/github/zeroaicy/util/reflect/UnsafeX;->putInt:Ljava/lang/reflect/Method;

    .line 42
    sget-object v1, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v3, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putInt1:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "putLong"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    aput-object v1, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putLong:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->UnsafeClass:Ljava/lang/Class;

    const-string v1, "putObject"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putObject:Ljava/lang/reflect/Method;
    :try_end_bb
    .catchall {:try_start_6 .. :try_end_bb} :catchall_bc

    goto :goto_bd

    :catchall_bc
    move-exception v0

    :goto_bd
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    return-void
.end method

.method public static getUnsafe()Lio/github/zeroaicy/util/reflect/UnsafeX;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 80
    new-instance v0, Lio/github/zeroaicy/util/reflect/UnsafeX;

    sget-object v1, Lio/github/zeroaicy/util/reflect/UnsafeX;->getUnsafe:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/reflect/UnsafeX;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addressSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 59
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->addressSize:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInt(J)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 64
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/Object;J)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 68
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt1:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 72
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getLong(Ljava/lang/Object;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 76
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong1:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public putInt(JI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 84
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putInt:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putInt(Ljava/lang/Object;JI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 88
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putInt1:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLong(Ljava/lang/Object;JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 92
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putLong:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 96
    sget-object v0, Lio/github/zeroaicy/util/reflect/UnsafeX;->putObject:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/UnsafeX;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
