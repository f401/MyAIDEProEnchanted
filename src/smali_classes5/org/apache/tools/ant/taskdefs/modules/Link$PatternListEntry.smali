.class public Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatternListEntry"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private pattern:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .registers 2

    .line 1058
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .registers 5

    .line 1070
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1072
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->setListFile(Ljava/io/File;)V

    .line 1076
    :goto_1a
    return-void

    .line 1074
    :cond_1b
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->setPattern(Ljava/lang/String;)V

    goto :goto_1a
.end method


# virtual methods
.method public getListFile()Ljava/io/File;
    .registers 2

    .line 1106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 1084
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public setListFile(Ljava/io/File;)V
    .registers 2

    .line 1118
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    .line 1119
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 2

    .line 1095
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    .line 1096
    return-void
.end method

.method public toOptionValue()Ljava/lang/String;
    .registers 3

    .line 1145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public validate()V
    .registers 4

    .line 1128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_f

    :cond_8
    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    if-nez v0, :cond_f

    .line 1135
    :cond_e
    return-void

    .line 1131
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1133
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Each entry in a pattern list must specify exactly one of pattern or file."

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
