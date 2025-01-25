.class public final Labcd/mu;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private final FH:Ljava/lang/StringBuffer;

.field private final Hw:Ljava/lang/StringBuffer;

.field private final Zo:Labcd/Zt;

.field private final j6:Ljava/io/Writer;

.field private final v5:Labcd/Zt;


# direct methods
.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4f

    const/4 v0, 0x1

    if-lt p2, v0, :cond_47

    if-lt p3, v0, :cond_3f

    if-eqz p4, :cond_37

    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object p1, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iput p2, p0, Labcd/mu;->DW:I

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    new-instance p1, Labcd/Zt;

    invoke-direct {p1, v0, p2}, Labcd/Zt;-><init>(Ljava/io/Writer;I)V

    iput-object p1, p0, Labcd/mu;->v5:Labcd/Zt;

    new-instance p1, Labcd/Zt;

    invoke-direct {p1, v2, p3, p4}, Labcd/Zt;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object p1, p0, Labcd/mu;->Zo:Labcd/Zt;

    return-void

    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spacer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rightWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "leftWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mu;->v5:Labcd/Zt;

    invoke-static {v0, v1}, Labcd/mu;->j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_7
    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Labcd/mu;->Zo:Labcd/Zt;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Labcd/Zt;->write(I)V

    invoke-direct {p0}, Labcd/mu;->Zo()V

    goto :goto_7

    :cond_1a
    return-void
.end method

.method private Zo()V
    .registers 6

    :goto_0
    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_b

    return-void

    :cond_b
    iget-object v2, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_14

    return-void

    :cond_14
    const/4 v2, 0x0

    if-eqz v0, :cond_22

    iget-object v3, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iget-object v4, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_22
    if-eqz v1, :cond_37

    iget-object v3, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iget v4, p0, Labcd/mu;->DW:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Labcd/mu;->j6(Ljava/io/Writer;I)V

    iget-object v3, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iget-object v4, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_37
    iget-object v3, p0, Labcd/mu;->j6:Ljava/io/Writer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    iget-object v3, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static j6(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Labcd/mu;

    invoke-direct {v1, v0, p1, p4, p2}, Labcd/mu;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    :try_start_15
    invoke-virtual {v1}, Labcd/mu;->DW()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/mu;->FH()Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_2b

    invoke-virtual {v1}, Labcd/mu;->j6()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static j6(Ljava/io/Writer;I)V
    .registers 3

    :goto_0
    if-lez p1, :cond_a

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method private static j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_13
    return-void
.end method

.method private v5()V
    .registers 3

    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mu;->Zo:Labcd/Zt;

    invoke-static {v0, v1}, Labcd/mu;->j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_7
    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Labcd/mu;->v5:Labcd/Zt;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Labcd/Zt;->write(I)V

    invoke-direct {p0}, Labcd/mu;->Zo()V

    goto :goto_7

    :cond_1a
    return-void
.end method


# virtual methods
.method public DW()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Labcd/mu;->v5:Labcd/Zt;

    return-object v0
.end method

.method public FH()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Labcd/mu;->Zo:Labcd/Zt;

    return-object v0
.end method

.method public j6()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mu;->v5:Labcd/Zt;

    invoke-static {v0, v1}, Labcd/mu;->j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mu;->Zo:Labcd/Zt;

    invoke-static {v0, v1}, Labcd/mu;->j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    invoke-direct {p0}, Labcd/mu;->Zo()V

    invoke-direct {p0}, Labcd/mu;->Hw()V

    invoke-direct {p0}, Labcd/mu;->v5()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
