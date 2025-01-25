.class Lcom/jcraft/jsch/LocalIdentityRepository;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field private DW:Lcom/jcraft/jsch/JSch;

.field private j6:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    iput-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->DW:Lcom/jcraft/jsch/JSch;

    return-void
.end method


# virtual methods
.method public DW([B)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    monitor-exit p0

    return v0

    :cond_6
    const/4 v1, 0x0

    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_34

    if-lt v1, v2, :cond_11

    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Identity;

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_31

    :cond_26
    iget-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->clear()V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_34

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_34
    move-exception p1

    monitor-exit p0

    goto :goto_38

    :goto_37
    throw p1

    :goto_38
    goto :goto_37
.end method

.method public j6()Ljava/util/Vector;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    if-lt v1, v2, :cond_11

    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_1d
    move-exception v0

    monitor-exit p0

    goto :goto_21

    :goto_20
    throw v0

    :goto_21
    goto :goto_20
.end method

.method public j6(Lcom/jcraft/jsch/Identity;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j6([B)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "from remote:"

    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->DW:Lcom/jcraft/jsch/JSch;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/jcraft/jsch/IdentityFile;->j6(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_f
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_f} :catch_15
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_15
    move-exception p1

    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public removeAll()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1f

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->j6:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/Identity;

    invoke-interface {v1}, Lcom/jcraft/jsch/Identity;->clear()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_1f
    move-exception v0

    monitor-exit p0

    goto :goto_23

    :goto_22
    throw v0

    :goto_23
    goto :goto_22
.end method
