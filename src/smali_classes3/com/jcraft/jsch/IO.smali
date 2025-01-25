.class public Lcom/jcraft/jsch/IO;
.super Ljava/lang/Object;


# instance fields
.field DW:Ljava/io/OutputStream;

.field FH:Ljava/io/OutputStream;

.field private Hw:Z

.field private Zo:Z

.field j6:Ljava/io/InputStream;

.field private v5:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->Hw:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->v5:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->Zo:Z

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method DW(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    return-void
.end method

.method DW(Ljava/io/OutputStream;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->v5:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    return-void
.end method

.method DW([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method FH()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/jcraft/jsch/IO;->v5:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    :goto_10
    return-void
.end method

.method FH([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public j6()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    iget-boolean v2, p0, Lcom/jcraft/jsch/IO;->Hw:Z

    if-nez v2, :cond_c

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v1

    :goto_10
    invoke-virtual {p0}, Lcom/jcraft/jsch/IO;->FH()V

    :try_start_13
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Lcom/jcraft/jsch/IO;->Zo:Z

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1e
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    return-void
.end method

.method public j6(Lcom/jcraft/jsch/Packet;)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x0

    iget p1, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method j6(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    return-void
.end method

.method j6(Ljava/io/InputStream;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->Hw:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    return-void
.end method

.method j6(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    return-void
.end method

.method j6(Ljava/io/OutputStream;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->Zo:Z

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/OutputStream;)V

    return-void
.end method

.method j6([BII)V
    .registers 5

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_d

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void

    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "End of IO Stream Read"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :goto_15
    throw p1

    :goto_16
    goto :goto_15
.end method
