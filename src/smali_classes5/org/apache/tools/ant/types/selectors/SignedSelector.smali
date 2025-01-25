.class public Lorg/apache/tools/ant/types/selectors/SignedSelector;
.super Lorg/apache/tools/ant/types/DataType;
.source "SignedSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 6

    .line 53
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_7
    return v0

    .line 56
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SignedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->setFile(Ljava/io/File;)V

    .line 58
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->eval()Z

    move-result v0

    goto :goto_7
.end method

.method public synthetic isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector$_CC;->$default$isSelected(Lorg/apache/tools/ant/types/selectors/FileSelector;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->setName(Ljava/lang/String;)V

    .line 40
    return-void
.end method
