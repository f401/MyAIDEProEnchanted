.class Lsun/reflect/BootstrapConstructorAccessorImpl;
.super Lsun/reflect/ConstructorAccessorImpl;
.source "BootstrapConstructorAccessorImpl.java"


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lsun/reflect/ConstructorAccessorImpl;-><init>()V

    .line 38
    iput-object p1, p0, Lsun/reflect/BootstrapConstructorAccessorImpl;->constructor:Ljava/lang/reflect/Constructor;

    .line 39
    return-void
.end method


# virtual methods
.method public newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 45
    :try_start_0
    sget-object v0, Lsun/reflect/UnsafeFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lsun/reflect/BootstrapConstructorAccessorImpl;->constructor:Ljava/lang/reflect/Constructor;

    .line 46
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
