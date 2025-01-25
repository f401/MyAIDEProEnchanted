.class public Lcom/aide/ui/Wa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/Wa$a;
    }
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
.field private FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/ru;
        field = -0x27a4e0679634523cL
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/Wa$a;
    .annotation runtime Labcd/ru;
        field = -0xc201b9e79642e04L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/Wa;

    const-wide v1, -0x1bdd5d60211a3735L  # -2.3045321710945256E174

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x25256bf288f4903fL  # -4.6058082116511805E129

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method private VH()Landroid/widget/EditText;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc9c9c3a47605321L
    .end annotation

    const-wide v0, -0xe9969cf7328b417L  # -1.838480188064648E238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v2

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private Zo()Landroid/widget/TextView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x10473ff35c9ea5a0L
    .end annotation

    const-wide v0, -0x2094e8b1efc32340L  # -4.433976960547464E151

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    const v3, 0x7f080123

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v2

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private gn()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x25b90f72cce7db57L
    .end annotation

    const-wide v0, -0x30a1289f027d03b3L  # -2.1796760904274268E74

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/Wa;->VH()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/Wa;)Lcom/aide/ui/MainActivity;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    return-object p0
.end method

.method private j6(Lcom/aide/ui/Wa$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4e0dfeeeee468889L
    .end annotation

    const-wide v0, -0x20b2e2b613b9ce47L  # -1.191285421379812E151

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/Wa;->Hw:Lcom/aide/ui/Wa$a;

    invoke-direct {p0}, Lcom/aide/ui/Wa;->v5()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/aide/ui/Wa;->Zo()Landroid/widget/TextView;

    move-result-object v2

    sget-object v3, Lcom/aide/ui/Va;->j6:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2f

    if-eq v3, v4, :cond_29

    goto :goto_32

    :cond_29
    const-string v3, "Search:"

    :goto_2b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    :cond_2f
    const-string v3, "Line:"

    goto :goto_2b

    :goto_32
    invoke-direct {p0}, Lcom/aide/ui/Wa;->VH()Landroid/widget/EditText;

    move-result-object v2

    sget-object v3, Lcom/aide/ui/Va;->j6:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_a0

    const-string v6, ""

    if-eq v3, v5, :cond_49

    if-eq v3, v4, :cond_45

    goto :goto_67

    :cond_45
    :try_start_45
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v7}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v7

    iget v7, v7, Labcd/Tl;->Hw:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    sget-object v3, Lcom/aide/ui/Va;->j6:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v5, :cond_84

    if-eq v3, v4, :cond_7a

    goto :goto_8c

    :cond_7a
    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_8c

    :cond_84
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    :goto_8c
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lcom/aide/ui/Ua;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/Ua;-><init>(Lcom/aide/ui/Wa;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9f
    .catchall {:try_start_45 .. :try_end_9f} :catchall_a0

    return-void

    :catchall_a0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_a8

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a8
    goto :goto_aa

    :goto_a9
    throw v2

    :goto_aa
    goto :goto_a9
.end method

.method private v5()Landroid/view/View;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7a3fa1c9b7a1465L
    .end annotation

    const-wide v0, -0x169e840a4257e291L  # -4.182282519653904E199

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    const v3, 0x7f080121

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, 0x146c8a83ca72f910L  # 2.712959703177374E-210

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/Wa;->v5()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x42d623c73e3a25c7L  # -4.593701604340703E-14

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/Wa$a;->DW:Lcom/aide/ui/Wa$a;

    invoke-direct {p0, v2}, Lcom/aide/ui/Wa;->j6(Lcom/aide/ui/Wa$a;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x1e34e9b72a207d98L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/Wa$a;->j6:Lcom/aide/ui/Wa$a;

    invoke-direct {p0, v2}, Lcom/aide/ui/Wa;->j6(Lcom/aide/ui/Wa$a;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const-wide v0, 0x43fd487e53366905L  # 3.376120514053304E19

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/Va;->j6:[I

    iget-object v3, p0, Lcom/aide/ui/Wa;->Hw:Lcom/aide/ui/Wa$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1d

    goto :goto_3e

    :cond_1d
    iget-object v2, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/Wa;->gn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v3, v4}, Lcom/aide/ui/AIDEEditorPager;->j6(IILjava/lang/String;)Z
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_3f

    goto :goto_3e

    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/aide/ui/Wa;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v2, v3}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_3c} :catch_3d
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3f

    goto :goto_3e

    :catch_3d
    move-exception p1

    :goto_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x24241bec6ae67260L  # -3.167531793304676E134

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x24241bec6ae67260L  # -3.167531793304676E134

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x1927d06c117e4ed0L  # -2.6308657887241017E187

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/Wa;->v5()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->we()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5587c476b2a0f8L

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x1

    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_57

    :cond_1d
    sget-object v1, Lcom/aide/ui/Va;->j6:[I

    iget-object v2, p0, Lcom/aide/ui/Wa;->Hw:Lcom/aide/ui/Wa$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_54

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    goto :goto_57

    :cond_2d
    iget-object v1, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    iget v3, v2, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->v5:I

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/aide/ui/Wa;->gn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/aide/ui/AIDEEditorPager;->j6(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/aide/ui/Wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-direct {p0}, Lcom/aide/ui/Wa;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v0, v2}, Lcom/aide/ui/AIDEEditorPager;->j6(IILjava/lang/String;)Z

    goto :goto_57

    :cond_54
    invoke-virtual {p0}, Lcom/aide/ui/Wa;->j6()V
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_58

    :cond_57
    :goto_57
    return v0

    :catchall_58
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v1, :cond_6e

    const-wide v2, -0x5587c476b2a0f8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6e
    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5966055c7fb8655cL  # 4.5490861222693E122

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x5966055c7fb8655cL  # 4.5490861222693E122

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method
