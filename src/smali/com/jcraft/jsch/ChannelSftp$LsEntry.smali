.class public Lcom/jcraft/jsch/ChannelSftp$LsEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LsEntry"
.end annotation


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Lcom/jcraft/jsch/SftpATTRS;

.field final Hw:Lcom/jcraft/jsch/ChannelSftp;

.field private j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .registers 5

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->DW(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->j6(Lcom/jcraft/jsch/SftpATTRS;)V

    return-void
.end method


# virtual methods
.method DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->DW:Ljava/lang/String;

    return-void
.end method

.method public Hw()Lcom/jcraft/jsch/SftpATTRS;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->FH:Lcom/jcraft/jsch/SftpATTRS;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->j6:Ljava/lang/String;

    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "a decendent of LsEntry must be given."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Lcom/jcraft/jsch/SftpATTRS;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->FH:Lcom/jcraft/jsch/SftpATTRS;

    return-void
.end method

.method j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->j6:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->DW:Ljava/lang/String;

    return-object v0
.end method
