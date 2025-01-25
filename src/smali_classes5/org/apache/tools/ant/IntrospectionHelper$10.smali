.class Lorg/apache/tools/ant/IntrospectionHelper$10;
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

.field final val$reflectedArg:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .registers 6

    .line 1132
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$10;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p4, p0, Lorg/apache/tools/ant/IntrospectionHelper$10;->val$reflectedArg:Ljava/lang/Class;

    iput-object p5, p0, Lorg/apache/tools/ant/IntrospectionHelper$10;->val$m:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public set(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1137
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$10;->val$reflectedArg:Ljava/lang/Class;

    .line 1138
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    .line 1139
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->setValue(Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper$10;->val$m:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_28

    .line 1143
    return-void

    .line 1141
    :catch_21
    move-exception v0

    .line 1142
    :goto_22
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1141
    :catch_28
    move-exception v0

    goto :goto_22
.end method
