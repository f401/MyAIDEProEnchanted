.class public final Lc/ab;
.super Lc/a;
.source "SourceFile"


# instance fields
.field public final h:I


# direct methods
.method public constructor <init>(ILc/f;)V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lc/ab;->h:I

    .line 1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Lc/f;->d()I

    move-result v0

    if-eq v1, v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v1}, Lc/f;->c(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/m;

    const-string v4, "BER"

    invoke-virtual {v0, v4}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "malformed object: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0, v2}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lc/a;-><init>(ZI[B)V

    return-void
.end method

.method public constructor <init>(ZI[B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc/ab;->h:I

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lc/a;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 4

    const/16 v0, 0x60

    const/4 v3, 0x0

    iget v2, p0, Lc/ab;->h:I

    const/16 v1, 0x40

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, p0, Lc/a;->a:Z

    if-eqz v2, :cond_2

    :goto_0
    iget v1, p0, Lc/a;->b:I

    iget-object v2, p0, Lc/a;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lc/q;->f(II[B)V

    :goto_1
    return-void

    .line 1
    :cond_0
    iget-boolean v2, p0, Lc/a;->a:Z

    if-eqz v2, :cond_1

    :goto_2
    iget v1, p0, Lc/a;->b:I

    invoke-virtual {p1, v0, v1}, Lc/q;->k(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-object v0, p0, Lc/a;->c:[B

    invoke-virtual {p1, v0}, Lc/q;->e([B)V

    invoke-virtual {p1, v3}, Lc/q;->d(I)V

    invoke-virtual {p1, v3}, Lc/q;->d(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method
