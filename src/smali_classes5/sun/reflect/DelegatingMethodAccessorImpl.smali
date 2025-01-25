.class Lsun/reflect/DelegatingMethodAccessorImpl;
.super Lsun/reflect/MethodAccessorImpl;
.source "DelegatingMethodAccessorImpl.java"


# instance fields
.field private delegate:Lsun/reflect/MethodAccessorImpl;


# direct methods
.method constructor <init>(Lsun/reflect/MethodAccessorImpl;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lsun/reflect/MethodAccessorImpl;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lsun/reflect/DelegatingMethodAccessorImpl;->setDelegate(Lsun/reflect/MethodAccessorImpl;)V

    .line 38
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lsun/reflect/DelegatingMethodAccessorImpl;->delegate:Lsun/reflect/MethodAccessorImpl;

    invoke-virtual {v0, p1, p2}, Lsun/reflect/MethodAccessorImpl;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setDelegate(Lsun/reflect/MethodAccessorImpl;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lsun/reflect/DelegatingMethodAccessorImpl;->delegate:Lsun/reflect/MethodAccessorImpl;

    .line 48
    return-void
.end method
