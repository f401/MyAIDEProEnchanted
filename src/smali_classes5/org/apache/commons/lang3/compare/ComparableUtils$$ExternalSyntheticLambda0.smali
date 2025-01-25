.class public final synthetic Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->lambda$ge$2(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method
