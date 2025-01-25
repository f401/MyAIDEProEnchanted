.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleSupplier;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

.field public final f$1:D

.field public final f$2:D


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

    iput-wide p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$1:D

    iput-wide p4, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$2:D

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

    iget-wide v2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$1:D

    iget-wide v4, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$2:D

    invoke-static {v0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/function/Failable;->lambda$applyAsDouble$7(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)D

    move-result-wide v0

    return-wide v0
.end method
