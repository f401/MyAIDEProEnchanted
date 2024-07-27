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
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
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
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.2.840.113554.1.2.2"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/ietf/jgss/Oid;

    const-string v2, "1.2.840.113554.1.2.2.1"

    invoke-direct {v1, v2}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "host/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestAnonymity(Z)V
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public j6([BII)[B
    .registers 7

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW:Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "javax.security.auth.useSubjectCredsOnly"

    const-string v2, "true"

    invoke-static {v1, v2}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->j6:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "javax.security.auth.useSubjectCredsOnly"

    const-string v2, "true"

    invoke-static {v1, v2}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
