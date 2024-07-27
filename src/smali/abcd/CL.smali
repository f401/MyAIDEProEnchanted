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
    .registers 4

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2

    const/4 v1, 0x1

    move v0, p1

    :goto_0
    ushr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Labcd/CL;->j6(I)V

    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1
    if-gez v0, :cond_0

    :goto_2
    return-void

    :cond_0
    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Labcd/CL;->j6(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Labcd/CL;->j6(I)V

    goto :goto_2
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

    if-ge p2, v0, :cond_0

    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/CL;->j6(I)V

    :goto_0
    return-void

    :cond_0
    or-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0, v0}, Labcd/CL;->j6(I)V

    const/16 v0, 0x80

    if-ge p2, v0, :cond_1

    invoke-virtual {p0, p2}, Labcd/CL;->j6(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_2
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Labcd/CL;->j6([BII)V

    goto :goto_0
.end method

.method j6(II[B)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Labcd/CL;->j6(II)V

    array-length v0, p3

    invoke-virtual {p0, v0}, Labcd/CL;->DW(I)V

    invoke-virtual {p0, p3}, Labcd/CL;->j6([B)V

    return-void
.end method

.method j6(I[B)V
    .registers 4

    invoke-virtual {p0, p1}, Labcd/CL;->j6(I)V

    array-length v0, p2

    invoke-virtual {p0, v0}, Labcd/CL;->DW(I)V

    invoke-virtual {p0, p2}, Labcd/CL;->j6([B)V

    return-void
.end method

.method j6(Labcd/EL;)V
    .registers 4

    if-eqz p1, :cond_0

    new-instance v0, Labcd/CL$a;

    iget-object v1, p0, Labcd/CL;->j6:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Labcd/CL$a;-><init>(Labcd/CL;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Labcd/EL;->j6(Labcd/CL;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/qL;)V
    .registers 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/EL;->j6(Labcd/CL;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
