.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public final applyAsInt(I)I
    .registers 3

    invoke-static {p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;->lambda$identity$1(I)I

    move-result v0

    return v0
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;->$default$compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    move-result-object v0

    return-object v0
.end method
