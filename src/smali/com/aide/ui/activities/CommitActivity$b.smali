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
        "Landroid/widget/ArrayAdapter",
        "<",
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
    .registers 4

    const-wide v2, -0x168891df9a34d50L

    const-class v0, Lcom/aide/ui/activities/CommitActivity$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/activities/CommitActivity;Landroid/content/Context;Ljava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x37b535aff6e334a0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x2dd9065a102036f0L    # 7.862344949950981E-88

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2dd9065a102036f0L    # 7.862344949950981E-88

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    const v0, 0x7f0a0006

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity$b;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1a67f80c6a6d22d0L
    .end annotation

    const-wide v2, -0x2c17927e56536fd5L    # -1.630543066765855E96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c17927e56536fd5L    # -1.630543066765855E96

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity$b;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x5f5651fab8412f9L
    .end annotation

    const-wide v10, -0x43a46696a145568L

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity$b;->j6:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x43a46696a145568L

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/aide/ui/scm/ModifiedFileListEntry;

    move-object v2, v0

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/scm/ModifiedFileListEntry;

    new-instance v3, Lcom/aide/ui/activities/n;

    invoke-direct {v3, p0, p1}, Lcom/aide/ui/activities/n;-><init>(Lcom/aide/ui/activities/CommitActivity$b;I)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ModifiedFileListEntry;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v3}, Lcom/aide/ui/activities/CommitActivity;->v5(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ModifiedFileListEntry;->setChecked(Z)V

    iget-object v3, p0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v3}, Lcom/aide/ui/activities/CommitActivity;->Zo(Lcom/aide/ui/activities/CommitActivity;)I

    move-result v3

    if-ne p1, v3, :cond_a

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ModifiedFileListEntry;->setSelectedForDiff(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/scm/ModifiedFile;

    const v4, 0x7f080127

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->FH()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->Zo()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const v5, 0x7f07003b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    const v4, 0x7f080128

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/File;

    iget-object v7, v3, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_3
    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    const v5, 0x7f07003c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity$b;->DW:Z

    if-eqz v2, :cond_5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v4, v10

    move-object v6, p0

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v3

    :cond_6
    :try_start_1
    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const v5, 0x7f07003e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->Hw()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    move v3, v8

    goto/16 :goto_0
.end method
