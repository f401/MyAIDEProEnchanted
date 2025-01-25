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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p4, :cond_22

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/Pt;->Zo(I)I

    move-result v0

    iput-object p1, p0, Labcd/hn;->j6:Labcd/jn;

    iput p2, p0, Labcd/hn;->DW:I

    iput p3, p0, Labcd/hn;->FH:I

    iput-object p4, p0, Labcd/hn;->Hw:Labcd/gn;

    new-instance p1, Labcd/yn;

    invoke-direct {p1, v0}, Labcd/yn;-><init>(I)V

    iput-object p1, p0, Labcd/hn;->v5:Labcd/yn;

    const/4 p1, -0x1

    iput p1, p0, Labcd/hn;->Zo:I

    return-void

    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributeFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH()V
    .registers 12

    const-string v0, "]"

    const-string v1, "...while parsing attributes["

    iget-object v2, p0, Labcd/hn;->v5:Labcd/yn;

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v2

    iget v3, p0, Labcd/hn;->FH:I

    iget-object v4, p0, Labcd/hn;->j6:Labcd/jn;

    invoke-virtual {v4}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v4

    iget-object v5, p0, Labcd/hn;->VH:Labcd/xn;

    const/4 v6, 0x2

    if-eqz v5, :cond_31

    iget v7, p0, Labcd/hn;->FH:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attributes_count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v4, v7, v6, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_31
    add-int/2addr v3, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v2, :cond_c8

    :try_start_36
    iget-object v7, p0, Labcd/hn;->VH:Labcd/xn;

    if-eqz v7, :cond_59

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nattributes["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v3, v5, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v7, p0, Labcd/hn;->VH:Labcd/xn;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Labcd/xn;->j6(I)V

    :cond_59
    iget-object v7, p0, Labcd/hn;->Hw:Labcd/gn;

    iget-object v8, p0, Labcd/hn;->j6:Labcd/jn;

    iget v9, p0, Labcd/hn;->DW:I

    iget-object v10, p0, Labcd/hn;->VH:Labcd/xn;

    invoke-virtual {v7, v8, v9, v3, v10}, Labcd/gn;->j6(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v7

    invoke-interface {v7}, Labcd/on;->Hw()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Labcd/hn;->v5:Labcd/yn;

    invoke-virtual {v8, v6, v7}, Labcd/yn;->j6(ILabcd/on;)V

    iget-object v7, p0, Labcd/hn;->VH:Labcd/xn;

    if-eqz v7, :cond_92

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Labcd/xn;->j6(I)V

    iget-object v7, p0, Labcd/hn;->VH:Labcd/xn;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end attributes["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v3, v5, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V
    :try_end_92
    .catch Labcd/wn; {:try_start_36 .. :try_end_92} :catch_b1
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_92} :catch_95

    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :catch_95
    move-exception v2

    new-instance v3, Labcd/wn;

    invoke-direct {v3, v2}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v3

    :catch_b1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v2

    :cond_c8
    iput v3, p0, Labcd/hn;->Zo:I

    return-void
.end method

.method private Hw()V
    .registers 2

    iget v0, p0, Labcd/hn;->Zo:I

    if-gez v0, :cond_7

    invoke-direct {p0}, Labcd/hn;->FH()V

    :cond_7
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
