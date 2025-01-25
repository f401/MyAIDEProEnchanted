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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/activities/CommitActivity;

    const-wide v1, -0xad487b9f6de2b7L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x12a9f6ed7a41cd58L  # 9.19420424252157E-219

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/activities/CommitActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/CommitActivity;->u7:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    return-object p0
.end method

.method private Hw()Lcom/aide/ui/scm/ModifiedFile;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x406b287a08ba4a17L
    .end annotation

    const-wide v0, 0x226ec796142ad524L  # 7.887793209304934E-143

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    if-gez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/scm/ModifiedFile;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-object v2

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method static synthetic Hw(Lcom/aide/ui/activities/CommitActivity;)Lcom/aide/ui/scm/ModifiedFile;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->Hw()Lcom/aide/ui/scm/ModifiedFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic VH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    return-object p0
.end method

.method private VH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3c81ebef945e6de1L
    .end annotation

    const-wide v0, 0x1e024e60a82eea90L  # 3.973650641946362E-164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/activities/CommitActivity$b;

    iget-object v4, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    invoke-direct {v3, p0, p0, v4}, Lcom/aide/ui/activities/CommitActivity$b;-><init>(Lcom/aide/ui/activities/CommitActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->tp:Lcom/aide/ui/activities/CommitActivity$b;

    const/4 v4, -0x1

    iput v4, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(II)V

    invoke-direct {p0, v4}, Lcom/aide/ui/activities/CommitActivity;->j6(I)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/ui/activities/CommitActivity;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    return p0
.end method

.method private Zo()Ljava/util/List;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4cfad47c22b67ce5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xdc4e5a8bf04a470L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_30

    iget-object v5, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/scm/ModifiedFile;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_30
    return-object v2

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method

.method static synthetic gn(Lcom/aide/ui/activities/CommitActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->VH()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->Zo()Ljava/util/List;

    move-result-object p0

    return-object p0
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

    const-wide v0, 0x11ff088d9fe64d24L  # 5.365778266743893E-222

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v2

    iput p1, p0, Lcom/aide/ui/activities/CommitActivity;->v5:I

    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->tp:Lcom/aide/ui/activities/CommitActivity$b;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/scm/ModifiedFile;

    invoke-direct {p0, v2}, Lcom/aide/ui/activities/CommitActivity;->j6(Lcom/aide/ui/scm/ModifiedFile;)V

    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->FH()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->FH()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v5}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v5}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v2, v2, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v2}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_67

    return-void

    :catchall_67
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_74

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    throw v2
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/ui/scm/GitStatus;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x11af51230d137e05L  # -2.412195391703985E223

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/activities/CommitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "GITSTATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "GITBRANCH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x11af51230d137e05L  # -2.412195391703985E223

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
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

    const-wide v0, -0x43ae70c1c771e58L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->DW()Lcom/aide/ui/scm/DiffView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/DiffView;->a8()V

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_3a

    :cond_34
    const-string v3, "Binary files differ"

    :goto_36
    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    goto :goto_3d

    :cond_3a
    :goto_3a
    const-string v3, "New binary file"

    goto :goto_36

    :goto_3d
    return-void

    :cond_3e
    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v3

    if-nez v3, :cond_99

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_99

    :cond_4b
    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v3

    if-nez v3, :cond_74

    invoke-virtual {p1}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_74

    :cond_6e
    const-string v3, "Modified binary file"

    :goto_70
    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    goto :goto_a1

    :cond_74
    :goto_74
    const-string v3, "Removed binary file"

    goto :goto_70

    :cond_77
    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iget-object v5, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_87
    invoke-virtual {v2}, Lcom/aide/ui/scm/DiffView;->lg()V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    iget-object v3, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    new-instance v4, Lcom/aide/ui/activities/l;

    invoke-direct {v4, p0, p1}, Lcom/aide/ui/activities/l;-><init>(Lcom/aide/ui/activities/CommitActivity;Lcom/aide/ui/scm/ModifiedFile;)V

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Lcom/aide/ui/scm/ua$d;)V

    goto :goto_a1

    :cond_99
    :goto_99
    iget-object v3, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iget-object v4, p1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_5 .. :try_end_a1} :catchall_a2

    :goto_a1
    return-void

    :catchall_a2
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_aa

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_aa
    goto :goto_ac

    :goto_ab
    throw v2

    :goto_ac
    goto :goto_ab
.end method

