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
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lc/bn;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lc/bs;-><init>(Ljava/io/InputStream;I)V

    if-ltz p2, :cond_1

    iput p2, p0, Lc/bn;->b:I

    iput p2, p0, Lc/bn;->c:I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lc/bs;->i()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative lengths not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget v0, p0, Lc/bn;->c:I

    return v0
.end method

.method public final e()[B
    .locals 3

    iget v1, p0, Lc/bn;->c:I

    if-nez v1, :cond_0

    sget-object v0, Lc/bn;->a:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [B

    iget-object v2, p0, Lc/bs;->g:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lb/b;->a(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lc/bn;->c:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lc/bs;->i()V

    goto :goto_0

    .line 1
    :cond_1
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
    .locals 2

    iget v0, p0, Lc/bn;->c:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc/bs;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    iget v1, p0, Lc/bn;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc/bn;->c:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc/bs;->i()V

    goto :goto_0

    .line 1
    :cond_2
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
    .locals 2

    iget v0, p0, Lc/bn;->c:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lc/bs;->g:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    iget v1, p0, Lc/bn;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lc/bn;->c:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc/bs;->i()V

    goto :goto_0

    .line 6
    :cond_2
    const-string v0, "DEF length "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
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
