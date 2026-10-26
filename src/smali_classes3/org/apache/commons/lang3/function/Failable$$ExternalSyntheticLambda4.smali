.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/function/Failable;->lambda$asBiPredicate$10(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
