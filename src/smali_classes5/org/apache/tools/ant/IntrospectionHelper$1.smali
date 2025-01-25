.class Lorg/apache/tools/ant/IntrospectionHelper$1;
.super Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/IntrospectionHelper;->getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/IntrospectionHelper;

.field final val$nestedElement:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 4

    .line 557
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$1;->this$0:Lorg/apache/tools/ant/IntrospectionHelper;

    iput-object p3, p0, Lorg/apache/tools/ant/IntrospectionHelper$1;->val$nestedElement:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 560
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$1;->val$nestedElement:Ljava/lang/Object;

    return-object v0
.end method
