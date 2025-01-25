.class public Lcom/jcraft/jsch/jgss/GSSContextKrb5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/GSSContext;


# static fields
.field private static j6:Ljava/lang/String;


# instance fields
.field private DW:Lorg/ietf/jgss/GSSContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    invoke-static {v0}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v0

    return v0
.end method

.method public DW([BII)[B
    .registers 7

    :try_start_0
    new-instance v0, Lorg/ietf/jgss/MessageProp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ietf/jgss/MessageProp;-><init>(IZ)V

    iget-object v1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v1, p1, p2, p3, v0}, Lorg/ietf/jgss/GSSContext;->getMIC([BIILorg/ietf/jgss/MessageProp;)[B

    move-result-object p1
    :try_end_d
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public j6()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_5
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance p1, Lorg/ietf/jgss/Oid;

    const-string v0, "1.2.840.113554.1.2.2"

    invoke-direct {p1, v0}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.2.840.113554.1.2.2.1"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v1
    :try_end_12
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_12} :catch_4f

    :try_start_12
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p2
    :try_end_1a
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Lorg/ietf/jgss/GSSException; {:try_start_12 .. :try_end_1a} :catch_4f

    goto :goto_1c

    :catch_1b
    move-exception v2

    :goto_1c
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "host/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v0, v2}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {p1, p2}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {p1, p2}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {p1, p2}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {p1, v2}, Lorg/ietf/jgss/GSSContext;->requestAnonymity(Z)V
    :try_end_4e
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1c .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p1

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j6([BII)[B
    .registers 7

    const-string p2, "true"

    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    :try_start_4
    sget-object v1, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    if-nez v1, :cond_d

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1
    :try_end_14
    .catch Lorg/ietf/jgss/GSSException; {:try_start_4 .. :try_end_14} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_14} :catch_1e
    .catchall {:try_start_4 .. :try_end_14} :catchall_1c

    sget-object p3, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    if-nez p3, :cond_1b

    invoke-static {v0, p2}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-object p1

    :catchall_1c
    move-exception p1

    goto :goto_34

    :catch_1e
    move-exception p1

    :try_start_1f
    new-instance p3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p3

    :catch_29
    move-exception p1

    new-instance p3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_1c

    :goto_34
    sget-object p3, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    if-nez p3, :cond_3b

    invoke-static {v0, p2}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    throw p1
.end method
