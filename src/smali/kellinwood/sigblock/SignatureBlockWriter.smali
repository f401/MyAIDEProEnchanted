.class public Lkellinwood/sigblock/SignatureBlockWriter;
.super Ljava/lang/Object;


# static fields
.field private static j6:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSignatureBlock([BLjava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
    .registers 9

    const-class v0, Lkellinwood/sigblock/SignatureBlockWriter;

    monitor-enter v0

    :try_start_0
    sget-boolean v0, Lkellinwood/sigblock/SignatureBlockWriter;->j6:Z

    if-nez v0, :cond_0

    new-instance v0, Labcd/pP;

    invoke-direct {v0}, Labcd/pP;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x1

    sput-boolean v0, Lkellinwood/sigblock/SignatureBlockWriter;->j6:Z

    :cond_0
    new-instance v0, Labcd/cO;

    invoke-direct {v0}, Labcd/cO;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Labcd/TN;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/TN;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Labcd/dO;->j6(Labcd/SP;)V

    new-instance v1, Lkellinwood/sigblock/a;

    invoke-direct {v1, p0}, Lkellinwood/sigblock/a;-><init>([B)V

    new-instance v2, Labcd/kO;

    new-instance v3, Labcd/nO;

    new-instance v4, Labcd/MP;

    invoke-direct {v4}, Labcd/MP;-><init>()V

    const-string v5, "SC"

    invoke-virtual {v4, v5}, Labcd/MP;->j6(Ljava/lang/String;)Labcd/MP;

    invoke-virtual {v4}, Labcd/MP;->j6()Labcd/AP;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/nO;-><init>(Labcd/AP;)V

    invoke-virtual {v3, v1, p1}, Labcd/nO;->j6(Labcd/vP;Ljava/security/cert/X509Certificate;)Labcd/kO;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Labcd/kO;-><init>(Labcd/kO;Labcd/WN;Labcd/WN;)V

    invoke-virtual {v0, v2}, Labcd/dO;->j6(Labcd/kO;)V

    new-instance v2, Labcd/ZN;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v2, v1}, Labcd/ZN;-><init>([B)V

    const-string v1, "1.2.840.113549.1.7.1"

    const/4 v3, 0x0

    const-string v4, "SC"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Labcd/cO;->j6(Ljava/lang/String;Labcd/YN;ZLjava/lang/String;Z)Labcd/aO;

    move-result-object v0

    invoke-virtual {v0}, Labcd/aO;->j6()Labcd/UM;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Labcd/XN; {:try_start_1 .. :try_end_1} :catch_3
    .catch Labcd/BP; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v0, Lkellinwood/sigblock/SignatureBlockWriter;

    monitor-exit v0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    const-class v1, Lkellinwood/sigblock/SignatureBlockWriter;

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
