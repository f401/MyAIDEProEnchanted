.class public Lorg/dom4j/util/PerThreadSingleton;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private perThreadCache:Ljava/lang/ThreadLocal;

.field private singletonClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public instance()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3c

    :cond_10
    :try_start_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_2d

    move-result-object v0

    :goto_22
    iget-object v1, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    :try_start_2e
    iget-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_39

    move-result-object v0

    goto :goto_22

    :catch_39
    move-exception v0

    const/4 v0, 0x0

    goto :goto_22

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2c
.end method

.method public reset()V
    .registers 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public setSingletonClassName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    return-void
.end method
