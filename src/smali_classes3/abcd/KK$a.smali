.class public Labcd/KK$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/KK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Labcd/ME;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:I

.field private j6:[Labcd/ME;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Labcd/KK$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Labcd/ME;

    iput-object p1, p0, Labcd/KK$a;->j6:[Labcd/ME;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    iget v1, p0, Labcd/KK$a;->DW:I

    sget-object v2, Labcd/NE;->j6:Labcd/NE;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method public DW(I)V
    .registers 5

    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Labcd/KK$a;->DW:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/KK$a;->DW:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Labcd/KK$a;->DW:I

    return-void
.end method

.method public FH()Labcd/KK;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LKK<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/KK;

    iget-object v1, p0, Labcd/KK$a;->j6:[Labcd/ME;

    iget v2, p0, Labcd/KK$a;->DW:I

    invoke-direct {v0, v1, v2}, Labcd/KK;-><init>([Labcd/ME;I)V

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/KK$a;->DW:I

    return v0
.end method

.method public j6(I)Labcd/ME;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public j6(ILabcd/ME;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    aput-object p2, v0, p1

    return-void
.end method

.method public j6(Labcd/ME;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    array-length v1, v0

    iget v2, p0, Labcd/KK$a;->DW:I

    if-ne v1, v2, :cond_11

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [Labcd/ME;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/KK$a;->j6:[Labcd/ME;

    :cond_11
    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    iget v1, p0, Labcd/KK$a;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/KK$a;->DW:I

    aput-object p1, v0, v1

    return-void
.end method

.method public j6([Labcd/ME;II)V
    .registers 8

    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    array-length v0, v0

    iget v1, p0, Labcd/KK$a;->DW:I

    add-int v2, v1, p3

    if-ge v0, v2, :cond_1b

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Labcd/ME;

    iget-object v1, p0, Labcd/KK$a;->j6:[Labcd/ME;

    iget v2, p0, Labcd/KK$a;->DW:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    :cond_1b
    iget-object v0, p0, Labcd/KK$a;->j6:[Labcd/ME;

    iget v1, p0, Labcd/KK$a;->DW:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/KK$a;->DW:I

    add-int/2addr p1, p3

    iput p1, p0, Labcd/KK$a;->DW:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KK;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
