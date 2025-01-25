.class public final Lc/bn;
.super Lc/bs;
.source "SourceFile"


# static fields
.field public static final a:[B


# instance fields
.field public final b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lc/bn;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lc/bs;-><init>(Ljava/io/InputStream;I)V

    if-ltz p2, :cond_f

    iput p2, p0, Lc/bn;->b:I

    iput p2, p0, Lc/bn;->c:I

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lc/bs;->i()V

    :cond_e
    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative lengths not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final d()I
    .registers 2

    iget v0, p0, Lc/bn;->c:I

    return v0
.end method

.method public final e()[B
    .registers 4

    iget v0, p0, Lc/bn;->c:I

    if-nez v0, :cond_7

    sget-object v0, Lc/bn;->a:[B

    return-object v0

    :cond_7
    new-array v1, v0, [B

    iget-object v2, p0, Lc/bs;->g:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lb/b;->a(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lc/bn;->c:I

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lc/bs;->i()V

    return-object v1

    .line 1
    :cond_18
    const-string v0, "DEF length "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lc/bn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/bn;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final read()I
    .registers 3

    iget v0, p0, Lc/bn;->c:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v0, p0, Lc/bs;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    iget v1, p0, Lc/bn;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc/bn;->c:I

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lc/bs;->i()V

    :cond_19
    return v0

    .line 1
    :cond_1a
    const-string v0, "DEF length "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lc/bn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/bn;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final read([BII)I
    .registers 5

    iget v0, p0, Lc/bn;->c:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lc/bs;->g:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1d

    iget p2, p0, Lc/bn;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, Lc/bn;->c:I

    if-nez p2, :cond_1c

    invoke-virtual {p0}, Lc/bs;->i()V

    :cond_1c
    return p1

    .line 6
    :cond_1d
    const-string p1, "DEF length "

    invoke-static {p1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    iget p2, p0, Lc/bn;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " object truncated by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lc/bn;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/EOFException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
