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
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_1d

    .line 1442
    :goto_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1443
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_c

    .line 1439
    :catchall_18
    move-exception v0

    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    :goto_1c
    :try_start_1c
    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 1445
    :catch_1d
    move-exception v0

    .line 1446
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1448
    :goto_21
    return-void

    .line 1445
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_1d

    goto :goto_21

    .line 1439
    :catchall_26
    move-exception v1

    goto :goto_1c
.end method
