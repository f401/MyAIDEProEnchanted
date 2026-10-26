.class Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;
.super Ljava/lang/Object;
.source "AabTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/functions/aab/AabTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinaryExecutor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BinaryExecutor"


# instance fields
.field private final mProcess:Ljava/lang/ProcessBuilder;

.field private final mWriter:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mProcess:Ljava/lang/ProcessBuilder;

    .line 245
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mWriter:Ljava/io/StringWriter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 4

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mProcess:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 260
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 262
    iget-object v2, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mWriter:Ljava/io/StringWriter;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    iget-object v1, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCommands(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mProcess:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    return-void
.end method

.method public setCommands([Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->mProcess:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    return-void
.end method
