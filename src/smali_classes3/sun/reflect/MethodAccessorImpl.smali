.class abstract Lsun/reflect/MethodAccessorImpl;
.super Lsun/reflect/MagicAccessorImpl;
.source "MethodAccessorImpl.java"

# interfaces
.implements Lsun/reflect/MethodAccessor;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lsun/reflect/MagicAccessorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method
