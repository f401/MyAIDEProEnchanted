.class public Lorg/dom4j/util/SimpleSingleton;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private singletonClassName:Ljava/lang/String;

.field private singletonInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public instance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    if-eqz v0, :cond_18

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    iget-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    goto :goto_18

    :catch_27
    move-exception v0

    goto :goto_18
.end method

.method public setSingletonClassName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/dom4j/util/SimpleSingleton;->reset()V

    return-void
.end method
