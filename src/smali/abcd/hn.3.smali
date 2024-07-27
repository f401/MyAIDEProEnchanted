.class final Labcd/hn;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Labcd/gn;

.field private VH:Labcd/xn;

.field private Zo:I

.field private final j6:Labcd/jn;

.field private final v5:Labcd/yn;


# direct methods
.method public constructor <init>(Labcd/jn;IILabcd/gn;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/Pt;->Zo(I)I

    move-result v0

    iput-object p1, p0, Labcd/hn;->j6:Labcd/jn;

    iput p2, p0, Labcd/hn;->DW:I

    iput p3, p0, Labcd/hn;->FH:I

    iput-object p4, p0, Labcd/hn;->Hw:Labcd/gn;

    new-instance v1, Labcd/yn;

    invoke-direct {v1, v0}, Labcd/yn;-><init>(I)V

    iput-object v1, p0, Labcd/hn;->v5:Labcd/yn;

    const/4 v0, -0x1

    iput v0, p0, Labcd/hn;->Zo:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH()V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/hn;->v5:Labcd/yn;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v3

    iget v1, p0, Labcd/hn;->FH:I

    iget-object v2, p0, Labcd/hn;->j6:Labcd/jn;

    invoke-virtual {v2}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v4

    iget-object v2, p0, Labcd/hn;->VH:Labcd/xn;

    if-eqz v2, :cond_0

    iget v5, p0, Labcd/hn;->FH:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attributes_count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v5, v7, v6}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    :try_start_0
    iget-object v0, p0, Labcd/hn;->VH:Labcd/xn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/hn;->VH:Labcd/xn;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nattributes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v2, v6, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/hn;->VH:Labcd/xn;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Labcd/xn;->j6(I)V

    :cond_1
    iget-object v0, p0, Labcd/hn;->Hw:Labcd/gn;

    iget-object v5, p0, Labcd/hn;->j6:Labcd/jn;

    iget v6, p0, Labcd/hn;->DW:I

    iget-object v7, p0, Labcd/hn;->VH:Labcd/xn;

    invoke-virtual {v0, v5, v6, v2, v7}, Labcd/gn;->j6(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    invoke-interface {v0}, Labcd/on;->Hw()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Labcd/hn;->v5:Labcd/yn;

    invoke-virtual {v5, v1, v0}, Labcd/yn;->j6(ILabcd/on;)V

    iget-object v0, p0, Labcd/hn;->VH:Labcd/xn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/hn;->VH:Labcd/xn;

    const/4 v5, -0x1

    invoke-interface {v0, v5}, Labcd/xn;->j6(I)V

    iget-object v0, p0, Labcd/hn;->VH:Labcd/xn;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end attributes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v2, v6, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V
    :try_end_0
    .catch Labcd/wn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Labcd/wn;

    invoke-direct {v2, v0}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while parsing attributes["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while parsing attributes["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v2, p0, Labcd/hn;->Zo:I

    return-void
.end method

.method private Hw()V
    .registers 2

    iget v0, p0, Labcd/hn;->Zo:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Labcd/hn;->FH()V

    :cond_0
    return-void
.end method


# virtual methods
.method public DW()Labcd/yn;
    .registers 2

    invoke-direct {p0}, Labcd/hn;->Hw()V

    iget-object v0, p0, Labcd/hn;->v5:Labcd/yn;

    return-object v0
.end method

.method public j6()I
    .registers 2

    invoke-direct {p0}, Labcd/hn;->Hw()V

    iget v0, p0, Labcd/hn;->Zo:I

    return v0
.end method

.method public j6(Labcd/xn;)V
    .registers 2

    iput-object p1, p0, Labcd/hn;->VH:Labcd/xn;

    return-void
.end method
