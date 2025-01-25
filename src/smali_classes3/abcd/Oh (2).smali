.class public Labcd/Oh;
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
.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1d98fbc024ce86bfL
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xdf04948cf5a4710L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Oh;

    const-wide v1, -0x23b40421389c322fL  # -4.0679517960582325E136

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x7e7e2e33aa0e643L

    :try_start_6
    sget-boolean v3, Labcd/Oh;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Labcd/Oh;->gn:Ljava/lang/String;

    const-string v3, "/"

    iput-object v3, p0, Labcd/Oh;->u7:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/Oh;->VH:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method private DW(Landroid/app/AlertDialog;)Landroid/widget/ListView;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11b5560c5cb33690L
    .end annotation

    const-wide v0, 0x1589dcfa728c4e0L

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08005a

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic DW(Labcd/Oh;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Labcd/Oh;->Zo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic DW(Labcd/Oh;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Oh;->Zo(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private FH(Landroid/app/AlertDialog;)Landroid/widget/TextView;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x24a6bd284ae0779dL
    .end annotation

    const-wide v0, -0x302ad12b1627259dL  # -3.832525703983515E76

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08005b

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic FH(Labcd/Oh;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/Oh;->u7:Ljava/lang/String;

    return-object p0
.end method

.method private Hw(Landroid/app/AlertDialog;)Landroid/view/View;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1e45885a2c032f3dL
    .end annotation

    const-wide v0, 0x5158519074c6fdL

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08005c

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object p1

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private VH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5951ee4f56e2c458L
    .end annotation

    const-wide v0, -0x3b17d1d7e7d08188L  # -9.135058794211465E23

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Oh;->gn:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method private Zo()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6d53c4ece8f2a380L
    .end annotation

    const-wide v0, 0x2240dbbdf7877f30L

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Oh;->u7:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method private Zo(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4e5ab0d75cdc7884L
    .end annotation

    const-wide v0, -0x847bdc82eb17784L  # -5.006140482148355E268

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Oh;->Hw(Landroid/app/AlertDialog;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Labcd/Oh;->DW(Landroid/app/AlertDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    invoke-direct {p0}, Labcd/Oh;->Zo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/Mh;

    invoke-direct {v4, p0, p1}, Labcd/Mh;-><init>(Labcd/Oh;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3, v4}, Labcd/Ji;->j6(Ljava/lang/String;Labcd/Ji$b;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method private gn()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4898090158c37f60L
    .end annotation

    const-wide v0, 0x1157484cf6dacf40L  # 3.931257154021566E-225

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Labcd/Oh;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Labcd/Oh;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-object v0

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private j6(Landroid/app/AlertDialog;)Landroid/widget/TextView;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3769c03ee0249610L
    .end annotation

    const-wide v0, 0x4aeecb8cba519170L  # 9.217456656665292E52

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080059

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Labcd/Oh;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Labcd/Oh;->gn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Oh;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Labcd/Oh;->u7:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Labcd/Oh;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Oh;->v5(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic j6(Labcd/Oh;Landroid/app/AlertDialog;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Oh;->j6(Landroid/app/AlertDialog;Ljava/util/List;)V

    return-void
.end method

.method private j6(Landroid/app/AlertDialog;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x5657d7df089ff83bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Oh;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x541b48721c85734bL  # -3.0309478196799937E-97

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Oh;->v5(Landroid/app/AlertDialog;)V

    invoke-direct {p0, p1}, Labcd/Oh;->Hw(Landroid/app/AlertDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Labcd/Oh;->DW(Landroid/app/AlertDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Labcd/Oh;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_34

    const-string v2, ".."

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_53
    invoke-direct {p0, p1}, Labcd/Oh;->DW(Landroid/app/AlertDialog;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0015

    const v5, 0x7f08005e

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, p1}, Labcd/Oh;->DW(Landroid/app/AlertDialog;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Labcd/Nh;

    invoke-direct {v1, p0, p1}, Labcd/Nh;-><init>(Labcd/Oh;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_75
    .catchall {:try_start_0 .. :try_end_75} :catchall_76

    return-void

    :catchall_76
    move-exception v0

    sget-boolean v1, Labcd/Oh;->VH:Z

    if-eqz v1, :cond_87

    const-wide v2, -0x541b48721c85734bL  # -3.0309478196799937E-97

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method private v5()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6d2e37289c705410L
    .end annotation

    const-wide v0, 0x2223f07a8a714d50L  # 3.193622020272655E-144

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Oh;->u7:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private v5(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4f6f9b8ca1c866cL
    .end annotation

    const-wide v0, -0x4f45f1ddb14418cL  # -5.135496665823683E284

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Oh;->FH(Landroid/app/AlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local Folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Labcd/Oh;->gn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Labcd/Oh;->j6(Landroid/app/AlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropbox Folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Labcd/Oh;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-direct {p0}, Labcd/Oh;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5f

    invoke-direct {p0}, Labcd/Oh;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v4, 0x0

    :goto_60
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_63
    .catchall {:try_start_5 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_6c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v2
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x630283d47d31a80L
    .end annotation

    const-wide v0, 0x174256c14b63a580L

    :try_start_5
    sget-boolean v2, Labcd/Oh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Download Dropbox Folder"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Labcd/Kh;

    invoke-direct {v4, p0}, Labcd/Kh;-><init>(Labcd/Oh;)V

    const-string v5, "Download"

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Labcd/Jh;

    invoke-direct {v4, p0}, Labcd/Jh;-><init>(Labcd/Oh;)V

    const-string v5, "Cancel"

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Labcd/Ih;

    invoke-direct {v4, p0}, Labcd/Ih;-><init>(Labcd/Oh;)V

    const-string v5, "Logout"

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Labcd/Lh;

    invoke-direct {v3, p0}, Labcd/Lh;-><init>(Labcd/Oh;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    return-object v2

    :catchall_59
    move-exception v2

    sget-boolean v3, Labcd/Oh;->VH:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v2
.end method
