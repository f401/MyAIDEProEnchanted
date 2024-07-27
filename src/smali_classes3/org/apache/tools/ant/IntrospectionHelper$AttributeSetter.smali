.class abstract Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AttributeSetter"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    .line 1485
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    .line 1486
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/Class;
    .registers 2

    .line 1480
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/reflect/Method;
    .registers 2

    .line 1480
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method abstract set(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation
.end method

.method setObject(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1489
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 1490
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    .line 1491
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    if-eqz p3, :cond_2

    .line 1498
    invoke-static {}, Lorg/apache/tools/ant/IntrospectionHelper;->access$600()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1500
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1501
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    :goto_0
    return-void

    .line 1493
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to set primitive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->method:Ljava/lang/reflect/Method;

    .line 1495
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set"

    invoke-static {v1, v2}, Lorg/apache/tools/ant/IntrospectionHelper;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to null on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1505
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->set(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
