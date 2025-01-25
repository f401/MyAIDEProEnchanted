.class public Lcom/aide/ui/debugger/DebugView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/debugger/DebugView$a;,
        Lcom/aide/ui/debugger/DebugView$b;
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
.field private FH:Lcom/aide/ui/debugger/DebugView$b;
    .annotation runtime Labcd/ru;
        field = -0xe6046cb87edfcdL
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1f512d0c6b44c40L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/debugger/DebugView;

    const-wide v1, 0x2dc08d82614a4f83L  # 2.600291149899644E-88

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xbf2e46b246570a8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/DebugView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/DebugView;->DW()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/DebugView;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xdcbd0d71539f639L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/DebugView;->DW()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/DebugView;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, -0xdcbd0d71539f639L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method private DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x916f695b21a94b3L
    .end annotation

    const-wide v0, 0x2c4442b6ea4618fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/DebugView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/DebugView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v5, 0x7f0a0003

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v2, Lcom/aide/ui/debugger/DebugView$b;

    invoke-direct {v2, p0, v4}, Lcom/aide/ui/debugger/DebugView$b;-><init>(Lcom/aide/ui/debugger/DebugView;Lcom/aide/ui/debugger/b;)V

    iput-object v2, p0, Lcom/aide/ui/debugger/DebugView;->FH:Lcom/aide/ui/debugger/DebugView$b;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/aide/ui/debugger/b;

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/debugger/b;-><init>(Lcom/aide/ui/debugger/DebugView;Landroid/widget/ListView;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/aide/ui/debugger/c;

    invoke-direct {v2, p0}, Lcom/aide/ui/debugger/c;-><init>(Lcom/aide/ui/debugger/DebugView;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/DebugView;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_54
    throw v2
.end method

.method private static DW(Landroid/widget/TextView;III)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x435081f4bcb68651L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x351d144b50adfe05L  # -5.663267166165282E52

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/DebugView;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x351d144b50adfe05L  # -5.663267166165282E52

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method private getListView()Landroid/widget/ListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x24196718bd51780cL
    .end annotation

    const-wide v0, 0x3c98b708ecba4b18L  # 8.574731178706366E-17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/DebugView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f08003a

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/DebugView;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Landroid/widget/TextView;III)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/aide/ui/debugger/DebugView;->DW(Landroid/widget/TextView;III)V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 11

    const-wide v0, -0x1f79879d6fb4e307L  # -9.640859176255811E156

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/DebugView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/debugger/DebugView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080014

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080016

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->J0()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_c9

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6e

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v6

    const-string v8, "()"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    const v6, 0x7f070010

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    :cond_58
    const v6, 0x7f07000b

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5e
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_69
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_103

    :cond_6e
    const v6, 0x7f070036

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/debugger/Debugger;->Zo()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v3, v4, v6, v8}, Lcom/aide/ui/debugger/DebugView;->DW(Landroid/widget/TextView;III)V

    goto :goto_69

    :cond_c9
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->tp()Z

    move-result v6

    if-eqz v6, :cond_e0

    const v6, 0x7f070034

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0d0658

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_69

    :cond_e0
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->we()Z

    move-result v6

    const v8, 0x7f070035

    if-eqz v6, :cond_f8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0d0659

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_69

    :cond_f8
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0d0657

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_69

    :goto_103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->J0()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_13e

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13e

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->FH()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_129
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/debugger/Debugger$c;

    new-instance v7, Lcom/aide/ui/debugger/DebugView$a;

    invoke-direct {v7, v6}, Lcom/aide/ui/debugger/DebugView$a;-><init>(Lcom/aide/ui/debugger/Debugger$c;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_129

    :cond_13e
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->gn()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_15a

    new-instance v6, Lcom/aide/ui/debugger/DebugView$a;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/ui/debugger/Debugger$b;

    invoke-direct {v6, v7}, Lcom/aide/ui/debugger/DebugView$a;-><init>(Lcom/aide/ui/debugger/Debugger$b;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15a
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/debugger/Debugger;->VH()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_166
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/ui/debugger/Debugger$c;

    new-instance v8, Lcom/aide/ui/debugger/DebugView$a;

    invoke-direct {v8, v7}, Lcom/aide/ui/debugger/DebugView$a;-><init>(Lcom/aide/ui/debugger/Debugger$c;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_166

    :cond_17b
    const/4 v6, 0x1

    :goto_17c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_193

    new-instance v7, Lcom/aide/ui/debugger/DebugView$a;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aide/ui/debugger/Debugger$b;

    invoke-direct {v7, v8}, Lcom/aide/ui/debugger/DebugView$a;-><init>(Lcom/aide/ui/debugger/Debugger$b;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_17c

    :cond_193
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->DW()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/debugger/Debugger$a;

    new-instance v7, Lcom/aide/ui/debugger/DebugView$a;

    invoke-direct {v7, v6}, Lcom/aide/ui/debugger/DebugView$a;-><init>(Lcom/aide/ui/debugger/Debugger$a;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    :cond_1b4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1db

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->tp()Z

    move-result v4

    if-nez v4, :cond_1db

    new-instance v4, Lcom/aide/ui/debugger/DebugView$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0656

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/aide/ui/debugger/DebugView$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1db
    iget-object v4, p0, Lcom/aide/ui/debugger/DebugView;->FH:Lcom/aide/ui/debugger/DebugView$b;

    invoke-virtual {v4, v3}, Lcom/aide/common/x;->j6(Ljava/util/List;)V

    iget-object v3, p0, Lcom/aide/ui/debugger/DebugView;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_1f2

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_200

    :cond_1f2
    iget-object v3, p0, Lcom/aide/ui/debugger/DebugView;->Hw:Ljava/lang/String;

    if-nez v3, :cond_20d

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20d

    :cond_200
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/debugger/Debugger;->u7()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/debugger/DebugView;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_20d
    .catchall {:try_start_5 .. :try_end_20d} :catchall_20e

    :cond_20d
    return-void

    :catchall_20e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/DebugView;->DW:Z

    if-eqz v3, :cond_216

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_216
    goto :goto_218

    :goto_217
    throw v2

    :goto_218
    goto :goto_217
.end method
