.class public Lorg/apache/tools/ant/types/PatternSet$NameEntry;
.super Ljava/lang/Object;
.source "PatternSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/PatternSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameEntry"
.end annotation


# instance fields
.field private ifCond:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/types/PatternSet;

.field private unlessCond:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->this$0:Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private valid(Lorg/apache/tools/ant/Project;)Z
    .registers 4

    .line 149
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    .line 151
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 150
    :goto_15
    return v0

    .line 151
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public evalName(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .registers 3

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->valid(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIf(Ljava/lang/Object;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setIf(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUnless(Ljava/lang/Object;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setUnless(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_43

    .line 161
    const-string v0, "noname"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_e
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    if-eqz v0, :cond_3e

    .line 166
    :cond_16
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, ""

    .line 169
    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    .line 170
    const-string v0, "if->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    const-string v0, ";"

    .line 174
    :cond_2d
    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, "unless->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method
