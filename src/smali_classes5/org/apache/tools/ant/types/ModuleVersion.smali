.class public Lorg/apache/tools/ant/types/ModuleVersion;
.super Ljava/lang/Object;
.source "ModuleVersion.java"


# instance fields
.field private build:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private preRelease:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuild()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPreRelease()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 4

    .line 60
    const-string v0, "Version number cannot be null."

    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_18

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_18

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    .line 66
    return-void

    .line 62
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version number cannot contain \'-\' or \'+\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreRelease(Ljava/lang/String;)V
    .registers 4

    .line 86
    if-eqz p1, :cond_a

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d

    .line 90
    :cond_a
    iput-object p1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    .line 91
    return-void

    .line 87
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version\'s pre-release cannot contain \'+\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toModuleVersionString()Ljava/lang/String;
    .registers 4

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 128
    :cond_11
    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lorg/apache/tools/ant/types/ModuleVersion$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_21
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 131
    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Version number cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", build="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
