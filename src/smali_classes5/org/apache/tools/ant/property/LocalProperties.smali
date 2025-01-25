.class public Lorg/apache/tools/ant/property/LocalProperties;
.super Ljava/lang/InheritableThreadLocal;
.source "LocalProperties.java"

# interfaces
.implements Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;
.implements Lorg/apache/tools/ant/PropertyHelper$PropertySetter;
.implements Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal",
        "<",
        "Lorg/apache/tools/ant/property/LocalPropertyStack;",
        ">;",
        "Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;",
        "Lorg/apache/tools/ant/PropertyHelper$PropertySetter;",
        "Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    .line 61
    return-void
.end method

.method public static get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;
    .registers 3

    const-class v0, Lorg/apache/tools/ant/property/LocalProperties;

    monitor-enter v0

    .line 41
    :try_start_3
    const-string v0, "ant.LocalProperties"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalProperties;

    .line 43
    if-nez v0, :cond_1e

    .line 44
    new-instance v0, Lorg/apache/tools/ant/property/LocalProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/property/LocalProperties;-><init>()V

    .line 45
    const-string v1, "ant.LocalProperties"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 48
    :cond_1e
    const-class v1, Lorg/apache/tools/ant/property/LocalProperties;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_22
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/property/LocalProperties;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addLocal(Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/property/LocalPropertyStack;->addLocal(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public copy()V
    .registers 2

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->copy()Lorg/apache/tools/ant/property/LocalPropertyStack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/property/LocalProperties;->set(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public enterScope()V
    .registers 2

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->enterScope()V

    .line 89
    return-void
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .registers 4

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/property/LocalPropertyStack;->evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exitScope()V
    .registers 2

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->exitScope()V

    .line 94
    return-void
.end method

.method public getPropertyNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->initialValue()Lorg/apache/tools/ant/property/LocalPropertyStack;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/tools/ant/property/LocalPropertyStack;
    .registers 2

    monitor-enter p0

    .line 69
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-direct {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .registers 5

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/property/LocalPropertyStack;->set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result v0

    return v0
.end method

.method public setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .registers 5

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/property/LocalProperties;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/property/LocalPropertyStack;->setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result v0

    return v0
.end method
