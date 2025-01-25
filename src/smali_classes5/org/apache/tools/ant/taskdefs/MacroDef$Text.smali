.class public Lorg/apache/tools/ant/taskdefs/MacroDef$Text;
.super Ljava/lang/Object;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Text"
.end annotation


# instance fields
.field private defaultString:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private optional:Z

.field private trim:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 543
    if-nez p1, :cond_4

    .line 550
    :cond_3
    :goto_3
    return v0

    .line 546
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 549
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    .line 550
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    iget-boolean v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    iget-boolean v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    .line 553
    invoke-static {v1, v2}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getDefault()Ljava/lang/String;
    .registers 2

    .line 532
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 518
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Z
    .registers 2

    .line 486
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    return v0
.end method

.method public getTrim()Z
    .registers 2

    .line 503
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDefault(Ljava/lang/String;)V
    .registers 2

    .line 525
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->description:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 6

    .line 459
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 463
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    .line 464
    return-void

    .line 460
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Illegal name [%s] for element"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setOptional(Z)V
    .registers 2

    .line 479
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    .line 480
    return-void
.end method

.method public setTrim(Z)V
    .registers 2

    .line 496
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    .line 497
    return-void
.end method
