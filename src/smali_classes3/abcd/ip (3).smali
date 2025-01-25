.class public Labcd/ip;
.super Labcd/Gp;


# instance fields
.field private final VH:Z

.field private Zo:[B

.field private final gn:Labcd/Gs;

.field private final v5:Labcd/Un;


# direct methods
.method public constructor <init>(Labcd/Un;ZLabcd/Gs;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_e

    iput-object p1, p0, Labcd/ip;->v5:Labcd/Un;

    iput-boolean p2, p0, Labcd/ip;->VH:Z

    iput-object p3, p0, Labcd/ip;->gn:Labcd/Gs;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(Labcd/jp;Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B
    .registers 16

    iget-object v0, p0, Labcd/ip;->v5:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->Zo()Labcd/io;

    move-result-object v2

    iget-object v0, p0, Labcd/ip;->v5:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->v5()Labcd/co;

    move-result-object v3

    iget-object v0, p0, Labcd/ip;->v5:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v0

    new-instance v9, Labcd/hp;

    invoke-virtual {v0}, Labcd/Wn;->rN()I

    move-result v5

    invoke-virtual {v0}, Labcd/Wn;->yS()I

    move-result v6

    iget-boolean v7, p0, Labcd/ip;->VH:Z

    iget-object v8, p0, Labcd/ip;->gn:Labcd/Gs;

    move-object v1, v9

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Labcd/hp;-><init>(Labcd/io;Labcd/co;Labcd/jp;IIZLabcd/Gs;)V

    if-nez p3, :cond_2e

    if-nez p4, :cond_2e

    invoke-virtual {v9}, Labcd/hp;->j6()[B

    move-result-object p1

    goto :goto_32

    :cond_2e
    invoke-virtual {v9, p2, p3, p4, p5}, Labcd/hp;->j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B

    move-result-object p1

    :goto_32
    return-object p1
.end method

.method private j6(Labcd/jp;Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B
    .registers 6

    invoke-direct/range {p0 .. p5}, Labcd/ip;->DW(Labcd/jp;Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected DW(Labcd/Kp;I)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/ip;->j6(Labcd/jp;Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B

    move-result-object p1

    iput-object p1, p0, Labcd/ip;->Zo:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Labcd/Gp;->j6(I)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while placing debug info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/ip;->gn:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object p1

    throw p1
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 10

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Labcd/Lt;->j6(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Labcd/ip;->j6(Labcd/jp;Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B

    :cond_27
    iget-object p1, p0, Labcd/ip;->Zo:[B

    invoke-interface {p2, p1}, Labcd/ku;->write([B)V

    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->Ws:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/jp;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Labcd/ip;->j6(Labcd/jp;Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B

    return-void
.end method
