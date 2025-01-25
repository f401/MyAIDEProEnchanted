.class public Lorg/apache/tools/ant/input/DefaultInputHandler;
.super Ljava/lang/Object;
.source "DefaultInputHandler.java"

# interfaces
.implements Lorg/apache/tools/ant/input/InputHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 125
    invoke-static {}, Lorg/apache/tools/ant/util/KeepAliveInputStream;->wrapSystemIn()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getPrompt(Lorg/apache/tools/ant/input/InputRequest;)Ljava/lang/String;
    .registers 7

    .line 93
    invoke-virtual {p1}, Lorg/apache/tools/ant/input/InputRequest;->getPrompt()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lorg/apache/tools/ant/input/InputRequest;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    .line 95
    instance-of v1, p1, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;

    if-eqz v1, :cond_5c

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    const/4 v0, 0x1

    .line 98
    check-cast p1, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;

    invoke-virtual {p1}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getChoices()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    if-nez v1, :cond_36

    .line 100
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 103
    const/16 v1, 0x5b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 107
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_4f
    const/4 v0, 0x0

    move v1, v0

    .line 110
    goto :goto_23

    .line 111
    :cond_52
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_5b
    :goto_5b
    return-object v0

    .line 113
    :cond_5c
    if-eqz v2, :cond_5b

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method

.method public handleInput(Lorg/apache/tools/ant/input/InputRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/input/DefaultInputHandler;->getPrompt(Lorg/apache/tools/ant/input/InputRequest;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const/4 v2, 0x0

    .line 51
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/apache/tools/ant/input/DefaultInputHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_53

    .line 55
    :cond_13
    :try_start_13
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_4a

    .line 58
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_39

    .line 62
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/input/InputRequest;->setInput(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_41
    .catchall {:try_start_1d .. :try_end_26} :catchall_4a

    .line 66
    :try_start_26
    invoke-virtual {p1}, Lorg/apache/tools/ant/input/InputRequest;->isInputValid()Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_4a

    move-result v2

    if-eqz v2, :cond_13

    .line 68
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 80
    return-void

    .line 73
    :catch_30
    move-exception v0

    .line 75
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Failed to close input."

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :cond_39
    :try_start_39
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "unexpected end of stream while reading input"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_4a

    .line 63
    :catch_41
    move-exception v0

    .line 64
    :try_start_42
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Failed to read input from Console."

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 70
    :catchall_4a
    move-exception v0

    :goto_4b
    if-eqz v1, :cond_50

    .line 72
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 79
    :cond_50
    :goto_50
    throw v0

    .line 73
    :catch_51
    move-exception v1

    goto :goto_50

    .line 70
    :catchall_53
    move-exception v0

    move-object v1, v2

    goto :goto_4b
.end method
