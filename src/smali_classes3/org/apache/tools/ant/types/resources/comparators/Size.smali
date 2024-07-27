.class public Lorg/apache/tools/ant/types/resources/comparators/Size;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "Size.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 4

    .line 37
    sget-object v0, Lorg/apache/tools/ant/types/resources/comparators/Size$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/comparators/Size$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/comparators/Date$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
