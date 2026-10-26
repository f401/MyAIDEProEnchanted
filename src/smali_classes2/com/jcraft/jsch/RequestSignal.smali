.class Lcom/jcraft/jsch/RequestSignal;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private Hw:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const-string v0, "KILL"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestSignal;->Hw:Ljava/lang/String;

    return-void
.end method
