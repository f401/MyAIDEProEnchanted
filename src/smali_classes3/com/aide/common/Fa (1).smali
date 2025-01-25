.class public Lcom/aide/common/Fa;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = -0x1030f1f3da74bd0L
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = -0x1c94bb7d2ba39380L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x74f62e2cc30419bL
    .end annotation
.end field

.field private tp:Lcom/aide/common/ab;
    .annotation runtime Labcd/ru;
        field = -0x147e2de63bb5d6fdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2a0d1d2df37408efL
    .end annotation
.end field

.field private we:Landroid/app/AlertDialog;
    .annotation runtime Labcd/ru;
        field = 0x1f8f1971193d9a99L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/Fa;

    const-wide v1, -0x591bccec5c964d88L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x3606ef4387c14c90L  # 1.9615633327637767E-48

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/aide/common/Fa;->gn:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/common/Fa;->u7:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Fa;->tp:Lcom/aide/common/ab;

    iput-object p4, p0, Lcom/aide/common/Fa;->EQ:Ljava/lang/Runnable;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Fa;->VH:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x3606ef4387c14c90L  # 1.9615633327637767E-48

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/Fa;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Fa;->EQ:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic DW(Lcom/aide/common/Fa;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/common/Fa;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xbdb1f59313a2cc0L
    .end annotation

    const-wide v0, -0x7f6570a6300658bL

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    const/16 v4, 0x2d

    if-nez v3, :cond_26

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_26

    goto :goto_48

    :cond_26
    :goto_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3f

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_4a

    return-object p1

    :cond_48
    :goto_48
    const/4 p1, 0x0

    return-object p1

    :catchall_4a
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Fa;->VH:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v2

    :goto_54
    goto :goto_53
.end method

.method private DW(Landroid/widget/SeekBar;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x5be29ed6477360c7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x10a04cb00677a7f0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p2}, Lcom/aide/common/Fa;->FH(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Fa;->VH:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x10a04cb00677a7f0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/common/Fa;->DW(Landroid/widget/SeekBar;Ljava/lang/String;)V

    return-void
.end method

.method private FH(Ljava/lang/String;)I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xf6fdaf4386c2489L
    .end annotation

    const-wide v0, 0x14c0a7e916a396b8L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_29

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_34

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_29

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_29
    :try_start_29
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_31} :catch_32
    .catchall {:try_start_29 .. :try_end_31} :catchall_34

    return p1

    :catch_32
    move-exception p1

    return v2

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Fa;->VH:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    goto :goto_3e

    :goto_3d
    throw v2

    :goto_3e
    goto :goto_3d
.end method

.method static synthetic FH(Lcom/aide/common/Fa;)Lcom/aide/common/ab;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Fa;->tp:Lcom/aide/common/ab;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/common/Fa;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Fa;->we:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x18a7b3b169bec5b8L
    .end annotation

    const-wide v0, 0xe809fd65e5c2917L  # 7.97808219402974E-239

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/common/Fa;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/aide/common/Fa;->FH(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-object p1

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Fa;->VH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private j6(Landroid/widget/SeekBar;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x138f7c901c7d236fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x336efccc209d4b58L  # -6.834512492514281E60

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p2}, Lcom/aide/common/Fa;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_28

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Fa;->VH:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x336efccc209d4b58L  # -6.834512492514281E60

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method static synthetic j6(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/common/Fa;->j6(Landroid/widget/SeekBar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/common/Fa;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/common/Fa;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xfa05a472a240054L
    .end annotation

    const-wide v0, 0x26952c60eb22fe1L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/common/Fa;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/aide/common/Fa;->FH(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-object p1

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Fa;->VH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method static synthetic j6(Lcom/aide/common/Fa;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/common/Fa;->J0:Z

    return p0
.end method

.method static synthetic j6(Lcom/aide/common/Fa;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/common/Fa;->J0:Z

    return p1
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x129972a733bce57L
    .end annotation

    const-wide v0, 0x457697ee5b58ab8L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Fa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/aide/ui/Oa;->designer_sizedialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/aide/ui/Na;->designersizedialogEditText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aide/common/Fa;->u7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/aide/ui/Na;->designersizedialogSeekBar:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/aide/common/Fa;->u7:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/aide/common/Fa;->DW(Landroid/widget/SeekBar;Ljava/lang/String;)V

    new-instance v5, Lcom/aide/common/xa;

    invoke-direct {v5, p0, v3, v4}, Lcom/aide/common/xa;-><init>(Lcom/aide/common/Fa;Landroid/widget/EditText;Landroid/widget/SeekBar;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v5, Lcom/aide/common/ya;

    invoke-direct {v5, p0, v4, v3}, Lcom/aide/common/ya;-><init>(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v5, Lcom/aide/ui/Na;->designersizedialogPlusButton:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Lcom/aide/common/za;

    invoke-direct {v6, p0, v3, v4}, Lcom/aide/common/za;-><init>(Lcom/aide/common/Fa;Landroid/widget/EditText;Landroid/widget/SeekBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v5, Lcom/aide/ui/Na;->designersizedialogMinusButton:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Lcom/aide/common/Aa;

    invoke-direct {v6, p0, v3, v4}, Lcom/aide/common/Aa;-><init>(Lcom/aide/common/Fa;Landroid/widget/EditText;Landroid/widget/SeekBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v6, Lcom/aide/common/Da;

    invoke-direct {v6, p0, p1, v3}, Lcom/aide/common/Da;-><init>(Lcom/aide/common/Fa;Landroid/app/Activity;Landroid/widget/EditText;)V

    const v7, 0x104000a

    invoke-virtual {v2, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v6, Lcom/aide/common/Ca;

    invoke-direct {v6, p0, p1, v3}, Lcom/aide/common/Ca;-><init>(Lcom/aide/common/Fa;Landroid/app/Activity;Landroid/widget/EditText;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v2, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v6, Lcom/aide/common/Ba;

    invoke-direct {v6, p0, p1, v3}, Lcom/aide/common/Ba;-><init>(Lcom/aide/common/Fa;Landroid/app/Activity;Landroid/widget/EditText;)V

    const v7, 0x7f0d06a4

    invoke-virtual {v2, v7, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/aide/common/Fa;->gn:Ljava/lang/String;

    if-eqz v2, :cond_9d

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_9d
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/common/Fa;->we:Landroid/app/AlertDialog;

    new-instance v2, Lcom/aide/common/Ea;

    invoke-direct {v2, p0, p1, v3}, Lcom/aide/common/Ea;-><init>(Lcom/aide/common/Fa;Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Lcom/aide/common/Fa;->we:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/aide/common/Fa;->we:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/aide/common/Fa;->we:Landroid/app/AlertDialog;
    :try_end_bc
    .catchall {:try_start_5 .. :try_end_bc} :catchall_bd

    return-object p1

    :catchall_bd
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Fa;->VH:Z

    if-eqz v3, :cond_c5

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c5
    throw v2
.end method
