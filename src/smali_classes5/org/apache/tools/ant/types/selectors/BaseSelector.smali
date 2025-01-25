.class public abstract Lorg/apache/tools/ant/types/selectors/BaseSelector;
.super Lorg/apache/tools/ant/types/DataType;
.source "BaseSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private errmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/selectors/BaseSelector;
    .registers 2

    .line 118
    const-class v0, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    return-object v0
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
.end method

.method public synthetic isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector$_CC;->$default$isSelected(Lorg/apache/tools/ant/types/selectors/FileSelector;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    .line 49
    :cond_6
    return-void
.end method

.method public setError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->cause:Ljava/lang/Throwable;

    .line 63
    :cond_8
    return-void
.end method

.method public validate()V
    .registers 4

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->verifySettings()V

    .line 95
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_18

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->dieOnCircularReference()V

    .line 101
    :cond_18
    return-void

    .line 96
    :cond_19
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->errmsg:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/BaseSelector;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public verifySettings()V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->isReference()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->getRef()Lorg/apache/tools/ant/types/selectors/BaseSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->verifySettings()V

    .line 85
    :cond_d
    return-void
.end method
