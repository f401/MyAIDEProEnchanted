.class public final Lc/ab;
.super Lc/a;
.source "SourceFile"


# instance fields
.field public final h:I


# direct methods
.method public constructor <init>(ILc/f;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lc/ab;->h:I

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p2}, Lc/f;->d()I

    move-result v3

    if-eq v2, v3, :cond_36

    :try_start_f
    invoke-virtual {p2, v2}, Lc/f;->c(I)Lc/e;

    move-result-object v3

    check-cast v3, Lc/m;

    const-string v4, "BER"

    invoke-virtual {v3, v4}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_21

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_21
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "malformed object: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/r;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1, v0}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :cond_36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lc/a;-><init>(ZI[B)V

    return-void
.end method

.method public constructor <init>(ZI[B)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lc/ab;->h:I

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lc/a;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 5

    iget v0, p0, Lc/ab;->h:I

    const/16 v1, 0x40

    const/16 v2, 0x60

    if-eqz v0, :cond_16

    .line 2
    iget-boolean v0, p0, Lc/a;->a:Z

    if-eqz v0, :cond_e

    const/16 v1, 0x60

    :cond_e
    iget v0, p0, Lc/a;->b:I

    iget-object v2, p0, Lc/a;->c:[B

    invoke-virtual {p1, v1, v0, v2}, Lc/q;->f(II[B)V

    return-void

    .line 1
    :cond_16
    iget-boolean v0, p0, Lc/a;->a:Z

    if-eqz v0, :cond_1c

    const/16 v1, 0x60

    :cond_1c
    iget v0, p0, Lc/a;->b:I

    invoke-virtual {p1, v1, v0}, Lc/q;->k(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-object v0, p0, Lc/a;->c:[B

    invoke-virtual {p1, v0}, Lc/q;->e([B)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    return-void
.end method
