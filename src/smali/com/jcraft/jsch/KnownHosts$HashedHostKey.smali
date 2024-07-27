.class Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
.super Lcom/jcraft/jsch/HostKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashedHostKey"
.end annotation


# instance fields
.field final EQ:Lcom/jcraft/jsch/KnownHosts;

.field private gn:Z

.field tp:[B

.field u7:[B


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V
    .registers 12

    const-string v2, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .registers 13

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->EQ:Lcom/jcraft/jsch/KnownHosts;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->gn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    const-string v1, "|1|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    array-length v0, v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    array-length v0, v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->gn:Z

    goto :goto_0
.end method

.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V

    return-void
.end method


# virtual methods
.method VH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->gn:Z

    return v0
.end method

.method Zo()V
    .registers 7

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->gn:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->EQ:Lcom/jcraft/jsch/KnownHosts;

    invoke-static {v0}, Lcom/jcraft/jsch/KnownHosts;->j6(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    if-nez v0, :cond_1

    sget-object v2, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    array-length v4, v4

    invoke-interface {v2, v0, v3, v4}, Lcom/jcraft/jsch/Random;->j6([BII)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/MAC;->j6([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/jcraft/jsch/MAC;->update([BII)V

    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "|1|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/jcraft/jsch/Util;->FH([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/jcraft/jsch/Util;->FH([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->gn:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method j6(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->gn:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/HostKey;->j6(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->EQ:Lcom/jcraft/jsch/KnownHosts;

    invoke-static {v0}, Lcom/jcraft/jsch/KnownHosts;->j6(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;

    move-result-object v2

    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->u7:[B

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/MAC;->j6([B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->tp:[B

    invoke-static {v3, v0}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method
