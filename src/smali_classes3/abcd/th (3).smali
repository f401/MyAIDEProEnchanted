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
    .registers 5

    const-wide v0, -0x675b35579a4b358L

    const-wide v2, 0x10ab7962045f2500L

    const-class v4, Labcd/th;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x187672c83070682dL
    .end annotation

    move-object v10, p0

    move/from16 v9, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    :try_start_7
    sget-boolean v0, Labcd/th;->j6:Z

    if-eqz v0, :cond_26

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x9051c5b7d1fc5c3L

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v0, v10, Labcd/th;->FH:Labcd/uh$a;

    invoke-virtual {v0, v9, v11}, Labcd/uh$a;->j6(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    const-string v0, "Samples click"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, v10, Labcd/th;->VH:Labcd/uh;

    invoke-static {v0, v1}, Labcd/uh;->j6(Labcd/uh;Z)Z

    iget-object v0, v10, Labcd/th;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, v10, Labcd/th;->VH:Labcd/uh;

    invoke-static {v0}, Labcd/uh;->j6(Labcd/uh;)V

    iget-object v0, v10, Labcd/th;->FH:Labcd/uh$a;

    invoke-virtual {v0, v9}, Labcd/uh$a;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v1

    if-eqz v1, :cond_5e

    goto :goto_6c

    :cond_5e
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "show_samples"

    invoke-virtual {v1, v2, v0, v3}, Labcd/Ek;->Hw(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    :cond_6c
    :goto_6c
    iget-object v1, v10, Labcd/th;->v5:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_b8

    :cond_72
    iget-object v0, v10, Labcd/th;->Zo:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sk$a;

    iget-object v2, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v2, v2, Labcd/Sk$b;->tp:Z

    if-eqz v2, :cond_a7

    iget-object v2, v10, Labcd/th;->VH:Labcd/uh;

    invoke-static {v2, v1}, Labcd/uh;->j6(Labcd/uh;Z)Z

    iget-object v1, v10, Labcd/th;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, v10, Labcd/th;->VH:Labcd/uh;

    invoke-static {v1}, Labcd/uh;->j6(Labcd/uh;)V

    iget-object v1, v10, Labcd/th;->v5:Landroid/app/Activity;

    new-instance v2, Labcd/Ch;

    iget-object v3, v10, Labcd/th;->VH:Labcd/uh;

    invoke-static {v3}, Labcd/uh;->DW(Labcd/uh;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Labcd/Ch;-><init>(Ljava/lang/String;Labcd/Sk$a;Lcom/aide/common/ab;)V

    invoke-static {v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    goto :goto_b8

    :cond_a7
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    iget-object v0, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v0, v0, Labcd/Sk$b;->Hw:Ljava/lang/String;

    const-string v3, "create_project"

    invoke-virtual {v1, v2, v0, v3}, Labcd/Ek;->FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_7 .. :try_end_b8} :catchall_ba

    :goto_b8
    const/4 v0, 0x1

    return v0

    :catchall_ba
    move-exception v0

    sget-boolean v1, Labcd/th;->DW:Z

    if-eqz v1, :cond_db

    const-wide v2, 0x9051c5b7d1fc5c3L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v12, v13}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_db
    throw v0
.end method
