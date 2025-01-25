.class Lcom/jcraft/jsch/RequestWindowChange;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field Hw:I

.field VH:I

.field Zo:I

.field v5:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->Hw:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->v5:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->Zo:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->VH:I

    return-void
.end method
