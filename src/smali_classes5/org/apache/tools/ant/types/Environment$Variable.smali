.class public Lorg/apache/tools/ant/types/Environment$Variable;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Environment$Variable;->validate()V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/types/Environment$Variable;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Environment$Variable;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment$Variable;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment$Variable;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 3

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Environment$Variable;->value:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/types/Environment$Variable;->key:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 98
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Environment$Variable;->value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/types/Environment$Variable;->value:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public validate()V
    .registers 3

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment$Variable;->key:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment$Variable;->value:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 130
    return-void

    .line 127
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "key and value must be specified for environment variables."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
