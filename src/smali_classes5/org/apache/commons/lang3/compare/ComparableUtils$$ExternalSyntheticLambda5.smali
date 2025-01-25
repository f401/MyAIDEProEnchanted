.class public final synthetic Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/lang/Comparable;

.field public final f$1:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Comparable;

    iput-object p2, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Comparable;

    iget-object v1, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->lambda$betweenExclusive$1(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method
