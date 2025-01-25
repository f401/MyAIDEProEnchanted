.class public Lorg/antlr/v4/runtime/misc/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/misc/LogManager$Record;
    }
.end annotation


# instance fields
.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/misc/LogManager$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance p0, Lorg/antlr/v4/runtime/misc/LogManager;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/LogManager;-><init>()V

    .line 93
    const-string v0, "atn"

    const-string v1, "test msg"

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/misc/LogManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "dfa"

    const-string v1, "test msg 2"

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/misc/LogManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/LogManager;->save()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/misc/LogManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 47
    new-instance v0, Lorg/antlr/v4/runtime/misc/LogManager$Record;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/LogManager$Record;-><init>()V

    .line 48
    iput-object p1, v0, Lorg/antlr/v4/runtime/misc/LogManager$Record;->component:Ljava/lang/String;

    .line 49
    iput-object p2, v0, Lorg/antlr/v4/runtime/misc/LogManager$Record;->msg:Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lorg/antlr/v4/runtime/misc/LogManager;->records:Ljava/util/List;

    if-nez p1, :cond_14

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/LogManager;->records:Ljava/util/List;

    .line 53
    :cond_14
    iget-object p1, p0, Lorg/antlr/v4/runtime/misc/LogManager;->records:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public save()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "./antlr-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH.mm.ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/LogManager;->save(Ljava/lang/String;)V

    return-object v0
.end method

.method public save(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    :try_start_a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/LogManager;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 65
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_15
    move-exception v0

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 81
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/LogManager;->records:Ljava/util/List;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 82
    :cond_7
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/LogManager;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/LogManager$Record;

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 88
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
