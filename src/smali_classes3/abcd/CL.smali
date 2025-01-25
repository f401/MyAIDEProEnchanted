.class public Labcd/CL;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/CL$a;
    }
.end annotation


# instance fields
.field private j6:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method DW()Labcd/CL;
    .registers 3

    new-instance v0, Labcd/DM;

    iget-object v1, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/DM;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method DW(I)V
    .registers 5

    const/16 v0, 0x7f

    if-le p1, v0, :cond_23

    const/4 v0, 0x1

    move v1, p1

    const/4 v2, 0x1

    :goto_7
    ushr-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_20

    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Labcd/CL;->j6(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_14
    if-gez v2, :cond_17

    goto :goto_27

    :cond_17
    shr-int v0, p1, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Labcd/CL;->j6(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_14

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Labcd/CL;->j6(I)V

    :goto_27
    return-void
.end method

.method j6()Labcd/CL;
    .registers 3

    new-instance v0, Labcd/rM;

    iget-object v1, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/rM;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method j6(II)V
    .registers 6

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Labcd/CL;->j6(I)V

    goto :goto_31

    :cond_9
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Labcd/CL;->j6(I)V

    const/16 p1, 0x80

    if-ge p2, p1, :cond_15

    invoke-virtual {p0, p2}, Labcd/CL;->j6(I)V

    goto :goto_31

    :cond_15
    const/4 v0, 0x5

    new-array v0, v0, [B

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    :cond_1e
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, p2, 0x7f

    or-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_1e

    rsub-int/lit8 p1, v2, 0x5

    invoke-virtual {p0, v0, v2, p1}, Labcd/CL;->j6([BII)V

    :goto_31
    return-void
.end method

.method j6(II[B)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/CL;->j6(II)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Labcd/CL;->DW(I)V

    invoke-virtual {p0, p3}, Labcd/CL;->j6([B)V

    return-void
.end method

.method j6(I[B)V
    .registers 3

    invoke-virtual {p0, p1}, Labcd/CL;->j6(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Labcd/CL;->DW(I)V

    invoke-virtual {p0, p2}, Labcd/CL;->j6([B)V

    return-void
.end method

.method j6(Labcd/EL;)V
    .registers 4

    if-eqz p1, :cond_d

    new-instance v0, Labcd/CL$a;

    iget-object v1, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Labcd/CL$a;-><init>(Labcd/CL;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Labcd/EL;->j6(Labcd/CL;)V

    return-void

    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/qL;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-virtual {p1, p0}, Labcd/EL;->j6(Labcd/CL;)V

    return-void

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j6([B)V
    .registers 3

    iget-object v0, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method j6([BII)V
    .registers 5

    iget-object v0, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
