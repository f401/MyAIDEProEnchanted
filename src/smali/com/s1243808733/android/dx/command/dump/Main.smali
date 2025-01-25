.class public Lcom/s1243808733/android/dx/command/dump/Main;
.super Ljava/lang/Object;
.source "Main.java"


# instance fields
.field private final parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dump/Args;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/Main;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dump/Main;-><init>()V

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/command/dump/Main;->run([Ljava/lang/String;)V

    return-void
.end method

.method private processOne(Ljava/lang/String;[B)V
    .registers 6

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->dotDump:Z

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, p1, v0}, Lcom/s1243808733/android/dx/command/dump/DotDumper;->dump([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_43

    .line 122
    :cond_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->basicBlocks:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_43

    .line 124
    :cond_1b
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->ropBlocks:Z

    if-eqz v0, :cond_2a

    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_43

    .line 126
    :cond_2a
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->ssaBlocks:Z

    if-eqz v0, :cond_3c

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_43

    .line 131
    :cond_3c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    :goto_43
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 48
    :goto_1
    array-length v1, p1

    const-string v2, "usage"

    if-ge v0, v1, :cond_ea

    .line 49
    aget-object v1, p1, v0

    .line 50
    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_ea

    .line 52
    :cond_18
    const-string v3, "--bytes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    .line 53
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->rawBytes:Z

    goto/16 :goto_cd

    .line 54
    :cond_27
    const-string v3, "--basic-blocks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 55
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->basicBlocks:Z

    goto/16 :goto_cd

    .line 56
    :cond_35
    const-string v3, "--rop-blocks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 57
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->ropBlocks:Z

    goto/16 :goto_cd

    .line 58
    :cond_43
    const-string v3, "--optimize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 59
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    goto/16 :goto_cd

    .line 60
    :cond_51
    const-string v3, "--ssa-blocks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 61
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->ssaBlocks:Z

    goto/16 :goto_cd

    .line 62
    :cond_5f
    const-string v3, "--ssa-step="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x3d

    if-eqz v3, :cond_77

    .line 63
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    goto :goto_cd

    .line 64
    :cond_77
    const-string v3, "--debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 65
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->debug:Z

    goto :goto_cd

    .line 66
    :cond_84
    const-string v3, "--dot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 67
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->dotDump:Z

    goto :goto_cd

    .line 68
    :cond_91
    const-string v3, "--strict"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 69
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->strictParse:Z

    goto :goto_cd

    .line 70
    :cond_9e
    const-string v3, "--width="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/s1243808733/android/dx/command/dump/Args;->width:I

    goto :goto_cd

    .line 73
    :cond_b8
    const-string v3, "--method="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-object v1, v2, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    :goto_cd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 77
    :cond_d1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unknown option: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_ea
    :goto_ea
    array-length v1, p1

    if-eq v0, v1, :cond_14d

    .line 87
    :goto_ed
    array-length v1, p1

    if-ge v0, v1, :cond_14c

    .line 89
    aget-object v1, p1, v0

    .line 90
    :try_start_f2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-static {v1}, Lcom/s1243808733/android/dex/util/FileUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 92
    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_117
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_f2 .. :try_end_117} :catch_132

    if-nez v3, :cond_12e

    .line 95
    :try_start_119
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_120
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_119 .. :try_end_120} :catch_125
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_119 .. :try_end_120} :catch_132

    .line 99
    :try_start_120
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/HexParser;->parse(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_12e

    :catch_125
    move-exception v1

    .line 97
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "shouldn\'t happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :cond_12e
    :goto_12e
    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/command/dump/Main;->processOne(Ljava/lang/String;[B)V
    :try_end_131
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_120 .. :try_end_131} :catch_132

    goto :goto_149

    :catch_132
    move-exception v1

    .line 103
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "\ntrouble parsing:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dump/Args;->debug:Z

    if-eqz v2, :cond_144

    .line 105
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printStackTrace()V

    goto :goto_149

    .line 107
    :cond_144
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printContext(Ljava/io/PrintStream;)V

    :goto_149
    add-int/lit8 v0, v0, 0x1

    goto :goto_ed

    :cond_14c
    return-void

    .line 83
    :cond_14d
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "no input files specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_15b

    :goto_15a
    throw p1

    :goto_15b
    goto :goto_15a
.end method
