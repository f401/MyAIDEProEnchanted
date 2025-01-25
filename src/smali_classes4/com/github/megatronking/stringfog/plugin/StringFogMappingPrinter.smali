.class public final Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;
.super Ljava/lang/Object;


# instance fields
.field private mCurrentClassName:Ljava/lang/String;

.field private mMappingFile:Ljava/io/File;

.field private mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mMappingFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public endMappingOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public ouputInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "stringfog key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "stringfog impl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_3b

    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    goto :goto_3a
.end method

.method public output(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/megatronking/stringfog/plugin/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mCurrentClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mCurrentClassName:Ljava/lang/String;

    :cond_46
    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_74} :catch_75

    goto :goto_6

    :catch_75
    move-exception v0

    goto :goto_6
.end method

.method public startMappingOutput()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mMappingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mMappingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    const-string v0, "Create stringfog mapping file failed."

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/utils/Log;->e(Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mMappingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_2f
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mMappingFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->mWriter:Ljava/io/BufferedWriter;

    goto :goto_1c

    :cond_3e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_44} :catch_16
.end method
