.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .registers 4

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$_CC;->lambda$static$0(D)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    move-result-object v0

    return-object v0
.end method
