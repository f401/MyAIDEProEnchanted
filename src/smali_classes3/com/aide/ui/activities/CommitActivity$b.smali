.class Lcom/aide/ui/activities/CommitActivity$b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/activities/CommitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/ui/scm/ModifiedFile;",
        ">;"
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
.field final FH:Lcom/aide/ui/activities/CommitActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/activities/CommitActivity$b;

    const-wide v1, -0x168891df9a34d50L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/activities/CommitActivity;Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x37b535aff6e334a0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity$b;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2dd9065a102036f0L  # 7.862344949950981E-88

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    const v0, 0x7f0a0006

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity$b;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x2dd9065a102036f0L  # 7.862344949950981E-88

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1a67f80c6a6d22d0L
    .end annotation

    const-wide v0, -0x2c17927e56536fd5L  # -1.630543066765855E96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity$b;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5f5651fab8412f9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity$b;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x43a46696a145568L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    move-object v0, p2

    check-cast v0, Lcom/aide/ui/scm/ModifiedFileListEntry;

    if-nez v0, :cond_d8

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFileListEntry;

    new-instance v1, Lcom/aide/ui/activities/n;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/activities/n;-><init>(Lcom/aide/ui/activities/CommitActivity$b;I)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/ModifiedFileListEntry;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v1}, Lcom/aide/ui/activities/CommitActivity;->v5(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/ModifiedFileListEntry;->setChecked(Z)V

    iget-object v1, p0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v1}, Lcom/aide/ui/activities/CommitActivity;->Zo(Lcom/aide/ui/activities/CommitActivity;)I

    move-result v1

    if-ne p1, v1, :cond_49

    const/4 v2, 0x1

    :cond_49
    invoke-virtual {v0, v2}, Lcom/aide/ui/scm/ModifiedFileListEntry;->setSelectedForDiff(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/scm/ModifiedFile;

    const v2, 0x7f080127

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->FH()Z

    move-result v3

    if-nez v3, :cond_9d

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->Zo()Z

    move-result v3

    if-eqz v3, :cond_68

    goto :goto_9d

    :cond_68
    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v3

    if-nez v3, :cond_96

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_96

    :cond_75
    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v3

    if-nez v3, :cond_8f

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v3

    if-eqz v3, :cond_82

    goto :goto_8f

    :cond_82
    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->Hw()Z

    move-result v3

    if-eqz v3, :cond_a3

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a3

    :cond_8f
    :goto_8f
    const v3, 0x7f07003e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a3

    :cond_96
    :goto_96
    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a3

    :cond_9d
    :goto_9d
    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a3
    :goto_a3
    const v2, 0x7f080128

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_d8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_de
    .catchall {:try_start_0 .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity$b;->DW:Z

    if-eqz v1, :cond_f4

    const-wide v2, -0x43a46696a145568L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f4
    throw v0
.end method
