.class Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;
.super Ljava/lang/Thread;
.source "IPlanetEjbc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedirectOutput"
.end annotation


# instance fields
.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1429
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1430
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;->stream:Ljava/io/InputStream;

    .line 1431
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1439
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;->stream:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1443
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1439
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1448
    :goto_2
    return-void

    .line 1445
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1439
    :catchall_1
    move-exception v1

    goto :goto_1
.end method
