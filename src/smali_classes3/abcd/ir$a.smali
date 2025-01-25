.class public Labcd/ir$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/ir$a;",
        ">;"
    }
.end annotation


# instance fields
.field public DW:I

.field public FH:I

.field public final j6:S


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/ir$a;->DW:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/ir$a;->FH:I

    int-to-short p1, p1

    iput-short p1, p0, Labcd/ir$a;->j6:S

    return-void
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    iget v0, p0, Labcd/ir$a;->DW:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/ir$a;

    invoke-virtual {p0, p1}, Labcd/ir$a;->j6(Labcd/ir$a;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/ir$a;)I
    .registers 3

    iget v0, p0, Labcd/ir$a;->FH:I

    iget p1, p1, Labcd/ir$a;->FH:I

    if-eq v0, p1, :cond_c

    if-ge v0, p1, :cond_a

    const/4 p1, -0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x1

    :goto_b
    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Labcd/ir$a;->j6:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Labcd/ir$a;->FH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Labcd/ir$a;->DW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Section[type=%#x,off=%#x,size=%#x]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
