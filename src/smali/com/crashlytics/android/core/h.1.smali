.class final Lcom/crashlytics/android/core/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/h$a;
    }
.end annotation


# instance fields
.field private final DW:I

.field private FH:I

.field private final Hw:Ljava/io/OutputStream;

.field private final j6:[B


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/h;->Hw:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/crashlytics/android/core/h;->j6:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    array-length v0, p2

    iput v0, p0, Lcom/crashlytics/android/core/h;->DW:I

    return-void
.end method

.method public static DW(I)I
    .registers 2

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static DW(II)I
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->Hw(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static DW(J)I
    .registers 4

    invoke-static {p0, p1}, Lcom/crashlytics/android/core/h;->j6(J)I

    move-result v0

    return v0
.end method

.method public static FH(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static FH(II)I
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->Zo(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static Hw(I)I
    .registers 2

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->VH(I)I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v0

    return v0
.end method

.method public static VH(I)I
    .registers 3

    shr-int/lit8 v0, p0, 0x1f

    shl-int/lit8 v1, p0, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static Zo(I)I
    .registers 2

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v0

    return v0
.end method

.method public static j6(F)I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public static j6(I)I
    .registers 2

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->DW(I)I

    move-result v0

    return v0
.end method

.method public static j6(IF)I
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->j6(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j6(II)I
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j6(IJ)I
    .registers 6

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/h;->DW(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j6(ILcom/crashlytics/android/core/d;)I
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->j6(Lcom/crashlytics/android/core/d;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j6(IZ)I
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->j6(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j6(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static j6(Lcom/crashlytics/android/core/d;)I
    .registers 3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/d;->DW()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/d;->DW()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j6(Z)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;
    .registers 2

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;I)Lcom/crashlytics/android/core/h;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/io/OutputStream;I)Lcom/crashlytics/android/core/h;
    .registers 4

    new-instance v0, Lcom/crashlytics/android/core/h;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/h;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private j6()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/core/h;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/crashlytics/android/core/h;->j6:[B

    iget v2, p0, Lcom/crashlytics/android/core/h;->FH:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/crashlytics/android/core/h;->FH:I

    return-void

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/h$a;

    invoke-direct {v0}, Lcom/crashlytics/android/core/h$a;-><init>()V

    throw v0
.end method

.method public static v5(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public DW(F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->EQ(I)V

    return-void
.end method

.method public DW(IF)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->DW(F)V

    return-void
.end method

.method public DW(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/crashlytics/android/core/h;->Hw(J)V

    return-void
.end method

.method public DW(ILcom/crashlytics/android/core/d;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->DW(Lcom/crashlytics/android/core/d;)V

    return-void
.end method

.method public DW(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->DW(Z)V

    return-void
.end method

.method public DW(Lcom/crashlytics/android/core/d;)V
    .registers 3

    invoke-virtual {p1}, Lcom/crashlytics/android/core/d;->DW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->FH(Lcom/crashlytics/android/core/d;)V

    return-void
.end method

.method public DW(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->tp(I)V

    return-void
.end method

.method public EQ(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    return-void
.end method

.method public FH(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public FH(Lcom/crashlytics/android/core/d;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/crashlytics/android/core/d;->DW()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/core/h;->j6(Lcom/crashlytics/android/core/d;II)V

    return-void
.end method

.method public Hw(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->gn(I)V

    return-void
.end method

.method public Hw(J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/core/h;->FH(J)V

    return-void
.end method

.method public J0(I)V
    .registers 3

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->VH(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    return-void
.end method

.method public J8(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->we(I)V

    return-void
.end method

.method public VH(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->J8(I)V

    return-void
.end method

.method public Zo(II)V
    .registers 4

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/h;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->j6()V

    :cond_0
    return-void
.end method

.method public gn(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->u7(I)V

    return-void
.end method

.method public j6(B)V
    .registers 5

    iget v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    iget v1, p0, Lcom/crashlytics/android/core/h;->DW:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->j6()V

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->j6:[B

    iget v1, p0, Lcom/crashlytics/android/core/h;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/crashlytics/android/core/h;->FH:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public j6(Lcom/crashlytics/android/core/d;II)V
    .registers 13

    const/4 v8, 0x0

    iget v0, p0, Lcom/crashlytics/android/core/h;->DW:I

    iget v1, p0, Lcom/crashlytics/android/core/h;->FH:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/crashlytics/android/core/d;->j6([BIII)V

    iget v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/crashlytics/android/core/d;->j6([BIII)V

    add-int v1, p2, v0

    sub-int v0, p3, v0

    iget v2, p0, Lcom/crashlytics/android/core/h;->DW:I

    iput v2, p0, Lcom/crashlytics/android/core/h;->FH:I

    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->j6()V

    iget v2, p0, Lcom/crashlytics/android/core/h;->DW:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-virtual {p1, v2, v1, v8, v0}, Lcom/crashlytics/android/core/d;->j6([BIII)V

    iput v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/crashlytics/android/core/d;->j6()Ljava/io/InputStream;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :goto_1
    if-lez v0, :cond_0

    iget v1, p0, Lcom/crashlytics/android/core/h;->DW:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-virtual {v2, v3, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/crashlytics/android/core/h;->Hw:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-virtual {v1, v4, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/core/h;->j6([BII)V

    return-void
.end method

.method public j6([BII)V
    .registers 8

    iget v0, p0, Lcom/crashlytics/android/core/h;->DW:I

    iget v1, p0, Lcom/crashlytics/android/core/h;->FH:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    :goto_0
    return-void

    :cond_0
    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->j6:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    sub-int v0, p3, v0

    iget v2, p0, Lcom/crashlytics/android/core/h;->DW:I

    iput v2, p0, Lcom/crashlytics/android/core/h;->FH:I

    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->j6()V

    iget v2, p0, Lcom/crashlytics/android/core/h;->DW:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->j6:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/crashlytics/android/core/h;->FH:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/crashlytics/android/core/h;->Hw:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public tp(I)V
    .registers 3

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->j6(B)V

    return-void
.end method

.method public u7(I)V
    .registers 4

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->we(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/h;->FH(J)V

    goto :goto_0
.end method

.method public v5(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->J0(I)V

    return-void
.end method

.method public we(I)V
    .registers 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->tp(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->tp(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
