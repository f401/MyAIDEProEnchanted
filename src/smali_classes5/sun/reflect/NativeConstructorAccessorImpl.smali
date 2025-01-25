.class Lsun/reflect/NativeConstructorAccessorImpl;
.super Lsun/reflect/ConstructorAccessorImpl;
.source "NativeConstructorAccessorImpl.java"


# instance fields
.field private c:Ljava/lang/reflect/Constructor;

.field private numInvocations:I

.field private parent:Lsun/reflect/DelegatingConstructorAccessorImpl;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lsun/reflect/ConstructorAccessorImpl;-><init>()V

    .line 39
    iput-object p1, p0, Lsun/reflect/NativeConstructorAccessorImpl;->c:Ljava/lang/reflect/Constructor;

    .line 40
    return-void
.end method

.method private static native newInstance0(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method


# virtual methods
.method public newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 47
    iget v0, p0, Lsun/reflect/NativeConstructorAccessorImpl;->numInvocations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/reflect/NativeConstructorAccessorImpl;->numInvocations:I

    invoke-static {}, Lsun/reflect/ReflectionFactory;->inflationThreshold()I

    move-result v1

    if-le v0, v1, :cond_34

    .line 48
    new-instance v0, Lsun/reflect/MethodAccessorGenerator;

    invoke-direct {v0}, Lsun/reflect/MethodAccessorGenerator;-><init>()V

    iget-object v1, p0, Lsun/reflect/NativeConstructorAccessorImpl;->c:Ljava/lang/reflect/Constructor;

    .line 50
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lsun/reflect/NativeConstructorAccessorImpl;->c:Ljava/lang/reflect/Constructor;

    .line 51
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lsun/reflect/NativeConstructorAccessorImpl;->c:Ljava/lang/reflect/Constructor;

    .line 52
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lsun/reflect/NativeConstructorAccessorImpl;->c:Ljava/lang/reflect/Constructor;

    .line 53
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    .line 50
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/reflect/MethodAccessorGenerator;->generateConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;I)Lsun/reflect/ConstructorAccessor;

    move-result-object v0

    check-cast v0, Lsun/reflect/ConstructorAccessorImpl;

    .line 54
    iget-object v1, p0, Lsun/reflect/NativeConstructorAccessorImpl;->parent:Lsun/reflect/DelegatingConstructorAccessorImpl;

    invoke-virtual {v1, v0}, Lsun/reflect/DelegatingConstructorAccessorImpl;->setDelegate(Lsun/reflect/ConstructorAccessorImpl;)V

    .line 57
    :cond_34
    iget-object v0, p0, Lsun/reflect/NativeConstructorAccessorImpl;->c:Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lsun/reflect/NativeConstructorAccessorImpl;->newInstance0(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setParent(Lsun/reflect/DelegatingConstructorAccessorImpl;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lsun/reflect/NativeConstructorAccessorImpl;->parent:Lsun/reflect/DelegatingConstructorAccessorImpl;

    .line 62
    return-void
.end method
