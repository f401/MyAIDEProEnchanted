.class public Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;
.super Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;
.source "SOSCheckout.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
    .registers 3

    .line 64
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-command"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "CheckOutFile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-file"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 82
    :goto_3b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->getRequiredAttributes()V

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->getOptionalAttributes()V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    return-object v0

    .line 76
    :cond_44
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-command"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "CheckOutProject"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckout;->getRecursive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public final setFile(Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalFilename(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setRecursive(Z)V
    .registers 2

    .line 46
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalRecursive(Z)V

    .line 47
    return-void
.end method
