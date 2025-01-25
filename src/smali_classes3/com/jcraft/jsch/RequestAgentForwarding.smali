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
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->j6(Z)V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const-string p2, "auth-agent-req@openssh.com"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->j6()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Packet;)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/jcraft/jsch/Session;->KD:Z

    return-void
.end method
