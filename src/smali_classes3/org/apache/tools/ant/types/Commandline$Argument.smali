.class public Lorg/apache/tools/ant/types/Commandline$Argument;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Commandline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Commandline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Argument"
.end annotation


# instance fields
.field private parts:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/apache/tools/ant/types/Commandline$Argument;)V
    .registers 3

    .line 189
    iget-object v0, p1, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public getParts()[Ljava/lang/String;
    .registers 5

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 206
    :goto_0
    return-object v0

    .line 202
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 206
    goto :goto_0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 5

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setLine(Ljava/lang/String;)V
    .registers 3

    .line 119
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 5

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setPathref(Lorg/apache/tools/ant/types/Reference;)V
    .registers 5

    .line 144
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline$Argument;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 145
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 167
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    .line 168
    return-void

    .line 167
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 178
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    .line 179
    return-void

    .line 178
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 111
    return-void
.end method
