.class Lorg/apache/tools/ant/IntrospectionHelper$14;
.super Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/IntrospectionHelper;->createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/IntrospectionHelper;

.field final val$nestedObject:Ljava/lang/Object;

.field final val$realObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1557
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$realObject:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$nestedObject:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1561
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$14;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Configured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1562
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$14;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$realObject:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$nestedObject:Ljava/lang/Object;

    return-object v0
.end method

.method getRealObject()Ljava/lang/Object;
    .registers 2

    .line 1569
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$realObject:Ljava/lang/Object;

    return-object v0
.end method

.method store(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1575
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$14;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Configured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1576
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$14;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/IntrospectionHelper$14;->val$realObject:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    :cond_1f
    return-void
.end method
