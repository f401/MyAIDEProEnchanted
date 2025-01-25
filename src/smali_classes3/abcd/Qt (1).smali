.class public final Labcd/Qt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Lt;
.implements Labcd/Tt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Qt$a;
    }
.end annotation


# instance fields
.field private DW:[B

.field private FH:I

.field private Hw:Z

.field private VH:I

.field private Zo:I

.field private final j6:Z

.field private v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Qt$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Labcd/Qt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-array p1, p1, [B

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Qt;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/Qt;-><init>([BZ)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    iput-boolean p2, p0, Labcd/Qt;->j6:Z

    iput-object p1, p0, Labcd/Qt;->DW:[B

    const/4 p1, 0x0

    iput p1, p0, Labcd/Qt;->FH:I

    iput-boolean p1, p0, Labcd/Qt;->Hw:Z

    const/4 p2, 0x0

    iput-object p2, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    iput p1, p0, Labcd/Qt;->Zo:I

    iput p1, p0, Labcd/Qt;->VH:I

    return-void

    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Zo(I)V
    .registers 5

    iget-object v0, p0, Labcd/Qt;->DW:[B

    array-length v1, v0

    if-ge v1, p1, :cond_13

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x3e8

    new-array p1, p1, [B

    iget v1, p0, Labcd/Qt;->FH:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Labcd/Qt;->DW:[B

    :cond_13
    return-void
.end method

.method private static u7()V
    .registers 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(I)I
    .registers 3

    iget-boolean v0, p0, Labcd/Qt;->j6:Z

    if-eqz v0, :cond_b

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_b
    iget v0, p0, Labcd/Qt;->FH:I

    invoke-static {p0, p1}, Labcd/eu;->DW(Labcd/Tt;I)V

    iget p1, p0, Labcd/Qt;->FH:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Qt;->Hw:Z

    return v0
.end method

.method public FH()V
    .registers 3

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    iget v1, p0, Labcd/Qt;->FH:I

    invoke-virtual {v0, v1}, Labcd/Qt$a;->DW(I)V

    :cond_1a
    return-void
.end method

.method public FH(I)V
    .registers 4

    iget v0, p0, Labcd/Qt;->FH:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Labcd/Qt;->FH:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/Vt;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/Vt;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw(I)V
    .registers 3

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_22

    and-int/2addr p1, v0

    if-nez p1, :cond_22

    iget p1, p0, Labcd/Qt;->FH:I

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iget-boolean v0, p0, Labcd/Qt;->j6:Z

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Labcd/Qt;->Zo(I)V

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Labcd/Qt;->DW:[B

    array-length v0, v0

    if-gt p1, v0, :cond_1d

    :goto_1a
    iput p1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1d
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw()Z
    .registers 2

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public VH()[B
    .registers 2

    iget-object v0, p0, Labcd/Qt;->DW:[B

    return-object v0
.end method

.method public Zo()V
    .registers 6

    invoke-virtual {p0}, Labcd/Qt;->FH()V

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    if-lez v0, :cond_32

    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Qt$a;

    invoke-virtual {v1}, Labcd/Qt$a;->DW()I

    move-result v3

    iget v4, p0, Labcd/Qt;->FH:I

    if-le v3, v4, :cond_27

    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_27
    invoke-virtual {v1}, Labcd/Qt$a;->j6()I

    move-result v0

    iget v2, p0, Labcd/Qt;->FH:I

    if-le v0, v2, :cond_32

    invoke-virtual {v1, v2}, Labcd/Qt$a;->j6(I)V

    :cond_32
    return-void
.end method

.method public gn()[B
    .registers 5

    iget v0, p0, Labcd/Qt;->FH:I

    new-array v1, v0, [B

    iget-object v2, p0, Labcd/Qt;->DW:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public j6()I
    .registers 4

    iget v0, p0, Labcd/Qt;->VH:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Labcd/Qt;->Zo:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public j6(I)V
    .registers 3

    if-ltz p1, :cond_1a

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/2addr v0, p1

    iget-boolean p1, p0, Labcd/Qt;->j6:Z

    if-eqz p1, :cond_d

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    goto :goto_12

    :cond_d
    iget-object p1, p0, Labcd/Qt;->DW:[B

    array-length p1, p1

    if-gt v0, p1, :cond_15

    :goto_12
    iput v0, p0, Labcd/Qt;->FH:I

    return-void

    :cond_15
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Labcd/Qt;->FH()V

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_20

    :cond_12
    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    invoke-virtual {v0}, Labcd/Qt$a;->j6()I

    move-result v0

    :goto_20
    iget v1, p0, Labcd/Qt;->FH:I

    if-gt v0, v1, :cond_25

    move v0, v1

    :cond_25
    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    new-instance v2, Labcd/Qt$a;

    add-int/2addr p1, v0

    invoke-direct {v2, v0, p1, p2}, Labcd/Qt$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(IZ)V
    .registers 6

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_37

    iget v0, p0, Labcd/Qt;->FH:I

    if-nez v0, :cond_37

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2f

    add-int/lit8 v0, p1, -0x7

    div-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_19

    const/4 v0, 0x6

    goto :goto_1f

    :cond_19
    const/16 v1, 0xa

    if-le v0, v1, :cond_1f

    const/16 v0, 0xa

    :cond_1f
    :goto_1f
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    iput p1, p0, Labcd/Qt;->Zo:I

    iput v0, p0, Labcd/Qt;->VH:I

    iput-boolean p2, p0, Labcd/Qt;->Hw:Z

    return-void

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "annotationWidth < 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "cannot enable annotations"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Pt;)V
    .registers 5

    invoke-virtual {p1}, Labcd/Pt;->FH()I

    move-result v0

    iget v1, p0, Labcd/Qt;->FH:I

    add-int/2addr v0, v1

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_f

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    goto :goto_14

    :cond_f
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-gt v0, v2, :cond_1c

    :goto_14
    iget-object v2, p0, Labcd/Qt;->DW:[B

    invoke-virtual {p1, v2, v1}, Labcd/Pt;->j6([BI)V

    iput v0, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1c
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1
.end method

.method public j6(Ljava/io/Writer;)V
    .registers 14

    invoke-virtual {p0}, Labcd/Qt;->j6()I

    move-result v0

    new-instance v1, Labcd/mu;

    iget v2, p0, Labcd/Qt;->Zo:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const-string v3, "|"

    invoke-direct {v1, p1, v2, v0, v3}, Labcd/mu;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    invoke-virtual {v1}, Labcd/mu;->DW()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v1}, Labcd/mu;->FH()Ljava/io/Writer;

    move-result-object v0

    iget-object v2, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_20
    iget v4, p0, Labcd/Qt;->FH:I

    if-ge v7, v4, :cond_5c

    if-ge v3, v2, :cond_5c

    iget-object v4, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Qt$a;

    invoke-virtual {v4}, Labcd/Qt$a;->DW()I

    move-result v5

    if-ge v7, v5, :cond_39

    const-string v4, ""

    move v11, v5

    move v8, v7

    goto :goto_45

    :cond_39
    invoke-virtual {v4}, Labcd/Qt$a;->j6()I

    move-result v6

    invoke-virtual {v4}, Labcd/Qt$a;->FH()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    move v11, v6

    :goto_45
    iget-object v5, p0, Labcd/Qt;->DW:[B

    sub-int v7, v11, v8

    iget v9, p0, Labcd/Qt;->VH:I

    const/4 v10, 0x6

    move v6, v8

    invoke-static/range {v5 .. v10}, Labcd/Yt;->j6([BIIIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/mu;->j6()V

    move v7, v11

    goto :goto_20

    :cond_5c
    if-ge v7, v4, :cond_6e

    iget-object v5, p0, Labcd/Qt;->DW:[B

    sub-int v6, v4, v7

    iget v8, p0, Labcd/Qt;->VH:I

    const/4 v9, 0x6

    move-object v4, v5

    move v5, v7

    invoke-static/range {v4 .. v9}, Labcd/Yt;->j6([BIIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    if-ge v3, v2, :cond_82

    iget-object p1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Qt$a;

    invoke-virtual {p1}, Labcd/Qt$a;->FH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_82
    invoke-virtual {v1}, Labcd/mu;->j6()V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Labcd/Qt;->FH()V

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    new-instance v1, Labcd/Qt$a;

    iget v2, p0, Labcd/Qt;->FH:I

    invoke-direct {v1, v2, p1}, Labcd/Qt$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6([BII)V
    .registers 8

    iget v0, p0, Labcd/Qt;->FH:I

    add-int v1, v0, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    if-ltz v2, :cond_28

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_28

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_16

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    goto :goto_1b

    :cond_16
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-gt v1, v2, :cond_23

    :goto_1b
    iget-object v2, p0, Labcd/Qt;->DW:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_23
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1

    :cond_28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes.length "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "..!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/Qt;->FH:I

    return v0
.end method

.method public v5(I)I
    .registers 3

    iget-boolean v0, p0, Labcd/Qt;->j6:Z

    if-eqz v0, :cond_b

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_b
    iget v0, p0, Labcd/Qt;->FH:I

    invoke-static {p0, p1}, Labcd/eu;->j6(Labcd/Tt;I)V

    iget p1, p0, Labcd/Qt;->FH:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/Qt;->j6([BII)V

    return-void
.end method

.method public writeByte(I)V
    .registers 5

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    goto :goto_11

    :cond_c
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-gt v1, v2, :cond_19

    :goto_11
    iget-object v2, p0, Labcd/Qt;->DW:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_19
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1
.end method

.method public writeInt(I)V
    .registers 7

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    goto :goto_11

    :cond_c
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-gt v1, v2, :cond_2e

    :goto_11
    iget-object v2, p0, Labcd/Qt;->DW:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_2e
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1
.end method

.method public writeLong(J)V
    .registers 9

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x8

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    goto :goto_11

    :cond_c
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-gt v1, v2, :cond_4d

    :goto_11
    long-to-int v2, p1

    iget-object v3, p0, Labcd/Qt;->DW:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x20

    shr-long/2addr p1, v2

    long-to-int p2, p1

    add-int/lit8 p1, v0, 0x4

    int-to-byte v2, p2

    aput-byte v2, v3, p1

    add-int/lit8 p1, v0, 0x5

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    add-int/lit8 p1, v0, 0x6

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 p1, p2, 0x18

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_4d
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1
.end method

.method public writeShort(I)V
    .registers 6

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    goto :goto_11

    :cond_c
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-gt v1, v2, :cond_20

    :goto_11
    iget-object v2, p0, Labcd/Qt;->DW:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_20
    invoke-static {}, Labcd/Qt;->u7()V

    const/4 p1, 0x0

    throw p1
.end method
