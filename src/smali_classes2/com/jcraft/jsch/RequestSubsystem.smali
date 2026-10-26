.class public Lcom/jcraft/jsch/RequestSubsystem;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private Hw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/RequestSubsystem;->Hw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const-string v2, "subsystem"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->j6()Z

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/RequestSubsystem;->Hw:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Request;->j6(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/Request;->j6(Z)V

    iput-object p3, p0, Lcom/jcraft/jsch/RequestSubsystem;->Hw:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/RequestSubsystem;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    return-void
.end method
