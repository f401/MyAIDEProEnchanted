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
    .registers 4

    const-wide v2, -0x3c94289455377dc8L    # -6.269345438341984E16

    const-class v0, Labcd/Lc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, 0x48e69f2bf1f45f65L    # 1.5765068799543857E43

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x48e69f2bf1f45f65L    # 1.5765068799543857E43

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Lc;->FH:Labcd/La;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Lc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Labcd/Da;II)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x17402627437960e0L
    .end annotation

    const-wide v8, -0x8f21ccac7ea3890L    # -3.011592688639067E265

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x8f21ccac7ea3890L    # -3.011592688639067E265

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    move-object v0, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Lc;->DW:Z

    if-eqz v0, :cond_6

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method private FH(Labcd/Da;II)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x4003d9f8d85f2487L
    .end annotation

    const-wide v8, 0x16d210e74f12857dL    # 9.440730176685348E-199

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x16d210e74f12857dL    # 9.440730176685348E-199

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x2

    :goto_2
    return v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Lc;->DW:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method private j6(Labcd/Da;II)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x297fa29f68a3cb7cL
    .end annotation

    const-wide v8, 0x1a6211f0bd37fd70L

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1a6211f0bd37fd70L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Lc;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method


# virtual methods
.method public j6(Labcd/Sa;Labcd/Da;Labcd/na;II)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Lc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x4a5f8f711aed5327L    # -2.196969881164109E-50

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2, p4, p5}, Labcd/Lc;->FH(Labcd/Da;II)I

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez v5, :cond_2

    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0}, Labcd/ab;->j6()V

    sget-object v2, Labcd/Sc;->j6:[Labcd/Rc;

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    :try_start_1
    iget-object v4, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->VH:Labcd/ab;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Labcd/Rc;->FH:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/ab;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p2, p4, p5}, Labcd/Lc;->DW(Labcd/Da;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v2, Labcd/Sc;->j6:[Labcd/Rc;

    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    :try_start_2
    iget-object v5, v4, Labcd/Rc;->FH:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Labcd/Rc;->Hw:Labcd/Rc$c;

    if-eqz v5, :cond_7

    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0}, Labcd/ab;->j6()V

    iget-object v0, v4, Labcd/Rc;->Hw:Labcd/Rc$c;

    iget-object v0, v0, Labcd/Rc$c;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rc$d;

    iget-object v0, v0, Labcd/Rc$d;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rc$a;

    invoke-virtual {v0}, Labcd/Rc$a;->j6()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->VH:Labcd/ab;

    iget-object v0, v0, Labcd/Rc$a;->tp:Ljava/lang/String;

    invoke-interface {v3, v0}, Labcd/ab;->j6(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Lc;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, -0x4a5f8f711aed5327L    # -2.196969881164109E-50

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_3
    invoke-direct {p0, p2, p4, p5}, Labcd/Lc;->j6(Labcd/Da;II)I

    move-result v5

    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Labcd/Lc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0, p2, p4, p5}, Labcd/ab;->DW(Labcd/Da;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method
