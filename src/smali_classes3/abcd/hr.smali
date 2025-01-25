.class public final Labcd/hr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/hr$a;
    }
.end annotation


# instance fields
.field private DW:I

.field private final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/hr$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/ir;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/ir;

    invoke-direct {v0}, Labcd/ir;-><init>()V

    iput-object v0, p0, Labcd/hr;->j6:Labcd/ir;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    return-void
.end method

.method private Hw(Labcd/ir$a;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v1

    if-eq v1, p1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TOC section already added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    return-void
.end method

.method private VH()V
    .registers 3

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hr$a;

    invoke-virtual {v0}, Labcd/hr$a;->J8()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hr$a;

    invoke-virtual {v0}, Labcd/hr$a;->J0()Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_39

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not append section when size of last section is still unknown or not placed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_39
    return-void
.end method

.method private Zo()V
    .registers 4

    invoke-virtual {p0}, Labcd/hr;->DW()[B

    move-result-object v0

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Labcd/hr$a;->j6(Labcd/hr$a;I)I

    invoke-virtual {v1, v0}, Labcd/hr$a;->write([B)V

    invoke-virtual {p0}, Labcd/hr;->j6()I

    move-result v0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Labcd/hr$a;->j6(Labcd/hr$a;I)I

    invoke-virtual {v1, v0}, Labcd/hr$a;->writeInt(I)V

    return-void
.end method

.method private gn()V
    .registers 4

    iget-object v0, p0, Labcd/hr;->j6:Labcd/ir;

    iget v1, p0, Labcd/hr;->DW:I

    iget v2, v0, Labcd/ir;->yS:I

    sub-int v2, v1, v2

    iput v2, v0, Labcd/ir;->er:I

    iput v1, v0, Labcd/ir;->a8:I

    iget-object v1, v0, Labcd/ir;->j6:Labcd/ir$a;

    invoke-virtual {p0, v1}, Labcd/hr;->FH(Labcd/ir$a;)Labcd/hr$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ir;->j6(Labcd/hr$a;)V

    return-void
.end method

.method static synthetic j6(I)I
    .registers 1

    invoke-static {p0}, Labcd/hr;->v5(I)I

    move-result p0

    return p0
.end method

.method private u7()V
    .registers 5

    iget-object v0, p0, Labcd/hr;->j6:Labcd/ir;

    iget-object v0, v0, Labcd/ir;->gn:Labcd/ir$a;

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Labcd/hr;->j6(Labcd/ir$a;II)Labcd/hr$a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hr$a;

    invoke-static {v3}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    iget-object v2, p0, Labcd/hr;->j6:Labcd/ir;

    invoke-virtual {v2, v0, v1}, Labcd/ir;->j6(Labcd/hr$a;Ljava/util/List;)V

    return-void
.end method

.method private static v5(I)I
    .registers 1

    add-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, -0x4

    return p0
.end method


# virtual methods
.method public DW(Labcd/ir$a;)Labcd/hr$a;
    .registers 4

    invoke-direct {p0, p1}, Labcd/hr;->Hw(Labcd/ir$a;)V

    new-instance v0, Labcd/hr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;Labcd/gr;)V

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public DW(I)V
    .registers 6

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-virtual {v1}, Labcd/hr$a;->J8()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v1}, Labcd/hr$a;->gn()I

    move-result v2

    if-nez v2, :cond_2c

    if-nez p1, :cond_2c

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3f

    :cond_2c
    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v0

    iget v3, p0, Labcd/hr;->DW:I

    iput v3, v0, Labcd/ir$a;->FH:I

    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v0

    iput p1, v0, Labcd/ir$a;->DW:I

    iget p1, p0, Labcd/hr;->DW:I

    add-int/2addr p1, v2

    iput p1, p0, Labcd/hr;->DW:I

    :goto_3f
    return-void

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Last section already finished"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No sections present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW()[B
    .registers 6

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_47

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-static {v1}, Labcd/hr$a;->FH(Labcd/hr$a;)[B

    move-result-object v3

    invoke-static {v1}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v1

    const/16 v4, 0x20

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v1, 0x1

    :goto_1e
    iget-object v3, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    iget-object v3, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hr$a;

    invoke-static {v3}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v4

    if-lez v4, :cond_3f

    invoke-static {v3}, Labcd/hr$a;->FH(Labcd/hr$a;)[B

    move-result-object v4

    invoke-static {v3}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v3

    invoke-virtual {v0, v4, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_42
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4f

    :goto_4e
    throw v1

    :goto_4f
    goto :goto_4e
.end method

.method public FH(Labcd/ir$a;)Labcd/hr$a;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v2

    if-ne v2, p1, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TOC section not present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw p1

    :goto_24
    goto :goto_23
.end method

.method public FH()V
    .registers 1

    invoke-direct {p0}, Labcd/hr;->u7()V

    invoke-direct {p0}, Labcd/hr;->gn()V

    invoke-direct {p0}, Labcd/hr;->Zo()V

    return-void
.end method

.method public FH(I)V
    .registers 6

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_48

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-virtual {v1}, Labcd/hr$a;->J8()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v1}, Labcd/hr$a;->gn()I

    move-result v2

    if-nez v2, :cond_2c

    if-nez p1, :cond_2c

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3f

    :cond_2c
    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v0

    iget v3, p0, Labcd/hr;->DW:I

    iput v3, v0, Labcd/ir$a;->FH:I

    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v0

    iput p1, v0, Labcd/ir$a;->DW:I

    iget p1, p0, Labcd/hr;->DW:I

    add-int/2addr p1, v2

    iput p1, p0, Labcd/hr;->DW:I

    :goto_3f
    return-void

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Second-to-last section already finished"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Less than two sections present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/hr;->DW:I

    return v0
.end method

.method public Hw(I)I
    .registers 6

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-virtual {v1}, Labcd/hr$a;->J8()Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual {v1}, Labcd/hr$a;->J0()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v1}, Labcd/hr$a;->gn()I

    move-result v2

    if-nez v2, :cond_33

    if-nez p1, :cond_33

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_33
    iget v0, p0, Labcd/hr;->DW:I

    invoke-static {v1, v0}, Labcd/hr$a;->DW(Labcd/hr$a;I)I

    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v0

    iget v3, p0, Labcd/hr;->DW:I

    iput v3, v0, Labcd/ir$a;->FH:I

    invoke-static {v1}, Labcd/hr$a;->j6(Labcd/hr$a;)Labcd/ir$a;

    move-result-object v0

    iput p1, v0, Labcd/ir$a;->DW:I

    iget p1, p0, Labcd/hr;->DW:I

    add-int/2addr p1, v2

    iput p1, p0, Labcd/hr;->DW:I

    invoke-static {v1}, Labcd/hr$a;->Hw(Labcd/hr$a;)I

    move-result p1

    return p1

    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Last section already placed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Last section already finished"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No sections present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6()I
    .registers 6

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iget-object v1, p0, Labcd/hr;->FH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-static {v1}, Labcd/hr$a;->FH(Labcd/hr$a;)[B

    move-result-object v3

    invoke-static {v1}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v1

    const/16 v4, 0xc

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/zip/Adler32;->update([BII)V

    const/4 v1, 0x1

    :goto_1d
    iget-object v3, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    iget-object v3, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hr$a;

    invoke-static {v3}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v4

    if-lez v4, :cond_3e

    invoke-static {v3}, Labcd/hr$a;->FH(Labcd/hr$a;)[B

    move-result-object v4

    invoke-static {v3}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v3

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/zip/Adler32;->update([BII)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_41
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public j6(Labcd/ir$a;)Labcd/hr$a;
    .registers 5

    invoke-direct {p0}, Labcd/hr;->VH()V

    invoke-direct {p0, p1}, Labcd/hr;->Hw(Labcd/ir$a;)V

    new-instance v0, Labcd/hr$a;

    iget v1, p0, Labcd/hr;->DW:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;ILabcd/gr;)V

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public j6(Labcd/ir$a;II)Labcd/hr$a;
    .registers 10

    invoke-direct {p0}, Labcd/hr;->VH()V

    invoke-direct {p0, p1}, Labcd/hr;->Hw(Labcd/ir$a;)V

    invoke-static {p2}, Labcd/hr;->v5(I)I

    move-result p2

    iget v3, p0, Labcd/hr;->DW:I

    iput v3, p1, Labcd/ir$a;->FH:I

    iput p3, p1, Labcd/ir$a;->DW:I

    new-instance p3, Labcd/hr$a;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;IILabcd/gr;)V

    iget p1, p0, Labcd/hr;->DW:I

    add-int/2addr p1, p2

    iput p1, p0, Labcd/hr;->DW:I

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public j6(Labcd/ir$a;[BII)Labcd/hr$a;
    .registers 12

    invoke-direct {p0}, Labcd/hr;->VH()V

    invoke-direct {p0, p1}, Labcd/hr;->Hw(Labcd/ir$a;)V

    invoke-static {p3}, Labcd/hr;->v5(I)I

    move-result p3

    iget v3, p0, Labcd/hr;->DW:I

    iput v3, p1, Labcd/ir$a;->FH:I

    iput p4, p1, Labcd/ir$a;->DW:I

    new-instance p4, Labcd/hr$a;

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Labcd/hr$a;-><init>(Labcd/hr;Labcd/ir$a;II[BLabcd/gr;)V

    iget p1, p0, Labcd/hr;->DW:I

    add-int/2addr p1, p3

    iput p1, p0, Labcd/hr;->DW:I

    iget-object p1, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p4
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 6

    iget-object v0, p0, Labcd/hr;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hr$a;

    invoke-static {v1}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {v1}, Labcd/hr$a;->FH(Labcd/hr$a;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1}, Labcd/hr$a;->DW(Labcd/hr$a;)I

    move-result v1

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :cond_25
    return-void
.end method

.method public v5()Labcd/ir;
    .registers 2

    iget-object v0, p0, Labcd/hr;->j6:Labcd/ir;

    return-object v0
.end method
