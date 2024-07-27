.class public Labcd/KA;
.super Ljava/io/OutputStream;


# instance fields
.field DW:Ljava/util/zip/CRC32;

.field FH:I

.field Hw:Ljava/io/OutputStream;

.field j6:I

.field v5:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/io/OutputStream;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v1, p0, Labcd/KA;->j6:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Labcd/KA;->DW:Ljava/util/zip/CRC32;

    iput v1, p0, Labcd/KA;->FH:I

    iput-object p2, p0, Labcd/KA;->Hw:Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {v0, p2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/KA;->j6:I

    return v0
.end method

.method public FH()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/KA;->Hw:Ljava/io/OutputStream;

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Labcd/KA;->DW:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Labcd/KA;->FH:I

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/KA;->FH:I

    return v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/KA;->DW:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    iget v0, p0, Labcd/KA;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/KA;->j6:I

    return-void
.end method

.method public write([B)V
    .registers 4

    iget-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Labcd/KA;->DW:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    iget v0, p0, Labcd/KA;->j6:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Labcd/KA;->j6:I

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Labcd/KA;->v5:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Labcd/KA;->DW:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    iget v0, p0, Labcd/KA;->j6:I

    add-int/2addr v0, p3

    iput v0, p0, Labcd/KA;->j6:I

    return-void
.end method
