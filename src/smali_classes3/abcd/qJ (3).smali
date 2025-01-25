.class Labcd/qJ;
.super Labcd/fJ;

# interfaces
.implements Labcd/BI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/qJ$a;,
        Labcd/qJ$b;
    }
.end annotation


# static fields
.field static final Mr:Labcd/DJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/pJ;

    invoke-direct {v0}, Labcd/pJ;-><init>()V

    sput-object v0, Labcd/qJ;->Mr:Labcd/DJ;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/fJ;-><init>(Labcd/UE;Labcd/HJ;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public QX()Labcd/nI;
    .registers 2

    new-instance v0, Labcd/qJ$a;

    invoke-direct {v0, p0}, Labcd/qJ$a;-><init>(Labcd/qJ;)V

    return-object v0
.end method

.method public XL()Labcd/LI;
    .registers 2

    new-instance v0, Labcd/qJ$b;

    invoke-direct {v0, p0}, Labcd/qJ$b;-><init>(Labcd/qJ;)V

    return-object v0
.end method

.method aM()Ljava/net/Socket;
    .registers 6

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->v5()I

    move-result v1

    if-lez v1, :cond_1d

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->v5()I

    move-result v1

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x24ca

    :goto_1f
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    :try_start_24
    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v3}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_3b

    return-object v2

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v1

    :goto_41
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_61

    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_55

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1

    :cond_55
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_61
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownHost:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
.end method

.method j6(Ljava/lang/String;Labcd/EI;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->v5()I

    move-result v1

    if-lez v1, :cond_48

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->v5()I

    move-result v1

    const/16 v2, 0x24ca

    if-eq v1, v2, :cond_48

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->v5()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/EI;->j6(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/EI;->DW()V

    return-void
.end method
