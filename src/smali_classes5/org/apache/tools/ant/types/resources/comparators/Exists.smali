.class public Lorg/apache/tools/ant/types/resources/comparators/Exists;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "Exists.java"


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

    .line 38
    sget-object v0, Lorg/apache/tools/ant/types/resources/comparators/Exists$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/comparators/Exists$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
