.class abstract Lsun/reflect/ConstructorAccessorImpl;
.super Lsun/reflect/MagicAccessorImpl;
.source "ConstructorAccessorImpl.java"

# interfaces
.implements Lsun/reflect/ConstructorAccessor;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lsun/reflect/MagicAccessorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method
