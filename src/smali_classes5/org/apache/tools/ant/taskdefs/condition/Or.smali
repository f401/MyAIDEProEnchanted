.class public Lorg/apache/tools/ant/taskdefs/condition/Or;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "Or.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/Or;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/condition/And$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/condition/And$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
