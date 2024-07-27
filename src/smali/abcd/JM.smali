.class Labcd/JM;
.super Labcd/MM;


# instance fields
.field private FH:I

.field private Hw:I

.field private Zo:Z

.field private v5:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/MM;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/JM;->v5:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/JM;->Zo:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Labcd/JM;->FH:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Labcd/JM;->Hw:I

    iget v0, p0, Labcd/JM;->Hw:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Labcd/JM;->DW()Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private DW()Z
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Labcd/JM;->v5:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Labcd/JM;->Zo:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/JM;->FH:I

    if-nez v0, :cond_0

    iget v0, p0, Labcd/JM;->Hw:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Labcd/JM;->v5:Z

    invoke-virtual {p0, v1}, Labcd/MM;->j6(Z)V

    :cond_0
    iget-boolean v0, p0, Labcd/JM;->v5:Z

    return v0
.end method


# virtual methods
.method DW(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/JM;->Zo:Z

    invoke-direct {p0}, Labcd/JM;->DW()Z

    return-void
.end method

.method public read()I
    .registers 4

    invoke-direct {p0}, Labcd/JM;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    iget v0, p0, Labcd/JM;->FH:I

    iget v2, p0, Labcd/JM;->Hw:I

    iput v2, p0, Labcd/JM;->FH:I

    iput v1, p0, Labcd/JM;->Hw:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .registers 7

    iget-boolean v0, p0, Labcd/JM;->Zo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Labcd/JM;->v5:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_4

    iget v1, p0, Labcd/JM;->FH:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Labcd/JM;->Hw:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Labcd/JM;->FH:I

    iget-object v1, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Labcd/JM;->Hw:I

    iget v1, p0, Labcd/JM;->Hw:I

    if-ltz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
