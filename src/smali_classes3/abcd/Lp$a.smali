.class Labcd/Lp$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private final j6:Ljava/lang/String;

.field private v5:I


# direct methods
.method public constructor <init>(Labcd/vp;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/vp;->VH()I

    move-result p1

    iput-object p2, p0, Labcd/Lp$a;->j6:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Labcd/Lp$a;->DW:I

    iput p1, p0, Labcd/Lp$a;->FH:I

    iput p1, p0, Labcd/Lp$a;->Hw:I

    iput p1, p0, Labcd/Lp$a;->v5:I

    return-void
.end method

.method static synthetic j6(Labcd/Lp$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/Lp$a;->j6:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Lp$a;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/Lp$a;->DW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/Lp$a;->DW:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    const-string v2, ""

    goto :goto_2d

    :cond_2b
    const-string v2, "s"

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/Lp$a;->FH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes total\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Lp$a;->v5:I

    iget v2, p0, Labcd/Lp$a;->Hw:I

    const-string v3, "    "

    if-ne v1, v2, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/Lp$a;->v5:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes/item\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_92

    :cond_65
    iget v1, p0, Labcd/Lp$a;->FH:I

    iget v2, p0, Labcd/Lp$a;->DW:I

    div-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/Lp$a;->v5:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/Lp$a;->Hw:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes/item; average "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Lt;)V
    .registers 3

    invoke-virtual {p0}, Labcd/Lp$a;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Lt;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Labcd/vp;)V
    .registers 3

    invoke-virtual {p1}, Labcd/vp;->VH()I

    move-result p1

    iget v0, p0, Labcd/Lp$a;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Lp$a;->DW:I

    iget v0, p0, Labcd/Lp$a;->FH:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/Lp$a;->FH:I

    iget v0, p0, Labcd/Lp$a;->Hw:I

    if-le p1, v0, :cond_15

    iput p1, p0, Labcd/Lp$a;->Hw:I

    :cond_15
    iget v0, p0, Labcd/Lp$a;->v5:I

    if-ge p1, v0, :cond_1b

    iput p1, p0, Labcd/Lp$a;->v5:I

    :cond_1b
    return-void
.end method
