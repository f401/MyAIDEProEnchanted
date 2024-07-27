.class public Lcom/s1243808733/android/dx/command/dump/Main;
.super Ljava/lang/Object;
.source "Main.java"


# instance fields
.field private final parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dump/Args;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/Main;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dump/Main;-><init>()V

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/command/dump/Main;->run([Ljava/lang/String;)V

    return-void
.end method

.method private processOne(Ljava/lang/String;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->dotDump:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, p1, v0}, Lcom/s1243808733/android/dx/command/dump/DotDumper;->dump([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->basicBlocks:Z

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v2, v1}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->ropBlocks:Z

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->ssaBlocks:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_0

    .line 131
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {p2, v0, p1, v1}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    goto :goto_0
.end method

.method private run([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x3d

    const/4 v4, 0x1

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 82
    :cond_0
    array-length v1, p1

    if-ne v0, v1, :cond_f

    .line 83
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "no input files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "usage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    aget-object v1, p1, v0

    .line 50
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "--bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->rawBytes:Z

    .line 48
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    const-string v2, "--basic-blocks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->basicBlocks:Z

    goto :goto_1

    .line 56
    :cond_3
    const-string v2, "--rop-blocks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->ropBlocks:Z

    goto :goto_1

    .line 58
    :cond_4
    const-string v2, "--optimize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    goto :goto_1

    .line 60
    :cond_5
    const-string v2, "--ssa-blocks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->ssaBlocks:Z

    goto :goto_1

    .line 62
    :cond_6
    const-string v2, "--ssa-step="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 63
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_7
    const-string v2, "--debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 65
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->debug:Z

    goto :goto_1

    .line 66
    :cond_8
    const-string v2, "--dot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 67
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->dotDump:Z

    goto :goto_1

    .line 68
    :cond_9
    const-string v2, "--strict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 69
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-boolean v4, v1, Lcom/s1243808733/android/dx/command/dump/Args;->strictParse:Z

    goto :goto_1

    .line 70
    :cond_a
    const-string v2, "--width="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/s1243808733/android/dx/command/dump/Args;->width:I

    goto/16 :goto_1

    .line 73
    :cond_b
    const-string v2, "--method="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iput-object v1, v2, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    goto/16 :goto_1

    .line 77
    :cond_c
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "usage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_d
    aget-object v2, p1, v0

    .line 90
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-static {v2}, Lcom/s1243808733/android/dex/util/FileUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 92
    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_e

    .line 93
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :try_start_2
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/HexParser;->parse(Ljava/lang/String;)[B

    move-result-object v1

    .line 101
    :cond_e
    invoke-direct {p0, v2, v1}, Lcom/s1243808733/android/dx/command/dump/Main;->processOne(Ljava/lang/String;[B)V
    :try_end_2
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_f
    array-length v1, p1

    if-lt v0, v1, :cond_d

    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 97
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "shouldn\'t happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 101
    :catch_1
    move-exception v1

    .line 103
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "\ntrouble parsing:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/Main;->parsedArgs:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dump/Args;->debug:Z

    if-eqz v2, :cond_10

    .line 105
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printStackTrace()V

    goto :goto_2

    .line 107
    :cond_10
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printContext(Ljava/io/PrintStream;)V

    goto :goto_2
.end method
