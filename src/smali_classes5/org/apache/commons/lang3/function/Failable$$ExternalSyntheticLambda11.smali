.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->INSTANCE:Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/function/FailableConsumer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object v0

    return-object v0
.end method
