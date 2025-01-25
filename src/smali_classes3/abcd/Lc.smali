.class public Labcd/Lc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0xce2bb89a8143021L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Lc;

    const-wide v1, -0x3c94289455377dc8L  # -6.269345438341984E16

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x48e69f2bf1f45f65L  # 1.5765068799543857E43

    :try_start_6
    sget-boolean v3, Labcd/Lc;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Lc;->FH:Labcd/La;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/Lc;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method private DW(Labcd/Da;II)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x17402627437960e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8f21ccac7ea3890L  # -3.011592688639067E265

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_30
    const/4 v2, 0x0

    if-nez v1, :cond_34

    return-object v2

    :cond_34
    move v3, v1

    :goto_35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5a

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_44

    goto :goto_5a

    :cond_44
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_57

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_57

    return-object v2

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_5a
    :goto_5a
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_5f

    return-object p1

    :catchall_5f
    move-exception v0

    sget-boolean v1, Labcd/Lc;->DW:Z

    if-eqz v1, :cond_79

    const-wide v2, -0x8f21ccac7ea3890L  # -3.011592688639067E265

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    goto :goto_7b

    :goto_7a
    throw v0

    :goto_7b
    goto :goto_7a
.end method

.method private FH(Labcd/Da;II)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4003d9f8d85f2487L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x16d210e74f12857dL  # 9.440730176685348E-199

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_22
    if-ltz v1, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_39

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_39
    move v2, v1

    :goto_3a
    if-ltz v2, :cond_5d

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_45

    goto :goto_5d

    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4e

    goto :goto_5d

    :cond_4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3
    :try_end_56
    .catchall {:try_start_0 .. :try_end_56} :catchall_60

    if-nez v3, :cond_5a

    const/4 p1, -0x1

    return p1

    :cond_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x2

    return v1

    :catchall_60
    move-exception v0

    sget-boolean v1, Labcd/Lc;->DW:Z

    if-eqz v1, :cond_7a

    const-wide v2, 0x16d210e74f12857dL  # 9.440730176685348E-199

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7a
    goto :goto_7c

    :goto_7b
    throw v0

    :goto_7c
    goto :goto_7b
.end method

.method private j6(Labcd/Da;II)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x297fa29f68a3cb7cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1a6211f0bd37fd70L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_22
    if-lez v1, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_40

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_39

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_39
    if-nez v1, :cond_3d

    const/4 p1, -0x1

    return p1

    :cond_3d
    add-int/lit8 v1, v1, 0x2

    return v1

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/Lc;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x1a6211f0bd37fd70L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method


# virtual methods
.method public j6(Labcd/Sa;Labcd/Da;Labcd/na;II)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4a5f8f711aed5327L  # -2.196969881164109E-50

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-direct {p0, p2, p4, p5}, Labcd/Lc;->FH(Labcd/Da;II)I

    move-result v6

    const/4 v0, 0x0

    if-lez v6, :cond_5a

    iget-object v1, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v1}, Labcd/ab;->j6()V

    sget-object v1, Labcd/Sc;->j6:[Labcd/Rc;

    array-length v2, v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_cd

    :goto_2b
    if-ge v0, v2, :cond_4c

    aget-object v3, v1, v0

    :try_start_2f
    iget-object v4, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->VH:Labcd/ab;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Labcd/Rc;->FH:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Labcd/ab;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4c
    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->VH:Labcd/ab;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v8}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    return-void

    :cond_5a
    invoke-direct {p0, p2, p4, p5}, Labcd/Lc;->DW(Labcd/Da;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c5

    sget-object v2, Labcd/Sc;->j6:[Labcd/Rc;

    array-length v3, v2
    :try_end_63
    .catchall {:try_start_2f .. :try_end_63} :catchall_cd

    :goto_63
    if-ge v0, v3, :cond_c5

    aget-object v4, v2, v0

    :try_start_67
    iget-object v5, v4, Labcd/Rc;->FH:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    iget-object v5, v4, Labcd/Rc;->Hw:Labcd/Rc$c;

    if-eqz v5, :cond_c2

    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0}, Labcd/ab;->j6()V

    iget-object v0, v4, Labcd/Rc;->Hw:Labcd/Rc$c;

    iget-object v0, v0, Labcd/Rc$c;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Rc$d;

    iget-object v1, v1, Labcd/Rc$d;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_94
    :goto_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Rc$a;

    invoke-virtual {v2}, Labcd/Rc$a;->j6()Z

    move-result v3

    if-eqz v3, :cond_94

    iget-object v3, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->VH:Labcd/ab;

    iget-object v2, v2, Labcd/Rc$a;->tp:Ljava/lang/String;

    invoke-interface {v3, v2}, Labcd/ab;->j6(Ljava/lang/String;)V

    goto :goto_94

    :cond_b0
    invoke-direct {p0, p2, p4, p5}, Labcd/Lc;->j6(Labcd/Da;II)I

    move-result v6

    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->VH:Labcd/ab;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v8}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    return-void

    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_c5
    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0, p2, p4, p5}, Labcd/ab;->DW(Labcd/Da;II)V
    :try_end_cc
    .catchall {:try_start_67 .. :try_end_cc} :catchall_cd

    return-void

    :catchall_cd
    move-exception v0

    sget-boolean v1, Labcd/Lc;->DW:Z

    if-eqz v1, :cond_e9

    const-wide v2, -0x4a5f8f711aed5327L  # -2.196969881164109E-50

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e9
    goto :goto_eb

    :goto_ea
    throw v0

    :goto_eb
    goto :goto_ea
.end method
