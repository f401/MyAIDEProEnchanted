.class public Lorg/apache/tools/ant/taskdefs/Input;
.super Lorg/apache/tools/ant/Task;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Input$Handler;,
        Lorg/apache/tools/ant/taskdefs/Input$HandlerType;
    }
.end annotation


# instance fields
.field private addproperty:Ljava/lang/String;

.field private defaultvalue:Ljava/lang/String;

.field private handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

.field private message:Ljava/lang/String;

.field private messageAttribute:Z

.field private validargs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 146
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->validargs:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 201
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->messageAttribute:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public createHandler()Lorg/apache/tools/ant/taskdefs/Input$Handler;
    .registers 3

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Input$Handler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Input$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Input;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    .line 255
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define > 1 nested input handler"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has already been set."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Input;->log(Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->validargs:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 222
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/StringUtils;->split(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v1

    .line 223
    new-instance v0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 227
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/input/InputRequest;->setDefaultValue(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    if-nez v1, :cond_5

    .line 230
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v1

    .line 233
    :goto_2
    invoke-interface {v1, v0}, Lorg/apache/tools/ant/input/InputHandler;->handleInput(Lorg/apache/tools/ant/input/InputRequest;)V

    .line 235
    invoke-virtual {v0}, Lorg/apache/tools/ant/input/InputRequest;->getInput()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    .line 240
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/input/InputRequest;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/input/InputRequest;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_5
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Input$Handler;->access$100(Lorg/apache/tools/ant/taskdefs/Input$Handler;)Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v1

    goto :goto_2
.end method

.method public setAddproperty(Ljava/lang/String;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDefaultvalue(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->messageAttribute:Z

    .line 183
    return-void
.end method

.method public setValidargs(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->validargs:Ljava/lang/String;

    .line 163
    return-void
.end method
