.class Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/IntrospectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodAndObject"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 3

    .line 1650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->method:Ljava/lang/reflect/Method;

    .line 1652
    iput-object p2, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->object:Ljava/lang/Object;

    .line 1653
    return-void
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;
    .registers 2

    .line 1647
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/reflect/Method;
    .registers 2

    .line 1647
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
