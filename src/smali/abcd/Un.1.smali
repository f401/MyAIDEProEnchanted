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
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput p1, p0, Labcd/Un;->j6:I

    iput-object p2, p0, Labcd/Un;->DW:Labcd/ho;

    iput-object p3, p0, Labcd/Un;->FH:Labcd/Pn;

    iput-object v0, p0, Labcd/Un;->Hw:Labcd/Rn;

    iput-object v0, p0, Labcd/Un;->v5:Labcd/io;

    iput-object v0, p0, Labcd/Un;->Zo:Labcd/co;

    iput-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedCatches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedInsns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tp()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v0}, Labcd/ho;->j6()Labcd/Wn;

    move-result-object v0

    iput-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

    iget-object v0, p0, Labcd/Un;->VH:Labcd/Wn;

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

    iput-object v2, p0, Labcd/Un;->DW:Labcd/ho;

    iput-object v2, p0, Labcd/Un;->FH:Labcd/Pn;

    goto :goto_0
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
            "Ljava/util/HashSet",
            "<",
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
            "Ljava/util/HashSet",
            "<",
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

    const/4 v0, 0x1

    iget v1, p0, Labcd/Un;->j6:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Labcd/Un;->DW:Labcd/ho;

    invoke-virtual {v1}, Labcd/ho;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v5()Labcd/co;
    .registers 2

    invoke-direct {p0}, Labcd/Un;->tp()V

    iget-object v0, p0, Labcd/Un;->Zo:Labcd/co;

    return-object v0
.end method
