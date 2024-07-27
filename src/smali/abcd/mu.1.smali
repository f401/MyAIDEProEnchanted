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

    const/16 v2, 0x3e8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-lt p2, v0, :cond_2

    if-lt p3, v0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    iput-object p1, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iput p2, p0, Labcd/mu;->DW:I

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    new-instance v2, Labcd/Zt;

    invoke-direct {v2, v0, p2}, Labcd/Zt;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Labcd/mu;->v5:Labcd/Zt;

    new-instance v0, Labcd/Zt;

    invoke-direct {v0, v1, p3, p4}, Labcd/Zt;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object v0, p0, Labcd/mu;->Zo:Labcd/Zt;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spacer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mu;->v5:Labcd/Zt;

    invoke-static {v0, v1}, Labcd/mu;->j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_0
    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/mu;->Zo:Labcd/Zt;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Labcd/Zt;->write(I)V

    invoke-direct {p0}, Labcd/mu;->Zo()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Zo()V
    .registers 6

    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v2, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iget-object v3, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iget v3, p0, Labcd/mu;->DW:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Labcd/mu;->j6(Ljava/io/Writer;I)V

    iget-object v2, p0, Labcd/mu;->j6:Ljava/io/Writer;

    iget-object v3, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Labcd/mu;->j6:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Labcd/mu;->FH:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

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

    :try_start_0
    invoke-virtual {v1}, Labcd/mu;->DW()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/mu;->FH()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Labcd/mu;->j6()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static j6(Ljava/io/Writer;I)V
    .registers 3

    :goto_0
    if-lez p1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 4

    const/16 v1, 0xa

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    return-void
.end method

.method private v5()V
    .registers 3

    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mu;->Zo:Labcd/Zt;

    invoke-static {v0, v1}, Labcd/mu;->j6(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_0
    iget-object v0, p0, Labcd/mu;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/mu;->v5:Labcd/Zt;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Labcd/Zt;->write(I)V

    invoke-direct {p0}, Labcd/mu;->Zo()V

    goto :goto_0

    :cond_0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
