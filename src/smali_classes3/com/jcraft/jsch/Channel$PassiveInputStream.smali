.class Lcom/jcraft/jsch/Channel$PassiveInputStream;
.super Lcom/jcraft/jsch/Channel$MyPipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassiveInputStream"
.end annotation


# instance fields
.field final Hw:Lcom/jcraft/jsch/Channel;

.field out:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->Hw:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->out:Ljava/io/PipedOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->out:Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->out:Ljava/io/PipedOutputStream;

    return-void
.end method
