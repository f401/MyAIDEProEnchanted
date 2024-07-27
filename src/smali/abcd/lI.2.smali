.class public Labcd/lI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/UserInfo;
.implements Lcom/jcraft/jsch/UIKeyboardInteractive;


# instance fields
.field private final DW:Labcd/kI;

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private final j6:Labcd/HJ;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Session;Labcd/kI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/lI;->j6(Lcom/jcraft/jsch/Session;)Labcd/HJ;

    move-result-object v0

    iput-object v0, p0, Labcd/lI;->j6:Labcd/HJ;

    iput-object p2, p0, Labcd/lI;->DW:Labcd/kI;

    return-void
.end method

.method private static j6(Lcom/jcraft/jsch/Session;)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0}, Labcd/HJ;-><init>()V

    const-string v1, "ssh"

    invoke-virtual {v0, v1}, Labcd/HJ;->Hw(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/HJ;->v5(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/HJ;->j6(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->v5()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/HJ;->j6(I)Labcd/HJ;

    move-result-object v0

    return-object v0
.end method

.method private v5(Ljava/lang/String;)Labcd/jI$d;
    .registers 4

    new-instance v0, Labcd/jI$d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Labcd/jI$d;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v1, p0, Labcd/lI;->j6:Labcd/HJ;

    const/4 v2, 0x1

    new-array v2, v2, [Labcd/jI;

    const/4 v3, 0x0

    new-instance v4, Labcd/jI$b;

    invoke-direct {v4, p1}, Labcd/jI$b;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    return-void
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Labcd/lI;->v5(Ljava/lang/String;)Labcd/jI$d;

    move-result-object v2

    iget-object v3, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v4, p0, Labcd/lI;->j6:Labcd/HJ;

    new-array v5, v0, [Labcd/jI;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Labcd/jI$d;->DW()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/lI;->Hw:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/lI;->Hw:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Labcd/jI$f;

    invoke-direct {v2, p1}, Labcd/jI$f;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v4, p0, Labcd/lI;->j6:Labcd/HJ;

    new-array v5, v0, [Labcd/jI;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Labcd/jI$f;->DW()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/lI;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/lI;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Labcd/jI$c;

    invoke-direct {v2, p1}, Labcd/jI$c;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v4, p0, Labcd/lI;->j6:Labcd/HJ;

    new-array v5, v0, [Labcd/jI;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Labcd/jI$a;->FH()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Labcd/lI;->FH:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/lI;->FH:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    array-length v0, p4

    new-array v2, v0, [Labcd/jI$d;

    move v0, v1

    :goto_0
    array-length v3, p4

    if-lt v0, v3, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Labcd/jI$b;

    invoke-direct {v3, p3}, Labcd/jI$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v4, p0, Labcd/lI;->j6:Labcd/HJ;

    invoke-virtual {v3, v4, v0}, Labcd/kI;->j6(Labcd/HJ;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Labcd/jI$d;->DW()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Labcd/jI$d;

    aget-object v4, p4, v0

    aget-boolean v5, p5, v0

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v5}, Labcd/jI$d;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
