.class public final Labcd/hr$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Tt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field final Zo:Labcd/hr;

.field private j6:Labcd/ir$a;

.field private v5:[B


# direct methods
.method private constructor <init>(Labcd/hr;Labcd/ir$a;)V
    .registers 3

    iput-object p1, p0, Labcd/hr$a;->Zo:Labcd/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/hr$a;->j6:Labcd/ir$a;

    const/4 p1, -0x1

    iput p1, p0, Labcd/hr$a;->DW:I

    const/4 p1, 0x0

    iput p1, p0, Labcd/hr$a;->FH:I

    const p1, 0x7fffffff

    iput p1, p0, Labcd/hr$a;->Hw:I

    return-void
.end method

.method private constructor <init>(Labcd/hr;Labcd/ir$a;I)V
    .registers 4

    iput-object p1, p0, Labcd/hr$a;->Zo:Labcd/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/hr$a;->j6:Labcd/ir$a;

    iput p3, p0, Labcd/hr$a;->DW:I

    const/4 p1, 0x0

    iput p1, p0, Labcd/hr$a;->FH:I

    const p1, 0x7fffffff

    iput p1, p0, Labcd/hr$a;->Hw:I

    return-void
.end method

.method private constructor <init>(Labcd/hr;Labcd/ir$a;II)V
    .registers 5

    iput-object p1, p0, Labcd/hr$a;->Zo:Labcd/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/hr$a;->j6:Labcd/ir$a;

    iput p3, p0, Labcd/hr$a;->DW:I

    const/4 p1, 0x0

    iput p1, p0, Labcd/hr$a;->FH:I

    iput p4, p0, Labcd/hr$a;->Hw:I

    return-void
.end method

.method synthetic constructor <init>(Labcd/hr;Labcd/ir$a;IILabcd/gr;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;II)V

    return-void
.end method

.method private constructor <init>(Labcd/hr;Labcd/ir$a;II[B)V
    .registers 6

    iput-object p1, p0, Labcd/hr$a;->Zo:Labcd/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/hr$a;->j6:Labcd/ir$a;

    iput-object p5, p0, Labcd/hr$a;->v5:[B

    iput p3, p0, Labcd/hr$a;->DW:I

    iput p4, p0, Labcd/hr$a;->FH:I

    iput p4, p0, Labcd/hr$a;->Hw:I

    return-void
.end method

.method synthetic constructor <init>(Labcd/hr;Labcd/ir$a;II[BLabcd/gr;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;II[B)V

    return-void
.end method

.method synthetic constructor <init>(Labcd/hr;Labcd/ir$a;ILabcd/gr;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;I)V

    return-void
.end method

.method synthetic constructor <init>(Labcd/hr;Labcd/ir$a;Labcd/gr;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;)V

    return-void
.end method

.method static synthetic DW(Labcd/hr$a;)I
    .registers 1

    iget p0, p0, Labcd/hr$a;->Hw:I

    return p0
.end method

.method static synthetic DW(Labcd/hr$a;I)I
    .registers 2

    iput p1, p0, Labcd/hr$a;->DW:I

    return p1
.end method

.method static synthetic FH(Labcd/hr$a;)[B
    .registers 1

    iget-object p0, p0, Labcd/hr$a;->v5:[B

    return-object p0
.end method

.method static synthetic Hw(Labcd/hr$a;)I
    .registers 1

    iget p0, p0, Labcd/hr$a;->DW:I

    return p0
.end method

.method static synthetic j6(Labcd/hr$a;I)I
    .registers 2

    iput p1, p0, Labcd/hr$a;->FH:I

    return p1
.end method

.method static synthetic j6(Labcd/hr$a;)Labcd/ir$a;
    .registers 1

    iget-object p0, p0, Labcd/hr$a;->j6:Labcd/ir$a;

    return-object p0
.end method

.method private tp(I)V
    .registers 5

    iget v0, p0, Labcd/hr$a;->Hw:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Labcd/hr$a;->v5:[B

    if-nez v0, :cond_11

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/hr$a;->v5:[B

    :cond_11
    iget v0, p0, Labcd/hr$a;->FH:I

    iget-object v1, p0, Labcd/hr$a;->v5:[B

    add-int/2addr v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_3b

    array-length v0, v1

    :goto_1a
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Labcd/hr$a;->FH:I

    add-int/2addr v1, p1

    if-le v1, v0, :cond_22

    goto :goto_1a

    :cond_22
    new-array p1, v0, [B

    iget-object v0, p0, Labcd/hr$a;->v5:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Labcd/hr$a;->v5:[B

    goto :goto_3b

    :cond_2e
    iget-object v1, p0, Labcd/hr$a;->v5:[B

    if-nez v1, :cond_36

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/hr$a;->v5:[B

    :cond_36
    iget v1, p0, Labcd/hr$a;->FH:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_3c

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Section limit "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/hr$a;->Hw:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exceeded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/Ut;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method


# virtual methods
.method public DW(I)V
    .registers 2

    invoke-static {p0, p1}, Labcd/eu;->DW(Labcd/Tt;I)V

    return-void
.end method

.method public EQ()I
    .registers 2

    iget v0, p0, Labcd/hr$a;->FH:I

    return v0
.end method

.method public J0()Z
    .registers 2

    iget v0, p0, Labcd/hr$a;->DW:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public J8()Z
    .registers 3

    iget v0, p0, Labcd/hr$a;->Hw:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public VH()V
    .registers 3

    iget v0, p0, Labcd/hr$a;->FH:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public VH(I)V
    .registers 2

    invoke-static {p0, p1}, Labcd/eu;->j6(Labcd/Tt;I)V

    return-void
.end method

.method public Zo()V
    .registers 4

    iget v0, p0, Labcd/hr$a;->FH:I

    invoke-static {v0}, Labcd/hr;->j6(I)I

    move-result v1

    iput v1, p0, Labcd/hr$a;->FH:I

    :goto_8
    iget v1, p0, Labcd/hr$a;->FH:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Labcd/hr$a;->v5:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public Zo(I)V
    .registers 3

    iget v0, p0, Labcd/hr$a;->FH:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/hr$a;->FH:I

    return-void
.end method

.method public gn()I
    .registers 3

    invoke-virtual {p0}, Labcd/hr$a;->Zo()V

    iget v0, p0, Labcd/hr$a;->FH:I

    iput v0, p0, Labcd/hr$a;->Hw:I

    iget-object v1, p0, Labcd/hr$a;->v5:[B

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Labcd/hr$a;->v5:[B

    :cond_10
    return v0
.end method

.method public gn(I)V
    .registers 2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Labcd/hr$a;->DW(I)V

    return-void
.end method

.method public j6(Labcd/fr;)V
    .registers 5

    invoke-virtual {p1}, Labcd/fr;->Hw()[S

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Labcd/hr$a;->writeInt(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_14

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Labcd/hr$a;->j6(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    invoke-virtual {p0}, Labcd/hr$a;->Zo()V

    return-void
.end method

.method public j6(S)V
    .registers 6

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Labcd/hr$a;->tp(I)V

    iget-object v1, p0, Labcd/hr$a;->v5:[B

    iget v2, p0, Labcd/hr$a;->FH:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    add-int/2addr v2, v0

    iput v2, p0, Labcd/hr$a;->FH:I

    return-void
.end method

.method public j6([S)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Labcd/hr$a;->j6(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public tp()I
    .registers 3

    iget v0, p0, Labcd/hr$a;->DW:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    new-instance v0, Labcd/Ut;

    const-string v1, "Can not get offset in not yet placed section"

    invoke-direct {v0, v1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u7()I
    .registers 3

    iget v0, p0, Labcd/hr$a;->DW:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v1, p0, Labcd/hr$a;->FH:I

    add-int/2addr v0, v1

    return v0

    :cond_9
    new-instance v0, Labcd/Ut;

    const-string v1, "Can not get offset in not yet placed section"

    invoke-direct {v0, v1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u7(I)V
    .registers 4

    int-to-short v0, p1

    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_b

    invoke-virtual {p0, v0}, Labcd/hr$a;->j6(S)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an unsigned short: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v5(I)V
    .registers 2

    iput p1, p0, Labcd/hr$a;->FH:I

    return-void
.end method

.method public we()I
    .registers 2

    iget v0, p0, Labcd/hr$a;->FH:I

    return v0
.end method

.method public write([B)V
    .registers 6

    array-length v0, p1

    invoke-direct {p0, v0}, Labcd/hr$a;->tp(I)V

    iget-object v0, p0, Labcd/hr$a;->v5:[B

    iget v1, p0, Labcd/hr$a;->FH:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/hr$a;->FH:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Labcd/hr$a;->FH:I

    return-void
.end method

.method public writeByte(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labcd/hr$a;->tp(I)V

    iget-object v0, p0, Labcd/hr$a;->v5:[B

    iget v1, p0, Labcd/hr$a;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/hr$a;->FH:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeInt(I)V
    .registers 7

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Labcd/hr$a;->tp(I)V

    iget-object v1, p0, Labcd/hr$a;->v5:[B

    iget v2, p0, Labcd/hr$a;->FH:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    add-int/2addr v2, v0

    iput v2, p0, Labcd/hr$a;->FH:I

    return-void
.end method
