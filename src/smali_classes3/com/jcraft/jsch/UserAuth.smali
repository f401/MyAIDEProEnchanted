.class public abstract Lcom/jcraft/jsch/UserAuth;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Lcom/jcraft/jsch/Packet;

.field protected FH:Lcom/jcraft/jsch/Buffer;

.field protected Hw:Ljava/lang/String;

.field protected j6:Lcom/jcraft/jsch/UserInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->gn()Lcom/jcraft/jsch/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->j6()Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->u7()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
