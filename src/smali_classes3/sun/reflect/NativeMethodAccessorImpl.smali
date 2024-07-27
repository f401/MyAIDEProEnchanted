.class Lsun/reflect/NativeMethodAccessorImpl;
.super Lsun/reflect/MethodAccessorImpl;
.source "NativeMethodAccessorImpl.java"


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private numInvocations:I

.field private parent:Lsun/reflect/DelegatingMethodAccessorImpl;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lsun/reflect/MethodAccessorImpl;-><init>()V

    .line 39
    iput-object p1, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 40
    return-void
.end method

.method private static native invoke0(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 45
    iget v0, p0, Lsun/reflect/NativeMethodAccessorImpl;->numInvocations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/reflect/NativeMethodAccessorImpl;->numInvocations:I

    invoke-static {}, Lsun/reflect/ReflectionFactory;->inflationThreshold()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 46
    new-instance v0, Lsun/reflect/MethodAccessorGenerator;

    invoke-direct {v0}, Lsun/reflect/MethodAccessorGenerator;-><init>()V

    iget-object v1, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 48
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 49
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 50
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 52
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    .line 53
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    .line 48
    invoke-virtual/range {v0 .. v6}, Lsun/reflect/MethodAccessorGenerator;->generateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;I)Lsun/reflect/MethodAccessor;

    move-result-object v0

    check-cast v0, Lsun/reflect/MethodAccessorImpl;

    .line 54
    iget-object v1, p0, Lsun/reflect/NativeMethodAccessorImpl;->parent:Lsun/reflect/DelegatingMethodAccessorImpl;

    invoke-virtual {v1, v0}, Lsun/reflect/DelegatingMethodAccessorImpl;->setDelegate(Lsun/reflect/MethodAccessorImpl;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lsun/reflect/NativeMethodAccessorImpl;->method:Ljava/lang/reflect/Method;

    invoke-static {v0, p1, p2}, Lsun/reflect/NativeMethodAccessorImpl;->invoke0(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setParent(Lsun/reflect/DelegatingMethodAccessorImpl;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lsun/reflect/NativeMethodAccessorImpl;->parent:Lsun/reflect/DelegatingMethodAccessorImpl;

    .line 62
    return-void
.end method
