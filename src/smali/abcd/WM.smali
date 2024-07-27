.class public Labcd/WM;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/HL;

.field private FH:Labcd/UM;

.field private Hw:Labcd/HL;

.field private VH:Z

.field private Zo:Labcd/HL;

.field private gn:Z

.field private j6:Labcd/wL;

.field private v5:Labcd/HL;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->j6:Labcd/wL;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HL;

    iput-object v0, p0, Labcd/WM;->DW:Labcd/HL;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/UM;->j6(Ljava/lang/Object;)Labcd/UM;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->FH:Labcd/UM;

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/EL;

    instance-of v2, v0, Labcd/LL;

    if-eqz v2, :cond_3

    check-cast v0, Labcd/LL;

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    instance-of v2, v0, Labcd/YL;

    iput-boolean v2, p0, Labcd/WM;->gn:Z

    invoke-static {v0, v4}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->v5:Labcd/HL;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v2, v0, Labcd/YL;

    iput-boolean v2, p0, Labcd/WM;->VH:Z

    invoke-static {v0, v4}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->Hw:Labcd/HL;

    goto :goto_0

    :cond_3
    check-cast v0, Labcd/HL;

    iput-object v0, p0, Labcd/WM;->Zo:Labcd/HL;

    goto :goto_0
.end method

.method public constructor <init>(Labcd/HL;Labcd/UM;Labcd/HL;Labcd/HL;Labcd/HL;)V
    .registers 7

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p2}, Labcd/UM;->Zo()Labcd/zL;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Labcd/WM;->j6(Labcd/zL;Labcd/HL;Labcd/HL;Labcd/HL;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->j6:Labcd/wL;

    iput-object p1, p0, Labcd/WM;->DW:Labcd/HL;

    iput-object p2, p0, Labcd/WM;->FH:Labcd/UM;

    iput-object p3, p0, Labcd/WM;->Hw:Labcd/HL;

    iput-object p4, p0, Labcd/WM;->v5:Labcd/HL;

    iput-object p5, p0, Labcd/WM;->Zo:Labcd/HL;

    instance-of v0, p4, Labcd/WL;

    iput-boolean v0, p0, Labcd/WM;->gn:Z

    instance-of v0, p3, Labcd/WL;

    iput-boolean v0, p0, Labcd/WM;->VH:Z

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/WM;
    .registers 3

    instance-of v0, p0, Labcd/WM;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/WM;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/WM;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/WM;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/zL;Labcd/HL;Labcd/HL;Labcd/HL;)Labcd/wL;
    .registers 16

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v5

    move v0, v1

    move v3, v1

    move v4, v1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Labcd/wL;

    invoke-direct {v0, v10}, Labcd/wL;-><init>(I)V

    :goto_2
    return-object v0

    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Labcd/LL;

    if-eqz v7, :cond_0

    invoke-static {v6}, Labcd/LL;->j6(Ljava/lang/Object;)Labcd/LL;

    move-result-object v6

    invoke-virtual {v6}, Labcd/LL;->tp()I

    move-result v7

    if-ne v7, v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Labcd/LL;->tp()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Labcd/LL;->tp()I

    move-result v6

    if-ne v6, v9, :cond_0

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move v4, v1

    move v3, v1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    new-instance v0, Labcd/wL;

    invoke-direct {v0, v10}, Labcd/wL;-><init>(I)V

    goto :goto_2

    :cond_8
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Labcd/LL;

    if-eqz v5, :cond_6

    move v1, v2

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    new-instance v0, Labcd/wL;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Labcd/wL;-><init>(I)V

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    new-instance v0, Labcd/wL;

    invoke-direct {v0, v9}, Labcd/wL;-><init>(I)V

    goto :goto_2

    :cond_b
    invoke-direct {p0, p4}, Labcd/WM;->j6(Labcd/HL;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Labcd/wL;

    invoke-direct {v0, v9}, Labcd/wL;-><init>(I)V

    goto :goto_2

    :cond_c
    sget-object v0, Labcd/TM;->j6:Labcd/zL;

    invoke-virtual {v0, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Labcd/wL;

    invoke-direct {v0, v9}, Labcd/wL;-><init>(I)V

    goto :goto_2

    :cond_d
    new-instance v0, Labcd/wL;

    invoke-direct {v0, v2}, Labcd/wL;-><init>(I)V

    goto :goto_2
.end method

.method private j6(Labcd/HL;)Z
    .registers 5

    invoke-virtual {p1}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Labcd/YM;->j6(Ljava/lang/Object;)Labcd/YM;

    move-result-object v1

    invoke-virtual {v1}, Labcd/YM;->Zo()Labcd/wL;

    move-result-object v1

    invoke-virtual {v1}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/WM;->j6:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/WM;->DW:Labcd/HL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/WM;->FH:Labcd/UM;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/WM;->Hw:Labcd/HL;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Labcd/WM;->VH:Z

    if-eqz v2, :cond_2

    new-instance v2, Labcd/YL;

    invoke-direct {v2, v3, v3, v1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Labcd/WM;->v5:Labcd/HL;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Labcd/WM;->gn:Z

    if-eqz v2, :cond_3

    new-instance v2, Labcd/YL;

    invoke-direct {v2, v3, v4, v1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Labcd/WM;->Zo:Labcd/HL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/UL;

    invoke-direct {v1, v0}, Labcd/UL;-><init>(Labcd/rL;)V

    return-object v1

    :cond_2
    new-instance v2, Labcd/yM;

    invoke-direct {v2, v3, v3, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0

    :cond_3
    new-instance v2, Labcd/yM;

    invoke-direct {v2, v3, v4, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_1
.end method
