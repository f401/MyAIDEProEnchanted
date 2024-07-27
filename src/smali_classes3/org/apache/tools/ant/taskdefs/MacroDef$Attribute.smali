.class public Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;
.super Ljava/lang/Object;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private doubleExpanding:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->doubleExpanding:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 415
    if-nez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 421
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 422
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 423
    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 429
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->defaultValue:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->defaultValue:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 426
    :cond_3
    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 430
    :cond_4
    iget-object v0, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->defaultValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDefault()Ljava/lang/String;
    .registers 2

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 385
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 438
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->defaultValue:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDoubleExpanding()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->doubleExpanding:Z

    return v0
.end method

.method public setDefault(Ljava/lang/String;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->defaultValue:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->description:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setDoubleExpanding(Z)V
    .registers 2

    .line 394
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->doubleExpanding:Z

    .line 395
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 6

    .line 340
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->name:Ljava/lang/String;

    .line 345
    return-void

    .line 341
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Illegal name [%s] for attribute"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
