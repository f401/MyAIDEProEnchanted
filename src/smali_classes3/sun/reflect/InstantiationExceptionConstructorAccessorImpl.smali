.class Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;
.super Lsun/reflect/ConstructorAccessorImpl;
.source "InstantiationExceptionConstructorAccessorImpl.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lsun/reflect/ConstructorAccessorImpl;-><init>()V

    .line 39
    iput-object p1, p0, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;->message:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/InstantiationException;

    iget-object v1, p0, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
