.class public Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;
.super Ljava/lang/Object;
.source "ProxyDiagnostics.java"


# static fields
.field public static final DEFAULT_DESTINATION:Ljava/lang/String; = "https://ant.apache.org/"


# instance fields
.field private destURI:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    const-string v0, "https://ant.apache.org/"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;->destURI:Ljava/net/URI;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_a} :catch_b

    .line 56
    return-void

    .line 54
    :catch_b
    move-exception v0

    .line 55
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 73
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;->destURI:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 76
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 77
    if-nez v1, :cond_2b

    .line 78
    const-string v0, "Direct connection\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 81
    :cond_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    instance-of v0, v1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_58

    move-object v0, v1

    .line 83
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 84
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 89
    const-string v0, " [unresolved]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_58
    :goto_58
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 91
    :cond_5e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 92
    const-string v1, " ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 99
    :cond_74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
