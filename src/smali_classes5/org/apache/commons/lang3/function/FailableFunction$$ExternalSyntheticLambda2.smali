.class public final synthetic Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lorg/apache/commons/lang3/function/FailableFunction$_CC;->lambda$identity$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction$_CC;->$default$compose(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;

    move-result-object v0

    return-object v0
.end method
