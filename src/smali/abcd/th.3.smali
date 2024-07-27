.class Labcd/th;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/uh;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Labcd/uh$a;

.field final Hw:Landroid/app/AlertDialog;

.field final VH:Labcd/uh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Ljava/util/List;

.field final v5:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/th;

    const-wide v2, -0x675b35579a4b358L

    const-wide v4, 0x10ab7962045f2500L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/uh;Labcd/uh$a;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, Labcd/th;->VH:Labcd/uh;

    iput-object p2, p0, Labcd/th;->FH:Labcd/uh$a;

    iput-object p3, p0, Labcd/th;->Hw:Landroid/app/AlertDialog;

    iput-object p4, p0, Labcd/th;->v5:Landroid/app/Activity;

    iput-object p5, p0, Labcd/th;->Zo:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x187672c83070682dL
    .end annotation

    :try_start_0
    sget-boolean v2, Labcd/th;->j6:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Long;

    move-wide/from16 v0, p5

    invoke-direct {v9, v0, v1}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x9051c5b7d1fc5c3L

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Labcd/th;->FH:Labcd/uh$a;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Labcd/uh$a;->j6(II)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Samples click"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/th;->VH:Labcd/uh;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/uh;->j6(Labcd/uh;Z)Z

    iget-object v2, p0, Labcd/th;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Labcd/th;->VH:Labcd/uh;

    invoke-static {v2}, Labcd/uh;->j6(Labcd/uh;)V

    iget-object v2, p0, Labcd/th;->FH:Labcd/uh$a;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Labcd/uh$a;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Labcd/th;->v5:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const-string v5, "show_samples"

    invoke-virtual {v3, v4, v2, v5}, Labcd/Ek;->Hw(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Labcd/th;->DW:Z

    if-eqz v2, :cond_3

    const-wide v4, 0x9051c5b7d1fc5c3L

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Long;

    move-wide/from16 v0, p5

    invoke-direct {v11, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    :try_start_1
    iget-object v2, p0, Labcd/th;->Zo:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sk$a;

    iget-object v3, v2, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v3, v3, Labcd/Sk$b;->tp:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Labcd/th;->VH:Labcd/uh;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Labcd/uh;->j6(Labcd/uh;Z)Z

    iget-object v3, p0, Labcd/th;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v3, p0, Labcd/th;->VH:Labcd/uh;

    invoke-static {v3}, Labcd/uh;->j6(Labcd/uh;)V

    iget-object v3, p0, Labcd/th;->v5:Landroid/app/Activity;

    new-instance v4, Labcd/Ch;

    iget-object v5, p0, Labcd/th;->VH:Labcd/uh;

    invoke-static {v5}, Labcd/uh;->DW(Labcd/uh;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, Labcd/Ch;-><init>(Ljava/lang/String;Labcd/Sk$a;Lcom/aide/common/ab;)V

    invoke-static {v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    iget-object v2, v2, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v2, v2, Labcd/Sk$b;->Hw:Ljava/lang/String;

    const-string v5, "create_project"

    invoke-virtual {v3, v4, v2, v5}, Labcd/Ek;->FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
