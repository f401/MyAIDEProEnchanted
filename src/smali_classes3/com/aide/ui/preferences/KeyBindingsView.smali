.class public Lcom/aide/ui/preferences/KeyBindingsView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/preferences/KeyBindingsView$a;,
        Lcom/aide/ui/preferences/KeyBindingsView$b;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/preferences/KeyBindingsView;

    const-wide v1, 0xed7acd957b04520L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x233840a236204b50L  # -8.837437781582675E138

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/KeyBindingsView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/preferences/KeyBindingsView;->DW()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/preferences/KeyBindingsView;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x558172ae187152b3L  # 7.815799359701624E103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/preferences/KeyBindingsView;->DW()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/KeyBindingsView;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, 0x558172ae187152b3L  # 7.815799359701624E103

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsView;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xdc368ace7e1b400L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/aide/ui/preferences/KeyBindingsView;->DW()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/KeyBindingsView;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0xdc368ace7e1b400L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method private DW()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1b3e46a83d54a138L
    .end annotation

    const-wide v0, 0xc1fa2235781cb15L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/KeyBindingsView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/aide/ui/preferences/KeyBindingsView;->j6()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/KeyBindingsView;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method


# virtual methods
.method public j6()V
    .registers 7

    const-wide v0, 0x44e8d80eca628b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/KeyBindingsView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/V;->DW()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Il;

    instance-of v5, v4, Labcd/Wl;

    if-eqz v5, :cond_19

    check-cast v4, Labcd/Wl;

    new-instance v5, Lcom/aide/ui/preferences/KeyBindingsView$b;

    invoke-direct {v5, p0, v4}, Lcom/aide/ui/preferences/KeyBindingsView$b;-><init>(Lcom/aide/ui/preferences/KeyBindingsView;Labcd/Wl;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_34
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getBasicEditorCommands()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Wl;

    new-instance v5, Lcom/aide/ui/preferences/KeyBindingsView$b;

    invoke-direct {v5, p0, v4}, Lcom/aide/ui/preferences/KeyBindingsView$b;-><init>(Lcom/aide/ui/preferences/KeyBindingsView;Labcd/Wl;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_59
    new-instance v3, Lcom/aide/ui/preferences/h;

    invoke-direct {v3, p0}, Lcom/aide/ui/preferences/h;-><init>(Lcom/aide/ui/preferences/KeyBindingsView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v3, 0x7f0800da

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Lcom/aide/ui/preferences/KeyBindingsView$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/aide/ui/preferences/KeyBindingsView$a;-><init>(Lcom/aide/ui/preferences/KeyBindingsView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/aide/ui/preferences/j;

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/preferences/j;-><init>(Lcom/aide/ui/preferences/KeyBindingsView;Landroid/widget/ListView;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_7f

    return-void

    :catchall_7f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/KeyBindingsView;->DW:Z

    if-eqz v3, :cond_87

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v2

    :goto_89
    goto :goto_88
.end method
