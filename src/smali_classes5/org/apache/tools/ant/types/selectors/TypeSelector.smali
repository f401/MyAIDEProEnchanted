.class public Lorg/apache/tools/ant/types/selectors/TypeSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "TypeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;
    }
.end annotation


# static fields
.field public static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 6

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->validate()V

    .line 103
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    const-string v1, "dir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 7

    .line 61
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 62
    if-eqz p1, :cond_3e

    .line 63
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_3e

    aget-object v2, p1, v0

    .line 64
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v4, "type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 66
    new-instance v3, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;-><init>()V

    .line 67
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->setType(Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;)V

    .line 63
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 70
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->setError(Ljava/lang/String;)V

    goto :goto_26

    .line 74
    :cond_3e
    return-void
.end method

.method public setType(Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{typeselector type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 84
    const-string v0, "The type attribute is required"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->setError(Ljava/lang/String;)V

    .line 86
    :cond_9
    return-void
.end method
