.class public final synthetic Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/TriFunction;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/TriFunction;

.field public final f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/TriFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Lorg/apache/commons/lang3/function/TriFunction;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/TriFunction$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;)Lorg/apache/commons/lang3/function/TriFunction;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/TriFunction;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/function/TriFunction$_CC;->lambda$andThen$0(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
