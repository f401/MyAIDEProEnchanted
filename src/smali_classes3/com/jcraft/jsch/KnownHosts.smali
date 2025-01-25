.class public Lcom/jcraft/jsch/KnownHosts;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/HostKeyRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
    }
.end annotation


# static fields
.field private static final DW:[B

.field private static final j6:[B


# instance fields
.field private FH:Lcom/jcraft/jsch/JSch;

.field private Hw:Ljava/lang/String;

.field private Zo:Lcom/jcraft/jsch/MAC;

.field private v5:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->j6:[B

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->DW:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->FH:Lcom/jcraft/jsch/JSch;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Zo:Lcom/jcraft/jsch/MAC;

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->FH:Lcom/jcraft/jsch/JSch;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-lt v3, v1, :cond_d

    goto :goto_16

    :cond_d
    const/16 v4, 0x2c

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2c

    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    sub-int p2, v1, v3

    if-ne p2, v0, :cond_2b

    if-ne v0, v1, :cond_24

    const/4 v1, 0x0

    goto :goto_27

    :cond_24
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_27
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2b
    return-object p1

    :cond_2c
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    add-int/lit8 v3, v4, 0x1

    goto :goto_a

    :cond_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private FH()Lcom/jcraft/jsch/MAC;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Zo:Lcom/jcraft/jsch/MAC;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v0, :cond_2c

    :try_start_5
    const-string v0, "hmac-sha1"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Zo:Lcom/jcraft/jsch/MAC;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18
    .catchall {:try_start_5 .. :try_end_17} :catchall_30

    goto :goto_2c

    :catch_18
    move-exception v0

    :try_start_19
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hmacsha1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Zo:Lcom/jcraft/jsch/MAC;
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/jcraft/jsch/HostKey;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    iget-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private j6([B)I
    .registers 3

    const/16 v0, 0x8

    aget-byte p1, p1, v0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/16 v0, 0x72

    if-ne p1, v0, :cond_10

    const/4 p1, 0x2

    return p1

    :cond_10
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic j6(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/KnownHosts;->FH()Lcom/jcraft/jsch/MAC;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method DW(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->Zo()V

    return-object v0
.end method

.method protected DW()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->DW(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected DW(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j6(Ljava/lang/String;[B)I
    .registers 11

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/KnownHosts;->j6([B)I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    monitor-enter v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_e
    :try_start_e
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v4, v6, :cond_39

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_59

    if-ne v5, v0, :cond_38

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_38

    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/lang/String;[B)I

    move-result p1

    return p1

    :cond_38
    return v5

    :cond_39
    :try_start_39
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/HostKey;

    invoke-virtual {v6, p1}, Lcom/jcraft/jsch/HostKey;->j6(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    iget v7, v6, Lcom/jcraft/jsch/HostKey;->v5:I

    if-ne v7, v1, :cond_56

    iget-object v5, v6, Lcom/jcraft/jsch/HostKey;->Zo:[B

    invoke-static {v5, p2}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v5

    if-eqz v5, :cond_55

    monitor-exit v2

    return v3

    :cond_55
    const/4 v5, 0x2

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :catchall_59
    move-exception p1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_59

    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V
    .registers 9

    iget v0, p1, Lcom/jcraft/jsch/HostKey;->v5:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/HostKey;->DW()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/jcraft/jsch/HostKey;->Zo:[B

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    :try_start_d
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_ca

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_de

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->j6()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c9

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_ae

    if-eqz p2, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " does not exist.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Are you sure you want to create it?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/jcraft/jsch/UserInfo;->Hw(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v1, :cond_a9

    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The parent directory "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Are you sure you want to create it?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/jcraft/jsch/UserInfo;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_95

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has not been created."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_a9

    :cond_95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has been succesfully created.\nPlease check its access permission."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    if-nez v0, :cond_ac

    goto :goto_af

    :cond_ac
    move v2, v1

    goto :goto_af

    :cond_ae
    const/4 v2, 0x1

    :cond_af
    :goto_af
    if-eqz v2, :cond_c9

    :try_start_b1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KnownHosts;->DW(Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_c9

    :catch_b5
    move-exception p1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sync known_hosts: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void

    :cond_ca
    :try_start_ca
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/HostKey;

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/HostKey;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    iget v4, v4, Lcom/jcraft/jsch/HostKey;->v5:I

    :cond_da
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :catchall_de
    move-exception p1

    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_ca .. :try_end_e0} :catchall_de

    goto :goto_e2

    :goto_e1
    throw p1

    :goto_e2
    goto :goto_e1
.end method

.method j6(Ljava/io/InputStream;)V
    .registers 19

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x400

    :try_start_e
    new-array v1, v1, [B

    :goto_10
    const/4 v2, 0x0

    move-object v9, v1

    const/4 v1, 0x0

    :goto_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_1b4
    .catchall {:try_start_e .. :try_end_17} :catchall_1b2

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/16 v6, 0xa

    const/16 v7, 0xd

    if-ne v3, v5, :cond_31

    if-nez v1, :cond_3e

    :try_start_21
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_31
    if-ne v3, v7, :cond_34

    goto :goto_13

    :cond_34
    if-ne v3, v6, :cond_37

    goto :goto_3e

    :cond_37
    :try_start_37
    array-length v10, v9
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_1b4
    .catchall {:try_start_37 .. :try_end_38} :catchall_1b2

    if-gt v10, v1, :cond_1ab

    const/16 v10, 0x2800

    if-le v1, v10, :cond_1a1

    :cond_3e
    :goto_3e
    const/4 v3, 0x0

    :goto_3f
    const/16 v10, 0x9

    const/16 v11, 0x20

    if-lt v3, v1, :cond_46

    goto :goto_5b

    :cond_46
    aget-byte v12, v9, v3

    if-eq v12, v11, :cond_19d

    if-ne v12, v10, :cond_4e

    goto/16 :goto_19d

    :cond_4e
    const/16 v13, 0x23

    if-ne v12, v13, :cond_5b

    :try_start_52
    invoke-static {v9, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v1

    :goto_56
    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->FH(Ljava/lang/String;)V

    goto/16 :goto_19a

    :cond_5b
    :goto_5b
    if-lt v3, v1, :cond_62

    invoke-static {v9, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_56

    :cond_62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_1b4
    .catchall {:try_start_52 .. :try_end_65} :catchall_1b2

    :goto_65
    if-lt v3, v1, :cond_68

    goto :goto_78

    :cond_68
    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v9, v3

    if-eq v3, v11, :cond_77

    if-ne v3, v10, :cond_71

    goto :goto_77

    :cond_71
    int-to-char v3, v3

    :try_start_72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v12

    goto :goto_65

    :cond_77
    :goto_77
    move v3, v12

    :goto_78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    if-ge v3, v1, :cond_194

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_82} :catch_1b4
    .catchall {:try_start_72 .. :try_end_82} :catchall_1b2

    if-nez v13, :cond_86

    goto/16 :goto_194

    :cond_86
    :goto_86
    if-lt v3, v1, :cond_89

    goto :goto_91

    :cond_89
    aget-byte v13, v9, v3

    if-eq v13, v11, :cond_190

    if-ne v13, v10, :cond_91

    goto/16 :goto_190

    :cond_91
    :goto_91
    :try_start_91
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x40

    if-ne v13, v14, :cond_cd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9c} :catch_1b4
    .catchall {:try_start_91 .. :try_end_9c} :catchall_1b2

    :goto_9c
    if-lt v3, v1, :cond_9f

    goto :goto_af

    :cond_9f
    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v9, v3

    if-eq v3, v11, :cond_ae

    if-ne v3, v10, :cond_a8

    goto :goto_ae

    :cond_a8
    int-to-char v3, v3

    :try_start_a9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v13

    goto :goto_9c

    :cond_ae
    :goto_ae
    move v3, v13

    :goto_af
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    if-ge v3, v1, :cond_c8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b9} :catch_1b4
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_1b2

    if-nez v14, :cond_bc

    goto :goto_c8

    :cond_bc
    :goto_bc
    if-lt v3, v1, :cond_bf

    goto :goto_d4

    :cond_bf
    aget-byte v14, v9, v3

    if-eq v14, v11, :cond_c5

    if-ne v14, v10, :cond_d4

    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    :cond_c8
    :goto_c8
    :try_start_c8
    invoke-static {v9, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cc} :catch_1b4
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_1b2

    goto :goto_56

    :cond_cd
    const-string v13, ""

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :cond_d4
    :goto_d4
    :try_start_d4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_1b4
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_1b2

    :goto_d7
    if-lt v3, v1, :cond_da

    goto :goto_ea

    :cond_da
    add-int/lit8 v14, v3, 0x1

    aget-byte v3, v9, v3

    if-eq v3, v11, :cond_e9

    if-ne v3, v10, :cond_e3

    goto :goto_e9

    :cond_e3
    int-to-char v3, v3

    :try_start_e4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v14

    goto :goto_d7

    :cond_e9
    :goto_e9
    move v3, v14

    :goto_ea
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ssh-dss"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_108

    :cond_f9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ssh-rsa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_107

    const/4 v5, 0x2

    goto :goto_108

    :cond_107
    move v3, v1

    :goto_108
    if-lt v3, v1, :cond_110

    invoke-static {v9, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_10e} :catch_1b4
    .catchall {:try_start_e4 .. :try_end_10e} :catchall_1b2

    goto/16 :goto_56

    :cond_110
    :goto_110
    if-lt v3, v1, :cond_113

    goto :goto_11b

    :cond_113
    aget-byte v4, v9, v3

    if-eq v4, v11, :cond_18d

    if-ne v4, v10, :cond_11b

    goto/16 :goto_18d

    :cond_11b
    :goto_11b
    :try_start_11b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_1b4
    .catchall {:try_start_11b .. :try_end_11e} :catchall_1b2

    :goto_11e
    if-lt v3, v1, :cond_121

    goto :goto_137

    :cond_121
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v9, v3

    if-ne v3, v7, :cond_128

    goto :goto_134

    :cond_128
    if-ne v3, v6, :cond_12b

    goto :goto_136

    :cond_12b
    if-eq v3, v11, :cond_136

    if-ne v3, v10, :cond_130

    goto :goto_136

    :cond_130
    int-to-char v3, v3

    :try_start_131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_134
    move v3, v4

    goto :goto_11e

    :cond_136
    :goto_136
    move v3, v4

    :goto_137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_147

    invoke-static {v9, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_145} :catch_1b4
    .catchall {:try_start_131 .. :try_end_145} :catchall_1b2

    goto/16 :goto_56

    :cond_147
    :goto_147
    if-lt v3, v1, :cond_14a

    goto :goto_151

    :cond_14a
    aget-byte v14, v9, v3

    if-eq v14, v11, :cond_18a

    if-ne v14, v10, :cond_151

    goto :goto_18a

    :cond_151
    :goto_151
    if-ge v3, v1, :cond_16c

    :try_start_153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_156} :catch_1b4
    .catchall {:try_start_153 .. :try_end_156} :catchall_1b2

    :goto_156
    if-lt v3, v1, :cond_159

    goto :goto_160

    :cond_159
    aget-byte v10, v9, v3

    if-ne v10, v7, :cond_15e

    goto :goto_169

    :cond_15e
    if-ne v10, v6, :cond_165

    :goto_160
    :try_start_160
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16d

    :cond_165
    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_169
    add-int/lit8 v3, v3, 0x1

    goto :goto_156

    :cond_16c
    const/4 v1, 0x0

    :goto_16d
    move-object v7, v1

    new-instance v10, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v6

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v13

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    iget-object v1, v8, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_19a

    :cond_18a
    :goto_18a
    add-int/lit8 v3, v3, 0x1

    goto :goto_147

    :cond_18d
    :goto_18d
    add-int/lit8 v3, v3, 0x1

    goto :goto_110

    :cond_190
    :goto_190
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_86

    :cond_194
    :goto_194
    invoke-static {v9, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_56

    :goto_19a
    move-object v1, v9

    goto/16 :goto_10

    :cond_19d
    :goto_19d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    :cond_1a1
    array-length v5, v9

    mul-int/lit8 v5, v5, 0x2

    new-array v4, v5, [B

    array-length v5, v9

    invoke-static {v9, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_1aa} :catch_1b4
    .catchall {:try_start_160 .. :try_end_1aa} :catchall_1b2

    move-object v9, v4

    :cond_1ab
    int-to-byte v3, v3

    aput-byte v3, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :catchall_1b2
    move-exception v0

    goto :goto_1c6

    :catch_1b4
    move-exception v0

    :try_start_1b5
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_1c3

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c3
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
    :try_end_1c6
    .catchall {:try_start_1b5 .. :try_end_1c6} :catchall_1b2

    :goto_1c6
    :try_start_1c6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c9} :catch_1ca

    throw v0

    :catch_1ca
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d7

    :goto_1d6
    throw v0

    :goto_1d7
    goto :goto_1d6
.end method

.method j6(Ljava/io/OutputStream;)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_86

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_f

    monitor-exit v0

    goto/16 :goto_8c

    :cond_f
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HostKey;

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->v5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->j6()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UNKNOWN"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/jcraft/jsch/KnownHosts;->DW:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_80

    :cond_3c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4e

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Lcom/jcraft/jsch/KnownHosts;->j6:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_4e
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Lcom/jcraft/jsch/KnownHosts;->j6:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    if-eqz v6, :cond_7b

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_7b
    sget-object v2, Lcom/jcraft/jsch/KnownHosts;->DW:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_83
    move-exception p1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_4 .. :try_end_85} :catchall_83

    :try_start_85
    throw p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_86

    :catch_86
    move-exception p1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_8c
    return-void
.end method

.method j6(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->Hw:Ljava/lang/String;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 9

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_16

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_64

    if-eqz v2, :cond_15

    :try_start_10
    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->DW()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception p1

    :cond_15
    :goto_15
    return-void

    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/HostKey;

    if-eqz p1, :cond_3c

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/HostKey;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    if-eqz p2, :cond_3c

    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    if-eqz p3, :cond_3c

    iget-object v4, v3, Lcom/jcraft/jsch/HostKey;->Zo:[B

    invoke-static {p3, v4}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v4

    if-eqz v4, :cond_61

    :cond_3c
    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    instance-of v4, v3, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    if-eqz v4, :cond_54

    move-object v4, v3

    check-cast v4, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-virtual {v4}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->VH()Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_5b

    :cond_54
    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/KnownHosts;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    goto :goto_60

    :cond_5b
    :goto_5b
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :goto_60
    const/4 v2, 0x1

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catchall_64
    move-exception p1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_16 .. :try_end_66} :catchall_64

    goto :goto_68

    :goto_67
    throw p1

    :goto_68
    goto :goto_67
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;
    .registers 10

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_5c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/jcraft/jsch/HostKey;

    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_51

    if-eqz p1, :cond_4f

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_4f

    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_4f

    array-length p2, p1

    add-int/2addr p2, v3

    new-array p2, p2, [Lcom/jcraft/jsch/HostKey;

    invoke-static {v4, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    invoke-static {p1, v2, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p2

    :cond_4f
    monitor-exit v0

    return-object v4

    :cond_51
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/HostKey;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_5c
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->v5:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/HostKey;

    iget v5, v4, Lcom/jcraft/jsch/HostKey;->v5:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6a

    goto :goto_81

    :cond_6a
    if-eqz p1, :cond_7e

    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/HostKey;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    if-eqz p2, :cond_7e

    invoke-virtual {v4}, Lcom/jcraft/jsch/HostKey;->v5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    :cond_7e
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :catchall_84
    move-exception p1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    goto :goto_88

    :goto_87
    throw p1

    :goto_88
    goto :goto_87
.end method
