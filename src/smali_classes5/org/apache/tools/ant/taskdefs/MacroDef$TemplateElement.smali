.class public Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;
.super Ljava/lang/Object;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateElement"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private implicit:Z

.field private name:Ljava/lang/String;

.field private optional:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    .line 573
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 665
    if-ne p1, p0, :cond_5

    .line 672
    :cond_4
    :goto_4
    return v0

    .line 668
    :cond_5
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    .line 669
    goto :goto_4

    .line 671
    :cond_17
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    .line 672
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    if-nez v2, :cond_2f

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 673
    :goto_21
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    iget-boolean v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    if-ne v2, v3, :cond_2d

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    iget-boolean v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    if-eq v2, v3, :cond_4

    :cond_2d
    move v0, v1

    goto :goto_4

    .line 672
    :cond_2f
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_21
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 616
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 594
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 683
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v0

    .line 684
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    .line 683
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isImplicit()Z
    .registers 2

    .line 654
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    return v0
.end method

.method public isOptional()Z
    .registers 2

    .line 635
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->description:Ljava/lang/String;

    .line 606
    return-void
.end method

.method public setImplicit(Z)V
    .registers 2

    .line 645
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    .line 646
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 6

    .line 581
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 585
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    .line 586
    return-void

    .line 582
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Illegal name [%s] for macro element"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setOptional(Z)V
    .registers 2

    .line 626
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    .line 627
    return-void
.end method
