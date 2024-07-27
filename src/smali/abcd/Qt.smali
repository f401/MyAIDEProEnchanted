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
            "Ljava/util/ArrayList",
            "<",
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
    .registers 4

    new-array v0, p1, [B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Labcd/Qt;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/Qt;-><init>([BZ)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Labcd/Qt;->j6:Z

    iput-object p1, p0, Labcd/Qt;->DW:[B

    iput v1, p0, Labcd/Qt;->FH:I

    iput-boolean v1, p0, Labcd/Qt;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    iput v1, p0, Labcd/Qt;->Zo:I

    iput v1, p0, Labcd/Qt;->VH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Zo(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/Qt;->DW:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    add-int/lit16 v1, v1, 0x3e8

    new-array v1, v1, [B

    iget v2, p0, Labcd/Qt;->FH:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Qt;->DW:[B

    :cond_0
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
    .registers 4

    iget-boolean v0, p0, Labcd/Qt;->j6:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_0
    iget v0, p0, Labcd/Qt;->FH:I

    invoke-static {p0, p1}, Labcd/eu;->DW(Labcd/Tt;I)V

    iget v1, p0, Labcd/Qt;->FH:I

    sub-int v0, v1, v0

    return v0
.end method

.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Qt;->Hw:Z

    return v0
.end method

.method public FH()V
    .registers 3

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    iget v1, p0, Labcd/Qt;->FH:I

    invoke-virtual {v0, v1}, Labcd/Qt$a;->DW(I)V

    goto :goto_0
.end method

.method public FH(I)V
    .registers 4

    iget v0, p0, Labcd/Qt;->FH:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; actual value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Qt;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/Vt;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/Vt;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Hw(I)V
    .registers 4

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_2

    iget v1, p0, Labcd/Qt;->FH:I

    add-int/2addr v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iget-boolean v1, p0, Labcd/Qt;->j6:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_0
    iput v0, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v1, p0, Labcd/Qt;->DW:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw()Z
    .registers 2

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    invoke-virtual {v0}, Labcd/Qt$a;->DW()I

    move-result v3

    iget v4, p0, Labcd/Qt;->FH:I

    if-le v3, v4, :cond_0

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Labcd/Qt$a;->j6()I

    move-result v1

    iget v2, p0, Labcd/Qt;->FH:I

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v2}, Labcd/Qt$a;->j6(I)V

    :cond_1
    return-void
.end method

.method public gn()[B
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Labcd/Qt;->FH:I

    new-array v1, v0, [B

    iget-object v2, p0, Labcd/Qt;->DW:[B

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

    sub-int v0, v2, v0

    return v0
.end method

.method public j6(I)V
    .registers 4

    if-ltz p1, :cond_2

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Labcd/Qt;->j6:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_0
    iput v0, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v1, p0, Labcd/Qt;->DW:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Labcd/Qt;->FH()V

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Labcd/Qt;->FH:I

    if-gt v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    new-instance v2, Labcd/Qt$a;

    add-int v3, p1, v0

    invoke-direct {v2, v0, v3, p2}, Labcd/Qt$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    invoke-virtual {v0}, Labcd/Qt$a;->j6()I

    move-result v0

    goto :goto_1
.end method

.method public j6(IZ)V
    .registers 6

    const/16 v1, 0xa

    const/4 v0, 0x6

    iget-object v2, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    iget v2, p0, Labcd/Qt;->FH:I

    if-nez v2, :cond_2

    const/16 v2, 0x28

    if-lt p1, v2, :cond_1

    add-int/lit8 v2, p1, -0x7

    div-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, -0x2

    if-ge v2, v0, :cond_0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    iput p1, p0, Labcd/Qt;->Zo:I

    iput v0, p0, Labcd/Qt;->VH:I

    iput-boolean p2, p0, Labcd/Qt;->Hw:Z

    return-void

    :cond_0
    if-le v2, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "annotationWidth < 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot enable annotations"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public j6(Labcd/Pt;)V
    .registers 5

    invoke-virtual {p1}, Labcd/Pt;->FH()I

    move-result v0

    iget v1, p0, Labcd/Qt;->FH:I

    add-int/2addr v0, v1

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_0
    iget-object v2, p0, Labcd/Qt;->DW:[B

    invoke-virtual {p1, v2, v1}, Labcd/Pt;->j6([BI)V

    iput v0, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0
.end method

.method public j6(Ljava/io/Writer;)V
    .registers 15

    const/4 v5, 0x6

    const/4 v7, 0x0

    invoke-virtual {p0}, Labcd/Qt;->j6()I

    move-result v0

    new-instance v9, Labcd/mu;

    iget v1, p0, Labcd/Qt;->Zo:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const-string v2, "|"

    invoke-direct {v9, p1, v1, v0, v2}, Labcd/mu;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    invoke-virtual {v9}, Labcd/mu;->DW()Ljava/io/Writer;

    move-result-object v10

    invoke-virtual {v9}, Labcd/mu;->FH()Ljava/io/Writer;

    move-result-object v11

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v1, v7

    move v6, v7

    :goto_0
    iget v0, p0, Labcd/Qt;->FH:I

    if-ge v1, v0, :cond_1

    if-ge v6, v12, :cond_1

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    invoke-virtual {v0}, Labcd/Qt$a;->DW()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v0, ""

    move v7, v2

    move-object v8, v0

    :goto_1
    iget-object v0, p0, Labcd/Qt;->DW:[B

    sub-int v2, v7, v1

    iget v4, p0, Labcd/Qt;->VH:I

    move v3, v1

    invoke-static/range {v0 .. v5}, Labcd/Yt;->j6([BIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Labcd/mu;->j6()V

    move v1, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Labcd/Qt$a;->j6()I

    move-result v3

    invoke-virtual {v0}, Labcd/Qt$a;->FH()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v6, 0x1

    move v1, v2

    move v6, v0

    move v7, v3

    move-object v8, v4

    goto :goto_1

    :cond_1
    iget v2, p0, Labcd/Qt;->FH:I

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Labcd/Qt;->DW:[B

    sub-int/2addr v2, v1

    iget v4, p0, Labcd/Qt;->VH:I

    move v3, v1

    invoke-static/range {v0 .. v5}, Labcd/Yt;->j6([BIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-ge v6, v12, :cond_3

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qt$a;

    invoke-virtual {v0}, Labcd/Qt$a;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Labcd/mu;->j6()V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Labcd/Qt;->FH()V

    iget-object v0, p0, Labcd/Qt;->v5:Ljava/util/ArrayList;

    new-instance v1, Labcd/Qt$a;

    iget v2, p0, Labcd/Qt;->FH:I

    invoke-direct {v1, v2, p1}, Labcd/Qt$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public j6([BII)V
    .registers 8

    iget v0, p0, Labcd/Qt;->FH:I

    add-int v1, v0, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    if-ltz v2, :cond_2

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    :cond_0
    iget-object v2, p0, Labcd/Qt;->DW:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes.length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/Qt;->FH:I

    return v0
.end method

.method public v5(I)I
    .registers 4

    iget-boolean v0, p0, Labcd/Qt;->j6:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Labcd/Qt;->Zo(I)V

    :cond_0
    iget v0, p0, Labcd/Qt;->FH:I

    invoke-static {p0, p1}, Labcd/eu;->j6(Labcd/Tt;I)V

    iget v1, p0, Labcd/Qt;->FH:I

    sub-int v0, v1, v0

    return v0
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/Qt;->j6([BII)V

    return-void
.end method

.method public writeByte(I)V
    .registers 6

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    :cond_0
    iget-object v2, p0, Labcd/Qt;->DW:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0
.end method

.method public writeInt(I)V
    .registers 7

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    :cond_0
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

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0
.end method

.method public writeLong(J)V
    .registers 10

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x8

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    :cond_0
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

    shr-long v4, p1, v2

    long-to-int v2, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte v5, v2

    aput-byte v5, v3, v4

    add-int/lit8 v4, v0, 0x5

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v0, 0x6

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0
.end method

.method public writeShort(I)V
    .registers 6

    iget v0, p0, Labcd/Qt;->FH:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Labcd/Qt;->j6:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Labcd/Qt;->Zo(I)V

    :cond_0
    iget-object v2, p0, Labcd/Qt;->DW:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iput v1, p0, Labcd/Qt;->FH:I

    return-void

    :cond_1
    iget-object v2, p0, Labcd/Qt;->DW:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Labcd/Qt;->u7()V

    const/4 v0, 0x0

    throw v0
.end method
