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
    .registers 6

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->j6:Labcd/wL;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HL;

    iput-object v0, p0, Labcd/WM;->DW:Labcd/HL;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/UM;->j6(Ljava/lang/Object;)Labcd/UM;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->FH:Labcd/UM;

    :goto_23
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/EL;

    instance-of v1, v0, Labcd/LL;

    if-eqz v1, :cond_6e

    check-cast v0, Labcd/LL;

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4b

    instance-of v1, v0, Labcd/YL;

    iput-boolean v1, p0, Labcd/WM;->gn:Z

    invoke-static {v0, v2}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->v5:Labcd/HL;

    goto :goto_23

    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag value "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    instance-of v1, v0, Labcd/YL;

    iput-boolean v1, p0, Labcd/WM;->VH:Z

    invoke-static {v0, v2}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object v0

    iput-object v0, p0, Labcd/WM;->Hw:Labcd/HL;

    goto :goto_23

    :cond_6e
    check-cast v0, Labcd/HL;

    iput-object v0, p0, Labcd/WM;->Zo:Labcd/HL;

    goto :goto_23
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

    instance-of p1, p4, Labcd/WL;

    iput-boolean p1, p0, Labcd/WM;->gn:Z

    instance-of p1, p3, Labcd/WL;

    iput-boolean p1, p0, Labcd/WM;->VH:Z

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/WM;
    .registers 2

    instance-of v0, p0, Labcd/WM;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/WM;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/WM;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/WM;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private j6(Labcd/zL;Labcd/HL;Labcd/HL;Labcd/HL;)Labcd/wL;
    .registers 14

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_3b

    :cond_13
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Labcd/LL;

    if-eqz v7, :cond_c

    invoke-static {v6}, Labcd/LL;->j6(Ljava/lang/Object;)Labcd/LL;

    move-result-object v6

    invoke-virtual {v6}, Labcd/LL;->tp()I

    move-result v7

    if-ne v7, v1, :cond_27

    const/4 v5, 0x1

    goto :goto_c

    :cond_27
    invoke-virtual {v6}, Labcd/LL;->tp()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_30

    const/4 v4, 0x1

    goto :goto_c

    :cond_30
    invoke-virtual {v6}, Labcd/LL;->tp()I

    move-result v6

    if-ne v6, v0, :cond_c

    const/4 v3, 0x1

    goto :goto_c

    :cond_38
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3b
    const/4 p2, 0x5

    if-eqz v3, :cond_44

    new-instance p1, Labcd/wL;

    invoke-direct {p1, p2}, Labcd/wL;-><init>(I)V

    return-object p1

    :cond_44
    if-eqz p3, :cond_5b

    invoke-virtual {p3}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object p3

    :cond_4a
    :goto_4a
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_5b

    :cond_51
    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Labcd/LL;

    if-eqz v3, :cond_4a

    const/4 v2, 0x1

    goto :goto_4a

    :cond_5b
    :goto_5b
    if-eqz v2, :cond_63

    new-instance p1, Labcd/wL;

    invoke-direct {p1, p2}, Labcd/wL;-><init>(I)V

    return-object p1

    :cond_63
    if-eqz v4, :cond_6c

    new-instance p1, Labcd/wL;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Labcd/wL;-><init>(I)V

    return-object p1

    :cond_6c
    if-eqz v5, :cond_74

    new-instance p1, Labcd/wL;

    invoke-direct {p1, v0}, Labcd/wL;-><init>(I)V

    return-object p1

    :cond_74
    invoke-direct {p0, p4}, Labcd/WM;->j6(Labcd/HL;)Z

    move-result p2

    if-eqz p2, :cond_80

    new-instance p1, Labcd/wL;

    invoke-direct {p1, v0}, Labcd/wL;-><init>(I)V

    return-object p1

    :cond_80
    sget-object p2, Labcd/TM;->j6:Labcd/zL;

    invoke-virtual {p2, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    new-instance p1, Labcd/wL;

    invoke-direct {p1, v0}, Labcd/wL;-><init>(I)V

    return-object p1

    :cond_8e
    new-instance p1, Labcd/wL;

    invoke-direct {p1, v1}, Labcd/wL;-><init>(I)V

    return-object p1
.end method

.method private j6(Labcd/HL;)Z
    .registers 4

    invoke-virtual {p1}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/YM;->j6(Ljava/lang/Object;)Labcd/YM;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YM;->Zo()Labcd/wL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 6

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/WM;->j6:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/WM;->DW:Labcd/HL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/WM;->FH:Labcd/UM;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/WM;->Hw:Labcd/HL;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    iget-boolean v3, p0, Labcd/WM;->VH:Z

    if-eqz v3, :cond_23

    new-instance v3, Labcd/YL;

    invoke-direct {v3, v2, v2, v1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    goto :goto_28

    :cond_23
    new-instance v3, Labcd/yM;

    invoke-direct {v3, v2, v2, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    :goto_28
    invoke-virtual {v0, v3}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_2b
    iget-object v1, p0, Labcd/WM;->v5:Labcd/HL;

    if-eqz v1, :cond_42

    iget-boolean v3, p0, Labcd/WM;->gn:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    new-instance v3, Labcd/YL;

    invoke-direct {v3, v2, v4, v1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    goto :goto_3f

    :cond_3a
    new-instance v3, Labcd/yM;

    invoke-direct {v3, v2, v4, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    :goto_3f
    invoke-virtual {v0, v3}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_42
    iget-object v1, p0, Labcd/WM;->Zo:Labcd/HL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/UL;

    invoke-direct {v1, v0}, Labcd/UL;-><init>(Labcd/rL;)V

    return-object v1
.end method
