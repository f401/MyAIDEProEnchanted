.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableSupplier;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableCallable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda19;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda19;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    invoke-interface {v0}, Lorg/apache/commons/lang3/function/FailableCallable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
