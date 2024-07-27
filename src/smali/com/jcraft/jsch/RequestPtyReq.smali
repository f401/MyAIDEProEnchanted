.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private Hw:Ljava/lang/String;

.field private VH:I

.field private Zo:I

.field private gn:I

.field private u7:[B

.field private v5:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->Hw:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->v5:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->Zo:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->VH:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->gn:I

    sget-object v0, Lcom/jcraft/jsch/Util;->FH:[B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->u7:[B

    return-void
.end method


# virtual methods
.method j6(IIII)V
    .registers 5

    iput p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->v5:I

    iput p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->Zo:I

    iput p3, p0, Lcom/jcraft/jsch/RequestPtyReq;->VH:I

    iput p4, p0, Lcom/jcraft/jsch/RequestPtyReq;->gn:I

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v0, 0x62

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const-string v0, "pty-req"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->v5:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->Zo:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->VH:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->gn:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->u7:[B

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->Hw:Ljava/lang/String;

    return-void
.end method

.method j6([B)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->u7:[B

    return-void
.end method
