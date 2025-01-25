.class public Lorg/apache/tools/ant/taskdefs/Recorder;
.super Lorg/apache/tools/ant/Task;
.source "Recorder.java"

# interfaces
.implements Lorg/apache/tools/ant/SubBuildListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Recorder$ActionChoices;,
        Lorg/apache/tools/ant/taskdefs/Recorder$VerbosityLevelChoices;
    }
.end annotation


# static fields
.field private static recorderEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/RecorderEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Ljava/lang/Boolean;

.field private emacsMode:Z

.field private filename:Ljava/lang/String;

.field private loglevel:I

.field private start:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->append:Ljava/lang/Boolean;

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->emacsMode:Z

    return-void
.end method

.method private cleanup()V
    .registers 3

    .line 309
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Recorder;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 310
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 311
    return-void
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 288
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->cleanup()V

    .line 289
    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 232
    return-void
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting a recorder for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Recorder;->getRecorder(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    move-result-object v0

    .line 157
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setMessageOutputLevel(I)V

    .line 158
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->emacsMode:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setEmacsMode(Z)V

    .line 159
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    if-eqz v1, :cond_45

    .line 160
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 161
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->reopenFile()V

    .line 162
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setRecordState(Ljava/lang/Boolean;)V

    .line 168
    :cond_45
    :goto_45
    return-void

    .line 164
    :cond_46
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setRecordState(Ljava/lang/Boolean;)V

    .line 165
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->closeFile()V

    goto :goto_45

    .line 148
    :cond_4f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No filename specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getRecorder(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/RecorderEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 208
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    .line 210
    if-nez v0, :cond_1f

    .line 212
    new-instance v0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->append:Ljava/lang/Boolean;

    if-nez v1, :cond_20

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFile(Z)V

    .line 219
    :goto_17
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 220
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1f
    return-object v0

    .line 217
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFile(Z)V

    goto :goto_17
.end method

.method public init()V
    .registers 2

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 82
    return-void
.end method

.method public synthetic lambda$cleanup$0$Recorder(Ljava/util/Map$Entry;)Z
    .registers 4

    .line 309
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 280
    return-void
.end method

.method public setAction(Lorg/apache/tools/ant/taskdefs/Recorder$ActionChoices;)V
    .registers 4

    .line 104
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Recorder$ActionChoices;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 105
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    .line 109
    :goto_10
    return-void

    .line 107
    :cond_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    goto :goto_10
.end method

.method public setAppend(Z)V
    .registers 3

    .line 117
    if-eqz p1, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->append:Ljava/lang/Boolean;

    .line 118
    return-void

    .line 117
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setEmacsMode(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->emacsMode:Z

    .line 127
    return-void
.end method

.method public setLoglevel(Lorg/apache/tools/ant/taskdefs/Recorder$VerbosityLevelChoices;)V
    .registers 3

    .line 136
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Recorder$VerbosityLevelChoices;->getLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    .line 137
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 298
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 299
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->cleanup()V

    .line 301
    :cond_d
    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 240
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 256
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 248
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 272
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 264
    return-void
.end method
