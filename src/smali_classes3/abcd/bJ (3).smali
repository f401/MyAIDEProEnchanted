.class Labcd/bJ;
.super Labcd/eE;


# instance fields
.field private VH:Z

.field private final Zo:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Labcd/eE;-><init>()V

    iput-object p1, p0, Labcd/bJ;->Zo:Ljava/io/OutputStream;

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/bJ;->VH:Z

    return-void
.end method

.method private j6(Ljava/lang/StringBuilder;)V
    .registers 3

    iget-boolean v0, p0, Labcd/bJ;->VH:Z

    if-eqz v0, :cond_1b

    :try_start_4
    iget-object v0, p0, Labcd/bJ;->Zo:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Labcd/bJ;->Zo:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/bJ;->VH:Z

    :cond_1b
    :goto_1b
    return-void
.end method

.method private j6(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private j6(Ljava/lang/StringBuilder;Ljava/lang/String;III)V
    .registers 7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x64

    const/16 v0, 0x20

    if-ge p5, p2, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    const/16 p2, 0xa

    if-ge p5, p2, :cond_18

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "% ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string p1, ", done\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected DW(Ljava/lang/String;III)V
    .registers 12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;III)V

    const-string p1, "   \r"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected FH(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string p1, "   \r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected j6(Ljava/lang/String;III)V
    .registers 12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;III)V

    const-string p1, "\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Labcd/bJ;->j6(Ljava/lang/StringBuilder;)V

    return-void
.end method