.method private v5()Landroid/widget/ListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x253a1e5863112be0L
    .end annotation

    const-wide v0, -0x1d53e2c60f62af1fL  # -2.0723008517313006E167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f080129

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/CommitActivity;->Zo:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/scm/DiffView;
    .registers 5

    const-wide v0, 0x26e4c306d23db8e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f08001b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/scm/DiffView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0xb01eb2c274c25a8L  # -3.528692153468415E255

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/activities/m;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/activities/m;-><init>(Lcom/aide/ui/activities/CommitActivity;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()Lcom/aide/ui/views/CodeEditTextScrollView;
    .registers 5

    const-wide v0, -0x1f759c645eaffb40L  # -1.1322236697238882E157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CodeEditTextScrollView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 6

    const-wide v0, 0x22da72fc89f7826bL  # 8.675889644630649E-141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/activities/CommitActivity;->DW()Lcom/aide/ui/scm/DiffView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/scm/DiffView;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x12949d1c3446faf8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x152962df5c38cfc7L  # 9.883961361579001E-207

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const v0, 0x123abc

    if-ne p1, v0, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x152962df5c38cfc7L  # 9.883961361579001E-207

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xeffd370c0a7e7dcL
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x5dcb02052a417b3L  # -2.190954638502068E280

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "GITBRANCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "refs/heads/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :cond_4f
    const-string v2, "refs/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_5c
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Branch \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_75
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

    const-string v2, "GITSTATUS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitStatus;

    iget-object v2, v0, Lcom/aide/ui/scm/GitStatus;->FH:Ljava/lang/String;

    iput-object v2, p0, Lcom/aide/ui/activities/CommitActivity;->u7:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->v5()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/aide/ui/activities/i;

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/activities/i;-><init>(Lcom/aide/ui/activities/CommitActivity;Landroid/widget/ListView;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/aide/ui/activities/j;

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/activities/j;-><init>(Lcom/aide/ui/activities/CommitActivity;Landroid/widget/ListView;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1, p0}, Labcd/Nk;->j6(Labcd/Nk$c;)V

    iget-object v0, v0, Lcom/aide/ui/scm/GitStatus;->Hw:Ljava/util/List;

    iput-object v0, p0, Lcom/aide/ui/activities/CommitActivity;->VH:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/activities/CommitActivity;->VH()V
    :try_end_c3
    .catchall {:try_start_a .. :try_end_c3} :catchall_c4

    return-void

    :catchall_c4
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_cc

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_cc
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x46e19a7a8bfc9333L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xe2f951bc67a4eacL  # 2.368205361986677E-240

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0xe2f951bc67a4eacL  # 2.368205361986677E-240

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v0, -0x2c63faa5b0aa7b3bL  # -5.844951067849831E94

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    const/4 p1, 0x1

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onDestroy()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x259fd3fd9c410d10L
    .end annotation

    const-wide v0, -0x252845915dc25e2dL  # -4.1119125897492377E129

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/Nk;->DW(Labcd/Nk$c;)V

    iget-object v2, p0, Lcom/aide/ui/activities/CommitActivity;->gn:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_36

    goto :goto_20

    :cond_35
    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    goto :goto_40

    :goto_3f
    throw v2

    :goto_40
    goto :goto_3f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const-wide v0, 0x18d218322c0ec790L  # 4.061156186341167E-189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_5c

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_52

    :pswitch_19  #0x7f080022
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_53

    if-eqz v2, :cond_22

    const-string v2, "Git 丢弃"

    goto :goto_24

    .line 99
    :cond_22
    const-string v2, "Git discard"

    .line 0
    :goto_24
    :try_start_24
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_53

    if-eqz v4, :cond_2d

    const-string v4, "真的放弃选定的更改吗？"

    goto :goto_2f

    .line 99
    :cond_2d
    const-string v4, "Really discard the selected changes?"

    .line 0
    :goto_2f
    :try_start_2f
    new-instance v5, Lcom/aide/ui/activities/k;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/k;-><init>(Lcom/aide/ui/activities/CommitActivity;)V

    const/4 v6, 0x0

    invoke-static {p0, v2, v4, v5, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return v3

    :pswitch_39  #0x7f080021
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "git_commit"

    invoke-virtual {v2, v4, v5}, Labcd/Ek;->j6(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Labcd/ii;

    invoke-direct {v2}, Labcd/ii;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_53

    :cond_51
    return v3

    .line 99
    :goto_52
    return p1

    :catchall_53
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_5b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v2

    :pswitch_data_5c
    .packed-switch 0x7f080021
        :pswitch_39  #7f080021
        :pswitch_19  #7f080022
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x24aaf91dbb940eb8L
    .end annotation

    const-wide v0, -0x77e9729fe0125dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/aide/ui/U;->DW(Landroid/app/Activity;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected onResume()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xa48d96a023cdbc1L
    .end annotation

    const-wide v0, 0x18c01215c87fd3d4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x225e4f23a756a4e8L
    .end annotation

    const-wide v0, 0x18ffa4112d2fc6fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "Commit"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4dcf4aaa803f670L
    .end annotation

    const-wide v0, -0x1b913633fc3d2ebdL  # -6.0918999988034514E175

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Commit"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
