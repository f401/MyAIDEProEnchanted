.class Lcom/jcraft/jsch/RequestExec;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private Hw:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestExec;->Hw:[B

    iput-object p1, p0, Lcom/jcraft/jsch/RequestExec;->Hw:[B

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const-string p2, "exec"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->j6()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object p2, p0, Lcom/jcraft/jsch/RequestExec;->Hw:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/RequestExec;->Hw:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method
