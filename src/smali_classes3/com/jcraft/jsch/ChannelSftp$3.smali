.class Lcom/jcraft/jsch/ChannelSftp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->Hw(Ljava/lang/String;)Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/util/Vector;

.field final j6:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$3;->j6:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$3;->DW:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$3;->DW:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
