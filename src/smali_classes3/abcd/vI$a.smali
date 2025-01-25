.class Labcd/vI$a;
.super Ljava/lang/Process;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/vI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private FH:Ljava/io/InputStream;

.field private Hw:Ljava/io/OutputStream;

.field final Zo:Labcd/vI;

.field private j6:Lcom/jcraft/jsch/ChannelExec;

.field private v5:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Labcd/vI;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Labcd/vI$a;->Zo:Labcd/vI;

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    iput p3, p0, Labcd/vI$a;->DW:I

    :try_start_7
    invoke-static {p1}, Labcd/vI;->j6(Labcd/vI;)Lcom/jcraft/jsch/Session;

    move-result-object v0

    const-string v1, "exec"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->FH(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ChannelExec;

    iput-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelExec;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/vI$a;->DW()V

    iget-object p2, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    if-lez p3, :cond_22

    mul-int/lit16 p3, p3, 0x3e8

    goto :goto_23

    :cond_22
    const/4 p3, 0x0

    :goto_23
    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Channel;->j6(I)V

    iget-object p2, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result p2

    if-eqz p2, :cond_2f

    return-void

    :cond_2f
    new-instance p2, Labcd/yD;

    invoke-static {p1}, Labcd/vI;->DW(Labcd/vI;)Labcd/HJ;

    move-result-object p3

    const-string v0, "connection failed"

    invoke-direct {p2, p3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p2
    :try_end_3b
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_7 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p2

    new-instance p3, Labcd/yD;

    invoke-static {p1}, Labcd/vI;->DW(Labcd/vI;)Labcd/HJ;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0, p2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method synthetic constructor <init>(Labcd/vI;Ljava/lang/String;ILabcd/vI$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/vI$a;-><init>(Labcd/vI;Ljava/lang/String;I)V

    return-void
.end method

.method private DW()V
    .registers 4

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->gn()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/vI$a;->FH:Ljava/io/InputStream;

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->u7()Ljava/io/OutputStream;

    move-result-object v0

    iget v1, p0, Labcd/vI$a;->DW:I

    if-gtz v1, :cond_13

    goto :goto_25

    :cond_13
    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1}, Ljava/io/PipedInputStream;-><init>()V

    new-instance v2, Labcd/YK;

    invoke-direct {v2, v1, v0}, Labcd/YK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    new-instance v0, Labcd/uI;

    invoke-direct {v0, p0, v1, v2}, Labcd/uI;-><init>(Labcd/vI$a;Ljava/io/PipedInputStream;Labcd/YK;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_25
    iput-object v0, p0, Labcd/vI$a;->Hw:Ljava/io/OutputStream;

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelExec;->aM()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/vI$a;->v5:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic j6(Labcd/vI$a;)I
    .registers 1

    iget p0, p0, Labcd/vI$a;->DW:I

    return p0
.end method

.method private j6()Z
    .registers 2

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->Zo()I

    move-result v0

    if-gez v0, :cond_12

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->DW()V

    :cond_d
    return-void
.end method

.method public exitValue()I
    .registers 2

    invoke-direct {p0}, Labcd/vI$a;->j6()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/vI$a;->j6:Lcom/jcraft/jsch/ChannelExec;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->Zo()I

    move-result v0

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/vI$a;->v5:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/vI$a;->FH:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/vI$a;->Hw:Ljava/io/OutputStream;

    return-object v0
.end method

.method public waitFor()I
    .registers 3

    :goto_0
    invoke-direct {p0}, Labcd/vI$a;->j6()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Labcd/vI$a;->exitValue()I

    move-result v0

    return v0

    :cond_b
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method
