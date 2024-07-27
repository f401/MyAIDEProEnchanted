.class public Lcom/aide/ui/activities/CommitActivity;
.super Lcom/aide/ui/ThemedActionbarActivity;

# interfaces
.implements Labcd/Nk$c;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/activities/CommitActivity$a;,
        Lcom/aide/ui/activities/CommitActivity$b;
    }
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x19d08c474f14b891L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/BitSet;
    .annotation runtime Labcd/ru;
        field = -0x3f78b2fd86ff4001L
    .end annotation
.end field

.field private gn:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x363d131981ce4a7bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Lcom/aide/ui/activities/CommitActivity$b;
    .annotation runtime Labcd/ru;
        field = 0x1e880faf40f6d2edL
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xc70afb0b2688be3L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x187bfb154699ccfL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xad487b9f6de2b7L

    const-class v0, Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x12a9f6ed7a41cd58L    # 9.19420424252157E-219

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12a9f6ed7a41cd58L    # 9.19420424252157E-219

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/activities/CommitActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->u7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    return-object v0
.end method

.method private Hw()Lcom/aide/ui/scm/ModifiedFile;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x406b287a08ba4a17L
    .end annotation

    const-wide v2, 0x226ec796142ad524L    # 7.887793209304934E-143

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x226ec796142ad524L    # 7.887793209304934E-143

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/activities/CommitActivity;)Lcom/aide/ui/scm/ModifiedFile;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->Hw()Lcom/aide/ui/scm/ModifiedFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic VH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    return-object v0
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3c81ebef945e6de1L
    .end annotation

    const-wide v4, 0x1e024e60a82eea90L    # 3.973650641946362E-164

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e024e60a82eea90L    # 3.973650641946362E-164

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/activities/CommitActivity$b;

    iget-object v2, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/aide/ui/activities/CommitActivity$b;-><init>(Lcom/aide/ui/activities/CommitActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/aide/ui/activities/CommitActivity;->tp:Lcom/aide/ui/activities/CommitActivity$b;

    const/4 v1, -0x1

    iput v1, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    iget-object v1, p0, Lcom/aide/ui/activities/CommitActivity;->tp:Lcom/aide/ui/activities/CommitActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/activities/CommitActivity;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Zo(Lcom/aide/ui/activities/CommitActivity;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    return v0
.end method

.method private Zo()Ljava/util/List;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4cfad47c22b67ce5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;"
        }
    .end annotation

    const-wide v4, -0xdc4e5a8bf04a470L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xdc4e5a8bf04a470L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-object v2
.end method

.method static synthetic gn(Lcom/aide/ui/activities/CommitActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->VH()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->Zo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/CommitActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    return-object p1
.end method

.method private j6(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2283d4110c725f69L
    .end annotation

    const-wide v4, 0x11ff088d9fe64d24L    # 5.365778266743893E-222

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11ff088d9fe64d24L    # 5.365778266743893E-222

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v0

    iput p1, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    iget-object v1, p0, Lcom/aide/ui/activities/CommitActivity;->tp:Lcom/aide/ui/activities/CommitActivity$b;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;

    invoke-direct {p0, v0}, Lcom/aide/ui/activities/CommitActivity;->j6(Lcom/aide/ui/scm/ModifiedFile;)V

    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->FH()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->FH()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v2

    const v1, 0x7f080020

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08001e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08001f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/ui/scm/GitStatus;Ljava/lang/String;)V
    .registers 13

    const-wide v8, -0x11af51230d137e05L    # -2.412195391703985E223

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11af51230d137e05L    # -2.412195391703985E223

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/activities/CommitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "GITSTATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "GITBRANCH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/activities/CommitActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/activities/CommitActivity;->j6(I)V

    return-void
.end method

.method private j6(Lcom/aide/ui/scm/ModifiedFile;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xad892d2bcfbb5d9L
    .end annotation

    const-wide v4, -0x43ae70c1c771e58L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x43ae70c1c771e58L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->DW()Lcom/aide/ui/scm/DiffView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/scm/DiffView;->a8()V

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "New binary file"

    invoke-virtual {v1, v0}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "Binary files differ"

    invoke-virtual {v1, v0}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iget-object v3, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "Removed binary file"

    invoke-virtual {v1, v0}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v0, "Modified binary file"

    invoke-virtual {v1, v0}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iget-object v3, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/aide/ui/scm/DiffView;->lg()V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    iget-object v1, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    new-instance v2, Lcom/aide/ui/activities/l;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/activities/l;-><init>(Lcom/aide/ui/activities/CommitActivity;Lcom/aide/ui/scm/ModifiedFile;)V

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Lcom/aide/ui/scm/ua$d;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private v5()Landroid/widget/ListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x253a1e5863112be0L
    .end annotation

    const-wide v2, -0x1d53e2c60f62af1fL    # -2.0723008517313006E167

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d53e2c60f62af1fL    # -2.0723008517313006E167

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic v5(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    return-object v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/scm/DiffView;
    .registers 5

    const-wide v2, 0x26e4c306d23db8e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26e4c306d23db8e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/DiffView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0xb01eb2c274c25a8L    # -3.528692153468415E255

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb01eb2c274c25a8L    # -3.528692153468415E255

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/activities/m;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/activities/m;-><init>(Lcom/aide/ui/activities/CommitActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Lcom/aide/ui/views/CodeEditTextScrollView;
    .registers 5

    const-wide v2, -0x1f759c645eaffb40L    # -1.1322236697238882E157

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f759c645eaffb40L    # -1.1322236697238882E157

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/CodeEditTextScrollView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 6

    const-wide v2, 0x22da72fc89f7826bL    # 8.675889644630649E-141

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22da72fc89f7826bL    # 8.675889644630649E-141

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->DW()Lcom/aide/ui/scm/DiffView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/scm/DiffView;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x12949d1c3446faf8L
    .end annotation

    const-wide v8, 0x152962df5c38cfc7L    # 9.883961361579001E-207

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x152962df5c38cfc7L    # 9.883961361579001E-207

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const v0, 0x123abc

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xeffd370c0a7e7dcL
    .end annotation

    const-wide v8, -0x5dcb02052a417b3L    # -2.190954638502068E280

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5dcb02052a417b3L    # -2.190954638502068E280

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "GITBRANCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "refs/heads/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Branch \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/SplitView;

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/SplitView;->openSplit(ZZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "GITSTATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitStatus;

    iget-object v1, v0, Lcom/aide/ui/scm/GitStatus;->FH:Ljava/lang/String;

    iput-object v1, p0, Lcom/aide/ui/activities/CommitActivity;->u7:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v2, Lcom/aide/ui/activities/i;

    invoke-direct {v2, p0, v1}, Lcom/aide/ui/activities/i;-><init>(Lcom/aide/ui/activities/CommitActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/aide/ui/activities/j;

    invoke-direct {v2, p0, v1}, Lcom/aide/ui/activities/j;-><init>(Lcom/aide/ui/activities/CommitActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1, p0}, Labcd/Nk;->j6(Labcd/Nk$c;)V

    iget-object v0, v0, Lcom/aide/ui/scm/GitStatus;->Hw:Ljava/util/List;

    iput-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->VH()V

    return-void

    :cond_3
    const-string v2, "refs/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x46e19a7a8bfc9333L
    .end annotation

    const-wide v2, 0xe2f951bc67a4eacL    # 2.368205361986677E-240

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xe2f951bc67a4eacL    # 2.368205361986677E-240

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v2, -0x2c63faa5b0aa7b3bL    # -5.844951067849831E94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c63faa5b0aa7b3bL    # -5.844951067849831E94

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onDestroy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x259fd3fd9c410d10L
    .end annotation

    const-wide v4, -0x252845915dc25e2dL    # -4.1119125897492377E129

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x252845915dc25e2dL    # -4.1119125897492377E129

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Nk;->DW(Labcd/Nk$c;)V

    iget-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const-wide v6, 0x18d218322c0ec790L    # 4.061156186341167E-189

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x18d218322c0ec790L    # 4.061156186341167E-189

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 99
    :cond_1
    :goto_0
    return v0

    .line 4294967295
    :pswitch_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Git \u4e22\u5f03"

    move-object v2, v1

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u771f\u7684\u653e\u5f03\u9009\u5b9a\u7684\u66f4\u6539\u5417\uff1f"

    :goto_2
    :try_start_2
    new-instance v3, Lcom/aide/ui/activities/k;

    invoke-direct {v3, p0}, Lcom/aide/ui/activities/k;-><init>(Lcom/aide/ui/activities/CommitActivity;)V

    const/4 v4, 0x0

    invoke-static {p0, v2, v1, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    .line 4294967295
    :pswitch_1
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "git_commit"

    invoke-virtual {v1, v2, v3}, Labcd/Ek;->j6(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Labcd/ii;

    invoke-direct {v1}, Labcd/ii;-><init>()V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "Git discard"

    move-object v2, v1

    goto :goto_1

    :cond_4
    const-string v1, "Really discard the selected changes?"

    goto :goto_2

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x7f080021
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x24aaf91dbb940eb8L
    .end annotation

    const-wide v2, -0x77e9729fe0125dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x77e9729fe0125dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/aide/ui/U;->DW(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onResume()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xa48d96a023cdbc1L
    .end annotation

    const-wide v2, 0x18c01215c87fd3d4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18c01215c87fd3d4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x225e4f23a756a4e8L
    .end annotation

    const-wide v2, 0x18ffa4112d2fc6fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18ffa4112d2fc6fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "Commit"

    invoke-static {p0, v0}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4dcf4aaa803f670L
    .end annotation

    const-wide v2, -0x1b913633fc3d2ebdL    # -6.0918999988034514E175

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b913633fc3d2ebdL    # -6.0918999988034514E175

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "Commit"

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
