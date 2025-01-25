.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/Functions$FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/Functions$FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/Functions$FailableBiPredicate;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$asBiPredicate$6(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
