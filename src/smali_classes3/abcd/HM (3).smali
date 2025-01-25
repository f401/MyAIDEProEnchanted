.class Labcd/HM;
.super Labcd/MM;


# static fields
.field private static final FH:[B


# instance fields
.field private final Hw:I

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Labcd/HM;->FH:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/MM;-><init>(Ljava/io/InputStream;I)V

    if-ltz p2, :cond_10

    iput p2, p0, Labcd/HM;->Hw:I

    iput p2, p0, Labcd/HM;->v5:I

    if-nez p2, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Labcd/MM;->j6(Z)V

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative lengths not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method DW()[B
    .registers 4

    iget v0, p0, Labcd/HM;->v5:I

    if-nez v0, :cond_7

    sget-object v0, Labcd/HM;->FH:[B

    return-object v0

    :cond_7
    new-array v1, v0, [B

    iget-object v2, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-static {v2, v1}, Labcd/XP;->j6(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Labcd/HM;->v5:I

    if-nez v0, :cond_19

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/MM;->j6(Z)V

    return-object v1

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEF length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Labcd/HM;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/HM;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method j6()I
    .registers 2

    iget v0, p0, Labcd/HM;->v5:I

    return v0
.end method

.method public read()I
    .registers 4

    iget v0, p0, Labcd/HM;->v5:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    iget v1, p0, Labcd/HM;->v5:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Labcd/HM;->v5:I

    if-nez v1, :cond_19

    invoke-virtual {p0, v2}, Labcd/MM;->j6(Z)V

    :cond_19
    return v0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEF length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Labcd/HM;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/HM;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .registers 5

    iget v0, p0, Labcd/HM;->v5:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1e

    iget p2, p0, Labcd/HM;->v5:I

    sub-int/2addr p2, p1

    iput p2, p0, Labcd/HM;->v5:I

    if-nez p2, :cond_1d

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Labcd/MM;->j6(Z)V

    :cond_1d
    return p1

    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEF length "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Labcd/HM;->Hw:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " object truncated by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Labcd/HM;->v5:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/EOFException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
