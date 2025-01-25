.class public Lorg/apache/tools/ant/taskdefs/condition/Xor;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "Xor.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>()V

    return-void
.end method

.method static synthetic lambda$eval$0(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eval()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/Xor;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/condition/Xor$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/condition/Xor$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/condition/Xor$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/condition/Xor$$ExternalSyntheticLambda0;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 39
    return v0
.end method
