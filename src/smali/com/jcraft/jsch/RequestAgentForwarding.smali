.class Lcom/jcraft/jsch/RequestAgentForwarding;
.super Lcom/jcraft/jsch/Request;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->j6(Z)V

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v4, 0x62

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const-string v4, "auth-agent-req@openssh.com"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->j6()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Packet;)V

    iput-boolean v1, p1, Lcom/jcraft/jsch/Session;->KD:Z

    return-void
.end method
