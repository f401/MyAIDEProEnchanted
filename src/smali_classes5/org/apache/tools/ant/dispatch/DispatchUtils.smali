.class public Lorg/apache/tools/ant/dispatch/DispatchUtils;
.super Ljava/lang/Object;
.source "DispatchUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final execute(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 38
    .line 41
    :try_start_2
    instance-of v1, p0, Lorg/apache/tools/ant/dispatch/Dispatchable;

    if-eqz v1, :cond_9b

    .line 42
    move-object v0, p0

    check-cast v0, Lorg/apache/tools/ant/dispatch/Dispatchable;

    move-object v1, v0
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_a} :catch_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_a} :catch_177
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_127

    move-object v3, v1

    .line 51
    :goto_b
    if-eqz v3, :cond_156

    .line 54
    :try_start_d
    invoke-interface {v3}, Lorg/apache/tools/ant/dispatch/Dispatchable;->getActionParameterName()Ljava/lang/String;

    move-result-object v4

    .line 55
    if-eqz v4, :cond_14e

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14e

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_3b} :catch_d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_3b} :catch_fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_3b} :catch_127

    move-result-object v1

    .line 60
    :try_start_3c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_1a8

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_55} :catch_1a4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_55} :catch_fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_55} :catch_127

    move-result-object v1

    move-object v2, v1

    .line 63
    :goto_57
    :try_start_57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 64
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 65
    if-eqz v5, :cond_9a

    .line 66
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_12e

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_107

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 79
    if-eqz v4, :cond_b4

    .line 84
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    instance-of v1, p0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v1, :cond_9a

    .line 86
    move-object v0, p0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/UnknownElement;->setRealThing(Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_57 .. :try_end_9a} :catch_d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_57 .. :try_end_9a} :catch_fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_9a} :catch_127

    .line 113
    :cond_9a
    :goto_9a
    return-void

    .line 43
    :cond_9b
    :try_start_9b
    instance-of v1, p0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v1, :cond_1ab

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    move-object v1, v0

    .line 45
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getRealThing()Ljava/lang/Object;

    move-result-object v1

    .line 46
    instance-of v3, v1, Lorg/apache/tools/ant/dispatch/Dispatchable;

    if-eqz v3, :cond_1ab

    instance-of v3, v1, Lorg/apache/tools/ant/Task;

    if-eqz v3, :cond_1ab

    .line 48
    check-cast v1, Lorg/apache/tools/ant/dispatch/Dispatchable;
    :try_end_b1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9b .. :try_end_b1} :catch_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9b .. :try_end_b1} :catch_177
    .catch Ljava/lang/IllegalAccessException; {:try_start_9b .. :try_end_b1} :catch_127

    move-object v3, v1

    goto/16 :goto_b

    .line 80
    :cond_b4
    :try_start_b4
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No public "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b4 .. :try_end_d7} :catch_d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b4 .. :try_end_d7} :catch_fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_b4 .. :try_end_d7} :catch_127

    .line 89
    :catch_d7
    move-exception v1

    .line 90
    :goto_d8
    :try_start_d8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "() in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_fb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d8 .. :try_end_fb} :catch_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d8 .. :try_end_fb} :catch_177
    .catch Ljava/lang/IllegalAccessException; {:try_start_d8 .. :try_end_fb} :catch_127

    .line 104
    :catch_fb
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 106
    instance-of v2, v1, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_19e

    .line 107
    check-cast v1, Lorg/apache/tools/ant/BuildException;

    throw v1

    .line 74
    :cond_107
    :try_start_107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatchable Task attribute \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' not set or value is empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_127
    .catch Ljava/lang/NoSuchMethodException; {:try_start_107 .. :try_end_127} :catch_d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_107 .. :try_end_127} :catch_fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_107 .. :try_end_127} :catch_127

    .line 111
    :catch_127
    move-exception v1

    .line 112
    :goto_128
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 68
    :cond_12e
    :try_start_12e
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatchable Task attribute \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' not set or value is empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_14e
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Action Parameter Name must not be empty for Dispatchable Task."

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_156
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12e .. :try_end_156} :catch_d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12e .. :try_end_156} :catch_fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_12e .. :try_end_156} :catch_127

    .line 93
    :cond_156
    :try_start_156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "execute"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_179

    .line 99
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    instance-of v1, p0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v1, :cond_9a

    .line 101
    check-cast p0, Lorg/apache/tools/ant/UnknownElement;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/UnknownElement;->setRealThing(Ljava/lang/Object;)V

    goto/16 :goto_9a

    .line 111
    :catch_177
    move-exception v1

    goto :goto_128

    .line 96
    :cond_179
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No public "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "execute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_156 .. :try_end_19e} :catch_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_156 .. :try_end_19e} :catch_177
    .catch Ljava/lang/IllegalAccessException; {:try_start_156 .. :try_end_19e} :catch_127

    .line 109
    :cond_19e
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 89
    :catch_1a4
    move-exception v2

    move-object v2, v1

    goto/16 :goto_d8

    :cond_1a8
    move-object v2, v1

    goto/16 :goto_57

    :cond_1ab
    move-object v3, v2

    goto/16 :goto_b
.end method
