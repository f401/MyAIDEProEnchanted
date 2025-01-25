.class public Lorg/apache/tools/ant/input/InputRequest;
.super Ljava/lang/Object;
.source "InputRequest.java"


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private input:Ljava/lang/String;

.field private final prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_8

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/input/InputRequest;->prompt:Ljava/lang/String;

    .line 41
    return-void

    .line 37
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prompt must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/input/InputRequest;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/input/InputRequest;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/input/InputRequest;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isInputValid()Z
    .registers 2

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/input/InputRequest;->defaultValue:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/input/InputRequest;->input:Ljava/lang/String;

    .line 57
    return-void
.end method
