.class public Labcd/YP;
.super Ljava/io/OutputStream;


# instance fields
.field private DW:Ljava/io/OutputStream;

.field private j6:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Labcd/YP;->j6:Ljava/io/OutputStream;

    iput-object p2, p0, Labcd/YP;->DW:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/YP;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Labcd/YP;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Labcd/YP;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Labcd/YP;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Labcd/YP;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/YP;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Labcd/YP;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Labcd/YP;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Labcd/YP;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Labcd/YP;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
