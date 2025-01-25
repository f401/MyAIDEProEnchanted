.class public abstract Lcom/google/common/reflect/AbstractInvocationHandler;
.super Ljava/lang/Object;
.source "AbstractInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final NO_ARGS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/reflect/AbstractInvocationHandler;->NO_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isProxyOfSameInterfaces(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    .line 136
    :goto_23
    return v0

    .line 143
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 113
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract handleInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public hashCode()I
    .registers 2

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p3  # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-nez p3, :cond_6

    .line 65
    sget-object p3, Lcom/google/common/reflect/AbstractInvocationHandler;->NO_ARGS:[Ljava/lang/Object;

    .line 67
    :cond_6
    array-length v2, p3

    if-nez v2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 68
    invoke-virtual {p0}, Lcom/google/common/reflect/AbstractInvocationHandler;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 86
    :goto_1d
    return-object v0

    .line 70
    :cond_1e
    array-length v2, p3

    if-ne v2, v0, :cond_62

    .line 71
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "equals"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v2, v2, v1

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_62

    .line 73
    aget-object v2, p3, v1

    .line 74
    if-nez v2, :cond_40

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1d

    .line 77
    :cond_40
    if-ne p1, v2, :cond_47

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1d

    .line 80
    :cond_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/reflect/AbstractInvocationHandler;->isProxyOfSameInterfaces(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 81
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/AbstractInvocationHandler;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 80
    :goto_5b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1d

    :cond_60
    move v0, v1

    .line 81
    goto :goto_5b

    .line 83
    :cond_62
    array-length v0, p3

    if-nez v0, :cond_76

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 84
    invoke-virtual {p0}, Lcom/google/common/reflect/AbstractInvocationHandler;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 86
    :cond_76
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/reflect/AbstractInvocationHandler;->handleInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
