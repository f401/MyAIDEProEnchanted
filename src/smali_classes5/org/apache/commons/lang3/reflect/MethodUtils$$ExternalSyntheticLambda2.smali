.class public final synthetic Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
