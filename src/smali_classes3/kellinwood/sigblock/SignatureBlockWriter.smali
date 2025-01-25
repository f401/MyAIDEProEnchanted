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

    :try_start_3
    sget-boolean v0, Lkellinwood/sigblock/SignatureBlockWriter;->j6:Z

    if-nez v0, :cond_12

    new-instance v0, Labcd/pP;

    invoke-direct {v0}, Labcd/pP;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x1

    sput-boolean v0, Lkellinwood/sigblock/SignatureBlockWriter;->j6:Z

    :cond_12
    new-instance v0, Labcd/cO;

    invoke-direct {v0}, Labcd/cO;-><init>()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_91

    :try_start_17
    new-instance v1, Labcd/TN;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/TN;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Labcd/dO;->j6(Labcd/SP;)V

    new-instance v1, Lkellinwood/sigblock/a;

    invoke-direct {v1, p0}, Lkellinwood/sigblock/a;-><init>([B)V

    new-instance p0, Labcd/kO;

    new-instance v2, Labcd/nO;

    new-instance v3, Labcd/MP;

    invoke-direct {v3}, Labcd/MP;-><init>()V

    const-string v4, "SC"

    invoke-virtual {v3, v4}, Labcd/MP;->j6(Ljava/lang/String;)Labcd/MP;

    invoke-virtual {v3}, Labcd/MP;->j6()Labcd/AP;

    move-result-object v3

    invoke-direct {v2, v3}, Labcd/nO;-><init>(Labcd/AP;)V

    invoke-virtual {v2, v1, p1}, Labcd/nO;->j6(Labcd/vP;Ljava/security/cert/X509Certificate;)Labcd/kO;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Labcd/kO;-><init>(Labcd/kO;Labcd/WN;Labcd/WN;)V

    invoke-virtual {v0, p0}, Labcd/dO;->j6(Labcd/kO;)V

    new-instance v2, Labcd/ZN;

    const/4 p0, 0x0

    new-array p0, p0, [B

    invoke-direct {v2, p0}, Labcd/ZN;-><init>([B)V

    const-string v1, "1.2.840.113549.1.7.1"

    const/4 v3, 0x0

    const-string v4, "SC"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Labcd/cO;->j6(Ljava/lang/String;Labcd/YN;ZLjava/lang/String;Z)Labcd/aO;

    move-result-object p0

    invoke-virtual {p0}, Labcd/aO;->j6()Labcd/UM;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_67
    .catch Labcd/XN; {:try_start_17 .. :try_end_67} :catch_85
    .catch Labcd/BP; {:try_start_17 .. :try_end_67} :catch_79
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_67} :catch_72
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_67} :catch_6b
    .catchall {:try_start_17 .. :try_end_67} :catchall_91

    const-class p0, Lkellinwood/sigblock/SignatureBlockWriter;

    monitor-exit p0

    return-void

    :catch_6b
    move-exception p0

    :try_start_6c
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    throw p0

    :catch_72
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    throw p0

    :catch_79
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_85
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_91

    :catchall_91
    move-exception p0

    const-class p1, Lkellinwood/sigblock/SignatureBlockWriter;

    monitor-exit p1

    throw p0
.end method
