.class public Labcd/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/lang/Object;


# instance fields
.field private DW:Z

.field private FH:[I

.field private Hw:[Ljava/lang/Object;

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/y;->j6:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Labcd/y;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/y;->DW:Z

    if-nez p1, :cond_11

    sget-object p1, Labcd/n;->j6:[I

    iput-object p1, p0, Labcd/y;->FH:[I

    sget-object p1, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object p1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    goto :goto_1d

    :cond_11
    invoke-static {p1}, Labcd/n;->DW(I)I

    move-result p1

    new-array v1, p1, [I

    iput-object v1, p0, Labcd/y;->FH:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    :goto_1d
    iput v0, p0, Labcd/y;->v5:I

    return-void
.end method

.method private FH()V
    .registers 9

    iget v0, p0, Labcd/y;->v5:I

    iget-object v1, p0, Labcd/y;->FH:[I

    iget-object v2, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v0, :cond_21

    aget-object v6, v2, v4

    sget-object v7, Labcd/y;->j6:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    aget v7, v1, v4

    aput v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_21
    iput-boolean v3, p0, Labcd/y;->DW:Z

    iput v5, p0, Labcd/y;->v5:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget-boolean v0, p0, Labcd/y;->DW:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Labcd/y;->FH()V

    :cond_7
    iget v0, p0, Labcd/y;->v5:I

    return v0
.end method

.method public DW(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/y;->j6(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public DW(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/y;->FH:[I

    iget v1, p0, Labcd/y;->v5:I

    invoke-static {v0, v1, p1}, Labcd/n;->j6([III)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_7e

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Labcd/y;->v5:I

    if-ge v0, v1, :cond_24

    iget-object v2, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Labcd/y;->j6:Ljava/lang/Object;

    if-ne v3, v4, :cond_24

    iget-object v1, p0, Labcd/y;->FH:[I

    aput p1, v1, v0

    aput-object p2, v2, v0

    return-void

    :cond_24
    iget-boolean v2, p0, Labcd/y;->DW:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Labcd/y;->FH:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3a

    invoke-direct {p0}, Labcd/y;->FH()V

    iget-object v0, p0, Labcd/y;->FH:[I

    iget v1, p0, Labcd/y;->v5:I

    invoke-static {v0, v1, p1}, Labcd/n;->j6([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3a
    iget v1, p0, Labcd/y;->v5:I

    iget-object v2, p0, Labcd/y;->FH:[I

    array-length v2, v2

    if-lt v1, v2, :cond_5c

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Labcd/n;->DW(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/y;->FH:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/y;->FH:[I

    iput-object v1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    :cond_5c
    iget v1, p0, Labcd/y;->v5:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_70

    iget-object v2, p0, Labcd/y;->FH:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    iget v2, p0, Labcd/y;->v5:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_70
    iget-object v1, p0, Labcd/y;->FH:[I

    aput p1, v1, v0

    iget-object p1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Labcd/y;->v5:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/y;->v5:I

    :goto_7e
    return-void
.end method

.method public FH(I)I
    .registers 4

    iget-boolean v0, p0, Labcd/y;->DW:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Labcd/y;->FH()V

    :cond_7
    iget-object v0, p0, Labcd/y;->FH:[I

    iget v1, p0, Labcd/y;->v5:I

    invoke-static {v0, v1, p1}, Labcd/n;->j6([III)I

    move-result p1

    return p1
.end method

.method public Hw(I)I
    .registers 3

    iget-boolean v0, p0, Labcd/y;->DW:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Labcd/y;->FH()V

    :cond_7
    iget-object v0, p0, Labcd/y;->FH:[I

    aget p1, v0, p1

    return p1
.end method

.method public Zo(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/y;->DW:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Labcd/y;->FH()V

    :cond_7
    iget-object v0, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public clone()Labcd/y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly<",
            "TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/y;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_1d

    :try_start_6
    iget-object v1, p0, Labcd/y;->FH:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Labcd/y;->FH:[I

    iget-object v1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Labcd/y;->Hw:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    goto :goto_1f

    :catch_1d
    move-exception v0

    const/4 v0, 0x0

    :goto_1f
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/y;->clone()Labcd/y;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Labcd/y;->FH:[I

    iget v1, p0, Labcd/y;->v5:I

    invoke-static {v0, v1, p1}, Labcd/n;->j6([III)I

    move-result p1

    if-ltz p1, :cond_14

    iget-object v0, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    aget-object p1, v0, p1

    sget-object v0, Labcd/y;->j6:Ljava/lang/Object;

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    return-object p1

    :cond_14
    :goto_14
    return-object p2
.end method

.method public j6()V
    .registers 6

    iget v0, p0, Labcd/y;->v5:I

    iget-object v1, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    iput v2, p0, Labcd/y;->v5:I

    iput-boolean v2, p0, Labcd/y;->DW:Z

    return-void
.end method

.method public j6(I)V
    .registers 5

    iget-object v0, p0, Labcd/y;->FH:[I

    iget v1, p0, Labcd/y;->v5:I

    invoke-static {v0, v1, p1}, Labcd/n;->j6([III)I

    move-result p1

    if-ltz p1, :cond_17

    iget-object v0, p0, Labcd/y;->Hw:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Labcd/y;->j6:Ljava/lang/Object;

    if-eq v1, v2, :cond_17

    aput-object v2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/y;->DW:Z

    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/y;->DW()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/y;->v5:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Labcd/y;->v5:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Labcd/y;->Hw(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_39
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5(I)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/y;->j6(I)V

    return-void
.end method
