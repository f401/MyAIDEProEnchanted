.class Lsun/reflect/DelegatingConstructorAccessorImpl;
.super Lsun/reflect/ConstructorAccessorImpl;
.source "DelegatingConstructorAccessorImpl.java"


# instance fields
.field private delegate:Lsun/reflect/ConstructorAccessorImpl;


# direct methods
.method constructor <init>(Lsun/reflect/ConstructorAccessorImpl;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lsun/reflect/ConstructorAccessorImpl;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lsun/reflect/DelegatingConstructorAccessorImpl;->setDelegate(Lsun/reflect/ConstructorAccessorImpl;)V

    .line 38
    return-void
.end method


# virtual methods
.method public newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lsun/reflect/DelegatingConstructorAccessorImpl;->delegate:Lsun/reflect/ConstructorAccessorImpl;

    invoke-virtual {v0, p1}, Lsun/reflect/ConstructorAccessorImpl;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setDelegate(Lsun/reflect/ConstructorAccessorImpl;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lsun/reflect/DelegatingConstructorAccessorImpl;->delegate:Lsun/reflect/ConstructorAccessorImpl;

    .line 50
    return-void
.end method
