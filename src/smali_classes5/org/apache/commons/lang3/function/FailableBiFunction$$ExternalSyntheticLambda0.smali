.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiFunction;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiFunction$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiFunction$_CC;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
