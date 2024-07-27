.class public Labcd/vI;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ZI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/vI$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/HJ;

.field private final j6:Lcom/jcraft/jsch/Session;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Session;Labcd/HJ;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/vI;->j6:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Labcd/vI;->DW:Labcd/HJ;

    return-void
.end method

.method static synthetic DW(Labcd/vI;)Labcd/HJ;
    .registers 2

    iget-object v0, p0, Labcd/vI;->DW:Labcd/HJ;

    return-object v0
.end method

.method static synthetic j6(Labcd/vI;)Lcom/jcraft/jsch/Session;
    .registers 2

    iget-object v0, p0, Labcd/vI;->j6:Lcom/jcraft/jsch/Session;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .registers 2

    iget-object v0, p0, Labcd/vI;->j6:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/vI;->j6:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->j6()V

    :cond_0
    return-void
.end method

.method public j6()Lcom/jcraft/jsch/Channel;
    .registers 3

    iget-object v0, p0, Labcd/vI;->j6:Lcom/jcraft/jsch/Session;

    const-string v1, "sftp"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->FH(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;I)Ljava/lang/Process;
    .registers 5

    new-instance v0, Labcd/vI$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Labcd/vI$a;-><init>(Labcd/vI;Ljava/lang/String;ILabcd/vI$a;)V

    return-object v0
.end method
