.class Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "Exit.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Exit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NestedCondition"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Exit$1;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 3

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;->countConditions()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/condition/Condition;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v0

    return v0

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A single nested condition is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
