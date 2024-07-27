.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/Functions$FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/Functions$FailableRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/Functions$FailableRunnable;

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->lambda$asRunnable$11(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method
