.class public abstract Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "ConditionBase.java"


# instance fields
.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private taskName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 43
    const-string v0, "condition"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    .line 54
    const-string v0, "component"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 43
    const-string v0, "condition"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V
    .registers 3

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/taskdefs/condition/And;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addAvailable(Lorg/apache/tools/ant/taskdefs/Available;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addChecksum(Lorg/apache/tools/ant/taskdefs/Checksum;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/taskdefs/condition/Contains;)V
    .registers 3

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public addEquals(Lorg/apache/tools/ant/taskdefs/condition/Equals;)V
    .registers 3

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public addFilesMatch(Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;)V
    .registers 3

    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addHttp(Lorg/apache/tools/ant/taskdefs/condition/Http;)V
    .registers 3

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public addIsFalse(Lorg/apache/tools/ant/taskdefs/condition/IsFalse;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public addIsFileSelected(Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;)V
    .registers 3

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public addIsReference(Lorg/apache/tools/ant/taskdefs/condition/IsReference;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public addIsSet(Lorg/apache/tools/ant/taskdefs/condition/IsSet;)V
    .registers 3

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public addIsTrue(Lorg/apache/tools/ant/taskdefs/condition/IsTrue;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/taskdefs/condition/Not;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/taskdefs/condition/Or;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public addOs(Lorg/apache/tools/ant/taskdefs/condition/Os;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public addSocket(Lorg/apache/tools/ant/taskdefs/condition/Socket;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public addUptodate(Lorg/apache/tools/ant/taskdefs/UpToDate;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method protected countConditions()I
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getConditions()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/ant/taskdefs/condition/Condition;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public setTaskName(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 95
    return-void
.end method
