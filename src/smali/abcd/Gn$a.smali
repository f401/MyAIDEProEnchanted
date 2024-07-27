.class public Labcd/Gn$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/Gn$a;",
        ">;"
    }
.end annotation


# instance fields
.field public DW:I

.field public FH:I

.field public Hw:I

.field public final j6:S


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Labcd/Gn$a;->DW:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/Gn$a;->FH:I

    iput v1, p0, Labcd/Gn$a;->Hw:I

    int-to-short v0, p1

    iput-short v0, p0, Labcd/Gn$a;->j6:S

    return-void
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    iget v0, p0, Labcd/Gn$a;->DW:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/Gn$a;

    invoke-virtual {p0, p1}, Labcd/Gn$a;->j6(Labcd/Gn$a;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Gn$a;)I
    .registers 4

    iget v0, p0, Labcd/Gn$a;->FH:I

    iget v1, p1, Labcd/Gn$a;->FH:I

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Section[type=%#x,off=%#x,size=%#x]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-short v3, p0, Labcd/Gn$a;->j6:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Labcd/Gn$a;->FH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Labcd/Gn$a;->DW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
