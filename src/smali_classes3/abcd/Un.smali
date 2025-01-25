.class public final Labcd/Un;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/ho;

.field private FH:Labcd/Pn;

.field private Hw:Labcd/Rn;

.field private VH:Labcd/Wn;

.field private Zo:Labcd/co;

.field private final j6:I

.field private v5:Labcd/io;


# direct methods
.method public constructor <init>(ILabcd/ho;Labcd/Pn;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1f

    if-eqz p3, :cond_17

    iput p1, p0, Labcd/Un;->j6:I

    iput-object p2, p0, Labcd/Un;->DW:Labcd/ho;

    iput-object p3, p0, Labcd/Un;->FH:Labcd/Pn;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Un;->Hw:Labcd/Rn;

    iput-object p1, p0, Labcd/Un;->v5:Labcd/io;

    iput-object p1, p0, Labcd/Un;->Zo:Labcd/co;

    iput-object p1, p0, Labcd/Un;->VH:Labcd/Wn;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedCatches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedInsns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tp()V
    .registers 3

    iget-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v0}, Labcd/ho;->j6()Labcd/Wn;

    move-result-object v0

    iput-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    iget v1, p0, Labcd/Un;->j6:I

    invoke-static {v0, v1}, Labcd/io;->j6(Labcd/Wn;I)Labcd/io;

    move-result-object v0

    iput-object v0, p0, Labcd/Un;->v5:Labcd/io;

    iget-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    invoke-static {v0}, Labcd/co;->j6(Labcd/Wn;)Labcd/co;

    move-result-object v0

    iput-object v0, p0, Labcd/Un;->Zo:Labcd/co;

    iget-object v0, p0, Labcd/Un;->FH:Labcd/Pn;

    invoke-interface {v0}, Labcd/Pn;->build()Labcd/Rn;

    move-result-object v0

    iput-object v0, p0, Labcd/Un;->Hw:Labcd/Rn;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    iput-object v0, p0, Labcd/Un;->FH:Labcd/Pn;

    return-void
.end method


# virtual methods
.method public DW()Labcd/Rn;
    .registers 2

    invoke-direct {p0}, Labcd/Un;->tp()V

    iget-object v0, p0, Labcd/Un;->Hw:Labcd/Rn;

    return-object v0
.end method

.method public FH()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v0}, Labcd/ho;->DW()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Labcd/Wn;
    .registers 2

    invoke-direct {p0}, Labcd/Un;->tp()V

    iget-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    return-object v0
.end method

.method public VH()Z
    .registers 2

    iget-object v0, p0, Labcd/Un;->FH:Labcd/Pn;

    invoke-interface {v0}, Labcd/Pn;->DW()Z

    move-result v0

    return v0
.end method

.method public Zo()Labcd/io;
    .registers 2

    invoke-direct {p0}, Labcd/Un;->tp()V

    iget-object v0, p0, Labcd/Un;->v5:Labcd/io;

    return-object v0
.end method

.method public gn()Z
    .registers 2

    iget-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v0}, Labcd/ho;->FH()Z

    move-result v0

    return v0
.end method

.method public j6()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Labcd/Qs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Un;->FH:Labcd/Pn;

    invoke-interface {v0}, Labcd/Pn;->j6()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Un$a;)V
    .registers 3

    iget-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v0, p1}, Labcd/ho;->j6(Labcd/Un$a;)V

    return-void
.end method

.method public u7()Z
    .registers 3

    iget v0, p0, Labcd/Un;->j6:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v0}, Labcd/ho;->Hw()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public v5()Labcd/co;
    .registers 2

    invoke-direct {p0}, Labcd/Un;->tp()V

    iget-object v0, p0, Labcd/Un;->Zo:Labcd/co;

    return-object v0
.end method
