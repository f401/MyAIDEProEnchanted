.class abstract Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NestedCreator"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->method:Ljava/lang/reflect/Method;

    .line 1394
    return-void
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)Ljava/lang/reflect/Method;
    .registers 2

    .line 1389
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method abstract create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method getMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 1396
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getRealObject()Ljava/lang/Object;
    .registers 2

    .line 1402
    const/4 v0, 0x0

    return-object v0
.end method

.method isPolyMorphic()Z
    .registers 2

    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method store(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1410
    return-void
.end method
