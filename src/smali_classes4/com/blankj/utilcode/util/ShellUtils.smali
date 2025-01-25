.class public final Lcom/blankj/utilcode/util/ShellUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 5

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 15

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v5, ""

    if-eqz p0, :cond_9

    array-length v0, p0

    if-nez v0, :cond_13

    :cond_9
    new-instance v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    const-string v1, ""

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_15a
    .catchall {:try_start_13 .. :try_end_16} :catchall_157

    move-result-object v3

    if-eqz p1, :cond_33

    const-string v0, "su"

    :goto_1b
    :try_start_1b
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_15a
    .catchall {:try_start_1b .. :try_end_1e} :catchall_157

    move-result-object v4

    :try_start_1f
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_19b
    .catchall {:try_start_1f .. :try_end_28} :catchall_14f

    :try_start_28
    array-length v3, p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_29} :catch_46
    .catchall {:try_start_28 .. :try_end_29} :catchall_14b

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v3, :cond_75

    aget-object v6, p0, v0

    if-nez v6, :cond_36

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_33
    const-string v0, "sh"

    goto :goto_1b

    :cond_36
    :try_start_36
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v6, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_45} :catch_46
    .catchall {:try_start_36 .. :try_end_45} :catchall_14b

    goto :goto_30

    :catch_46
    move-exception v0

    :goto_47
    move-object v3, v0

    move-object v10, v1

    move-object v8, v1

    move-object v9, v1

    move-object v11, v1

    move v6, v2

    :goto_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_184

    if-eqz v7, :cond_55

    :try_start_52
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_165

    :cond_55
    :goto_55
    if-eqz v9, :cond_5a

    :try_start_57
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_16b

    :cond_5a
    :goto_5a
    if-eqz v8, :cond_5f

    :try_start_5c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_171

    :cond_5f
    :goto_5f
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_64
    move-object v0, v10

    move-object v1, v11

    :goto_66
    if-nez v0, :cond_177

    const-string v0, ""

    move-object v2, v0

    :goto_6b
    if-nez v1, :cond_17e

    move-object v0, v5

    :goto_6e
    new-instance v1, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    invoke-direct {v1, v6, v2, v0}, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_12

    :cond_75
    :try_start_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_91} :catch_46
    .catchall {:try_start_75 .. :try_end_91} :catchall_14b

    move-result v6

    if-eqz p2, :cond_137

    :try_start_94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_99} :catch_19d
    .catchall {:try_start_94 .. :try_end_99} :catchall_14b

    :try_start_99
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9e} :catch_130
    .catchall {:try_start_99 .. :try_end_9e} :catchall_14b

    :try_start_9e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v8, "UTF-8"

    invoke-direct {v2, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ae} :catch_12c
    .catchall {:try_start_9e .. :try_end_ae} :catchall_14b

    :try_start_ae
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_be} :catch_129
    .catchall {:try_start_ae .. :try_end_be} :catchall_126

    :try_start_be
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    sget-object v3, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    :catch_d6
    move-exception v1

    move-object v3, v1

    :goto_d8
    move-object v8, v2

    move-object v9, v0

    goto/16 :goto_4d

    :cond_dc
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10e

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10e

    sget-object v3, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_f3} :catch_d6
    .catchall {:try_start_be .. :try_end_f3} :catchall_f4

    goto :goto_e5

    :catchall_f4
    move-exception v1

    move-object v3, v1

    :goto_f6
    move-object v5, v7

    move-object v6, v2

    move-object v9, v0

    :goto_f9
    if-eqz v5, :cond_fe

    :try_start_fb
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_189

    :cond_fe
    :goto_fe
    if-eqz v9, :cond_103

    :try_start_100
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_18f

    :cond_103
    :goto_103
    if-eqz v6, :cond_108

    :try_start_105
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_195

    :cond_108
    :goto_108
    if-eqz v4, :cond_10d

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_10d
    throw v3

    :cond_10e
    move-object v3, v10

    move-object v8, v11

    :goto_110
    :try_start_110
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_13c

    :goto_113
    if-eqz v0, :cond_118

    :try_start_115
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_141

    :cond_118
    :goto_118
    if-eqz v2, :cond_11d

    :try_start_11a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_146

    :cond_11d
    :goto_11d
    if-eqz v4, :cond_1a1

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    move-object v0, v3

    move-object v1, v8

    goto/16 :goto_66

    :catchall_126
    move-exception v3

    move-object v2, v1

    goto :goto_f6

    :catch_129
    move-exception v3

    move-object v2, v1

    goto :goto_d8

    :catch_12c
    move-exception v3

    move-object v0, v1

    move-object v2, v1

    goto :goto_d8

    :catch_130
    move-exception v0

    move-object v3, v0

    move-object v8, v1

    move-object v9, v1

    move-object v11, v1

    goto/16 :goto_4d

    :cond_137
    move-object v2, v1

    move-object v0, v1

    move-object v3, v1

    move-object v8, v1

    goto :goto_110

    :catch_13c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_113

    :catch_141
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_118

    :catch_146
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11d

    :catchall_14b
    move-exception v3

    move-object v0, v1

    move-object v2, v1

    goto :goto_f6

    :catchall_14f
    move-exception v0

    move-object v2, v4

    :goto_151
    move-object v5, v1

    move-object v3, v0

    move-object v4, v2

    move-object v6, v1

    move-object v9, v1

    goto :goto_f9

    :catchall_157
    move-exception v0

    move-object v2, v1

    goto :goto_151

    :catch_15a
    move-exception v0

    move-object v4, v1

    :goto_15c
    move-object v3, v0

    move-object v10, v1

    move-object v8, v1

    move-object v9, v1

    move-object v11, v1

    move v6, v2

    move-object v7, v1

    goto/16 :goto_4d

    :catch_165
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_55

    :catch_16b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5a

    :catch_171
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5f

    :cond_177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_6b

    :cond_17e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6e

    :catchall_184
    move-exception v3

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_f9

    :catch_189
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_fe

    :catch_18f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_103

    :catch_195
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_108

    :catch_19b
    move-exception v0

    goto :goto_15c

    :catch_19d
    move-exception v0

    move v2, v6

    goto/16 :goto_47

    :cond_1a1
    move-object v0, v3

    move-object v1, v8

    goto/16 :goto_66
.end method

.method public static execCmdAsync(Ljava/lang/String;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync(Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync(Ljava/util/List;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCmdAsync(Ljava/util/List;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCmdAsync([Ljava/lang/String;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/ShellUtils$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils$1;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;[Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method
