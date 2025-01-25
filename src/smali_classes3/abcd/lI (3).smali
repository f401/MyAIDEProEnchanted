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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/lI;->j6(Lcom/jcraft/jsch/Session;)Labcd/HJ;

    move-result-object p1

    iput-object p1, p0, Labcd/lI;->j6:Labcd/HJ;

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

    move-result p0

    invoke-virtual {v0, p0}, Labcd/HJ;->j6(I)Labcd/HJ;

    move-result-object p0

    return-object p0
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
    .registers 6

    iget-object v0, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v1, p0, Labcd/lI;->j6:Labcd/HJ;

    const/4 v2, 0x1

    new-array v2, v2, [Labcd/jI;

    new-instance v3, Labcd/jI$b;

    invoke-direct {v3, p1}, Labcd/jI$b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    invoke-virtual {v0, v1, v2}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    return-void
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 7

    invoke-direct {p0, p1}, Labcd/lI;->v5(Ljava/lang/String;)Labcd/jI$d;

    move-result-object p1

    iget-object v0, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v1, p0, Labcd/lI;->j6:Labcd/HJ;

    const/4 v2, 0x1

    new-array v3, v2, [Labcd/jI;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Labcd/jI$d;->DW()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/lI;->Hw:Ljava/lang/String;

    return v2

    :cond_1b
    const/4 p1, 0x0

    iput-object p1, p0, Labcd/lI;->Hw:Ljava/lang/String;

    return v4
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Labcd/jI$f;

    invoke-direct {v0, p1}, Labcd/jI$f;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v1, p0, Labcd/lI;->j6:Labcd/HJ;

    const/4 v2, 0x1

    new-array v3, v2, [Labcd/jI;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v1, v3}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {v0}, Labcd/jI$f;->DW()Z

    move-result p1

    if-eqz p1, :cond_1c

    return v2

    :cond_1c
    return v4
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
    .registers 7

    new-instance v0, Labcd/jI$c;

    invoke-direct {v0, p1}, Labcd/jI$c;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object v1, p0, Labcd/lI;->j6:Labcd/HJ;

    const/4 v2, 0x1

    new-array v3, v2, [Labcd/jI;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v1, v3}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result p1

    if-eqz p1, :cond_21

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Labcd/jI$a;->FH()[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object p1, p0, Labcd/lI;->FH:Ljava/lang/String;

    return v2

    :cond_21
    const/4 p1, 0x0

    iput-object p1, p0, Labcd/lI;->FH:Ljava/lang/String;

    return v4
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .registers 11

    array-length p1, p4

    new-array p2, p1, [Labcd/jI$d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    array-length v2, p4

    if-lt v1, v2, :cond_40

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_1d

    new-instance p5, Labcd/jI$b;

    invoke-direct {p5, p3}, Labcd/jI$b;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Labcd/lI;->DW:Labcd/kI;

    iget-object p5, p0, Labcd/lI;->j6:Labcd/HJ;

    invoke-virtual {p3, p5, p4}, Labcd/kI;->j6(Labcd/HJ;Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_30

    const/4 p1, 0x0

    return-object p1

    :cond_30
    new-array v2, p1, [Ljava/lang/String;

    :goto_32
    if-lt v0, p1, :cond_35

    return-object v2

    :cond_35
    aget-object p3, p2, v0

    invoke-virtual {p3}, Labcd/jI$d;->DW()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_40
    new-instance v2, Labcd/jI$d;

    aget-object v3, p4, v1

    aget-boolean v4, p5, v1

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, v4}, Labcd/jI$d;-><init>(Ljava/lang/String;Z)V

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
