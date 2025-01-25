.class Lorg/apache/tools/ant/IntrospectionHelper$5;
.super Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/IntrospectionHelper;

.field final val$m:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .registers 5

    .line 1076
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$5;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$5;->val$m:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public set(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1080
    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper$5;->val$m:Ljava/lang/reflect/Method;

    .line 1081
    invoke-static {p3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v1, v0

    :goto_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 1080
    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    return-void

    .line 1081
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, v0

    goto :goto_b
.end method
