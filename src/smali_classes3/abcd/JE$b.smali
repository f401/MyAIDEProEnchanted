.class public Labcd/JE$b;
.super Labcd/JE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/JE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final DW:[B

.field private FH:I

.field private Hw:I

.field private final j6:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Labcd/JE;-><init>()V

    iput p1, p0, Labcd/JE$b;->j6:I

    iput-object p2, p0, Labcd/JE$b;->DW:[B

    return-void
.end method

.method public constructor <init>(Labcd/FE;)V
    .registers 3

    invoke-virtual {p1}, Labcd/FE;->FH()I

    move-result v0

    invoke-virtual {p1}, Labcd/FE;->j6()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Labcd/JE$b;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Labcd/JE$b;->DW:[B

    array-length v0, v0

    iget v1, p0, Labcd/JE$b;->FH:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public j6()J
    .registers 3

    iget-object v0, p0, Labcd/JE$b;->DW:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 2

    iget p1, p0, Labcd/JE$b;->FH:I

    iput p1, p0, Labcd/JE$b;->Hw:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    iget v0, p0, Labcd/JE$b;->FH:I

    iget-object v1, p0, Labcd/JE$b;->DW:[B

    array-length v2, v1

    if-ne v0, v2, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Labcd/JE$b;->FH:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6

    iget v0, p0, Labcd/JE$b;->FH:I

    iget-object v1, p0, Labcd/JE$b;->DW:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 p1, -0x1

    return p1

    :cond_9
    invoke-virtual {p0}, Labcd/JE$b;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Labcd/JE$b;->DW:[B

    iget v1, p0, Labcd/JE$b;->FH:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/JE$b;->FH:I

    add-int/2addr p1, p3

    iput p1, p0, Labcd/JE$b;->FH:I

    return p3
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Labcd/JE$b;->Hw:I

    iput v0, p0, Labcd/JE$b;->FH:I

    return-void
.end method

.method public skip(J)J
    .registers 7

    invoke-virtual {p0}, Labcd/JE$b;->available()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iget p1, p0, Labcd/JE$b;->FH:I

    add-int/2addr p1, p2

    iput p1, p0, Labcd/JE$b;->FH:I

    int-to-long p1, p2

    return-wide p1
.end method
