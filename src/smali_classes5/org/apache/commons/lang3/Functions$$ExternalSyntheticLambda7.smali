.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/Functions$FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/lang3/Functions$FailableFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/lang3/Functions$FailableFunction;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$asFunction$9(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
