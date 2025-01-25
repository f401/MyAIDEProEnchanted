.class public Labcd/nC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/CC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final FH:Labcd/CC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private Hw:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final j6:Labcd/DC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDC<",
            "-TS;>;"
        }
    .end annotation
.end field

.field private v5:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/DC;Labcd/CC;Labcd/CC;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDC<",
            "-TS;>;TS;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/nC;->j6:Labcd/DC;

    iput-object p2, p0, Labcd/nC;->DW:Labcd/CC;

    iput-object p3, p0, Labcd/nC;->FH:Labcd/CC;

    return-void
.end method

.method private j6(Labcd/CC;)Labcd/lC;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "LlC<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/CC;->j6()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-lt v2, v0, :cond_f

    new-instance v0, Labcd/lC;

    invoke-direct {v0, p1, v1}, Labcd/lC;-><init>(Labcd/CC;[I)V

    return-object v0

    :cond_f
    iget-object v3, p0, Labcd/nC;->j6:Labcd/DC;

    invoke-virtual {v3, p1, v2}, Labcd/DC;->j6(Labcd/CC;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method


# virtual methods
.method public DW()Labcd/lC;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LlC<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/nC;->v5:Labcd/lC;

    if-nez v0, :cond_c

    iget-object v0, p0, Labcd/nC;->FH:Labcd/CC;

    invoke-direct {p0, v0}, Labcd/nC;->j6(Labcd/CC;)Labcd/lC;

    move-result-object v0

    iput-object v0, p0, Labcd/nC;->v5:Labcd/lC;

    :cond_c
    iget-object v0, p0, Labcd/nC;->v5:Labcd/lC;

    return-object v0
.end method

.method public FH()Labcd/mC;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LmC<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Labcd/mC;

    iget-object v1, p0, Labcd/nC;->j6:Labcd/DC;

    invoke-direct {v0, v1}, Labcd/mC;-><init>(Labcd/DC;)V

    return-object v0
.end method

.method public j6()Labcd/lC;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LlC<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/nC;->Hw:Labcd/lC;

    if-nez v0, :cond_c

    iget-object v0, p0, Labcd/nC;->DW:Labcd/CC;

    invoke-direct {p0, v0}, Labcd/nC;->j6(Labcd/CC;)Labcd/lC;

    move-result-object v0

    iput-object v0, p0, Labcd/nC;->Hw:Labcd/lC;

    :cond_c
    iget-object v0, p0, Labcd/nC;->Hw:Labcd/lC;

    return-object v0
.end method
