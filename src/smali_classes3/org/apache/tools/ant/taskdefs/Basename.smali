.class public Lorg/apache/tools/ant/taskdefs/Basename;
.super Lorg/apache/tools/ant/Task;
.source "Basename.java"


# instance fields
.field private file:Ljava/io/File;

.field private property:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private removeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v3, 0x2e

    const/4 v2, 0x0

    .line 101
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object p1

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 109
    add-int/lit8 v0, v0, -0x1

    .line 111
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Basename;->property:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Basename;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Basename;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Basename;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Basename;->file:Ljava/io/File;

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Basename;->suffix:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Basename;->removeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 94
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file attribute required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Basename;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 91
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Basename;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Basename;->file:Ljava/io/File;

    .line 65
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Basename;->property:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Basename;->suffix:Ljava/lang/String;

    .line 81
    return-void
.end method
