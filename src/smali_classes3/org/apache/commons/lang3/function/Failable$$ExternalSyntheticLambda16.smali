.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget v1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$1:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/function/Failable;->lambda$accept$3(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method
