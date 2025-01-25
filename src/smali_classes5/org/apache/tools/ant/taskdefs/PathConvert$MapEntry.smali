.class public Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;
.super Ljava/lang/Object;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PathConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapEntry"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/PathConvert;)V
    .registers 3

    const/4 v0, 0x0

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x5c

    const/16 v2, 0x2f

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 144
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_1a
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_4b
    return-object p1

    :cond_4c
    move-object v0, p1

    .line 144
    goto :goto_1a

    .line 146
    :cond_4e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    goto :goto_2a

    .line 138
    :cond_51
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Both \'from\' and \'to\' must be set in a map entry"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    .line 128
    return-void
.end method
