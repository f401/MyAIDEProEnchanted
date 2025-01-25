.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableCallable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->lambda$asCallable$11(Lorg/apache/commons/lang3/function/FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
