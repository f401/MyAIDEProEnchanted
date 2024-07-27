.class Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;
.super Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddNestedCreator"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final ADD_CONFIGURED:I = 0x2


# instance fields
.field private final behavior:I

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Constructor",
            "<*>;I)V"
        }
    .end annotation

    .line 1435
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    .line 1436
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->constructor:Ljava/lang/reflect/Constructor;

    .line 1437
    iput p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->behavior:I

    .line 1438
    return-void
.end method

.method private istore(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    return-void
.end method


# virtual methods
.method create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1448
    if-nez p3, :cond_3

    .line 1449
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->constructor:Ljava/lang/reflect/Constructor;

    .line 1450
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 1451
    new-array v0, v2, [Ljava/lang/Object;

    .line 1449
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1453
    :goto_1
    instance-of v1, v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v1, :cond_0

    .line 1454
    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 1456
    :cond_0
    iget v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->behavior:I

    if-ne v1, v3, :cond_1

    .line 1457
    invoke-direct {p0, p2, v0}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->istore(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1459
    :cond_1
    return-object v0

    .line 1451
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    goto :goto_0

    :cond_3
    move-object v0, p3

    goto :goto_1
.end method

.method isPolyMorphic()Z
    .registers 2

    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method store(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1465
    iget v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->behavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1466
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;->istore(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1468
    :cond_0
    return-void
.end method
