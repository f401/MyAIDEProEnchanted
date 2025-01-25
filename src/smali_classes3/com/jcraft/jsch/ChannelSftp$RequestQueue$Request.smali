.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Request"
.end annotation


# instance fields
.field DW:J

.field FH:J

.field final Hw:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field j6:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->Hw:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
