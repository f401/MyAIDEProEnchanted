.class Labcd/JM;
.super Labcd/MM;


# instance fields
.field private FH:I

.field private Hw:I

.field private Zo:Z

.field private v5:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/MM;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Labcd/JM;->v5:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Labcd/JM;->Zo:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Labcd/JM;->FH:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Labcd/JM;->Hw:I

    if-ltz p1, :cond_1b

    invoke-direct {p0}, Labcd/JM;->DW()Z

    return-void

    :cond_1b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/JM;->v5:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Labcd/JM;->Zo:Z

    if-eqz v0, :cond_16

    iget v0, p0, Labcd/JM;->FH:I

    if-nez v0, :cond_16

    iget v0, p0, Labcd/JM;->Hw:I

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/JM;->v5:Z

    invoke-virtual {p0, v0}, Labcd/MM;->j6(Z)V

    :cond_16
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

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_19

    iget v1, p0, Labcd/JM;->FH:I

    iget v2, p0, Labcd/JM;->Hw:I

    iput v2, p0, Labcd/JM;->FH:I

    iput v0, p0, Labcd/JM;->Hw:I

    return v1

    :cond_19
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .registers 6

    iget-boolean v0, p0, Labcd/JM;->Zo:Z

    if-nez v0, :cond_47

    const/4 v0, 0x3

    if-ge p3, v0, :cond_8

    goto :goto_47

    :cond_8
    iget-boolean v0, p0, Labcd/JM;->v5:Z

    if-eqz v0, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_41

    iget v0, p0, Labcd/JM;->FH:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Labcd/JM;->Hw:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object p1, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Labcd/JM;->FH:I

    iget-object p1, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Labcd/JM;->Hw:I

    if-ltz p1, :cond_3b

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_41
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_47
    :goto_47
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
