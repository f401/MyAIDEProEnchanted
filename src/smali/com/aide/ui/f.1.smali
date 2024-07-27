.class Lcom/aide/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/j;->j6(Ljava/util/List;Z)V
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
.field final FH:Lcom/aide/ui/views/CompletionListView;

.field final Hw:Lcom/aide/ui/j;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/f;

    const-wide v2, 0x18aea3fc0f53a649L    # 8.596259399597165E-190

    const-wide v4, -0x61f20685531f3840L    # -6.506459438973367E-164

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/j;Lcom/aide/ui/views/CompletionListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    iput-object p2, p0, Lcom/aide/ui/f;->FH:Lcom/aide/ui/views/CompletionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 18
    .annotation runtime Labcd/su;
        method = 0x1c1313505d0a1de8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/f;->j6:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    move-wide/from16 v0, p4

    invoke-direct {v8, v0, v1}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, -0x28586a4a7d7eb78L

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/ui/f;->FH:Lcom/aide/ui/views/CompletionListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/aide/engine/SourceEntity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-virtual {v3}, Lcom/aide/ui/j;->j6()V

    move-object v0, v2

    check-cast v0, Lcom/aide/engine/SourceEntity;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/aide/engine/SourceEntity;->aM()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v2}, Lcom/aide/ui/j;->DW(Lcom/aide/ui/j;)Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v3}, Lcom/aide/ui/j;->FH(Lcom/aide/ui/j;)I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v4}, Lcom/aide/ui/j;->Hw(Lcom/aide/ui/j;)I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v5}, Lcom/aide/ui/j;->FH(Lcom/aide/ui/j;)I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v6}, Lcom/aide/ui/j;->v5(Lcom/aide/ui/j;)I

    move-result v6

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Lcom/aide/ui/views/CodeEditText;->j6(IIIILjava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v4}, Lcom/aide/ui/j;->FH(Lcom/aide/ui/j;)I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-static {v5}, Lcom/aide/ui/j;->Hw(Lcom/aide/ui/j;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v8}, Labcd/Xj;->j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v8}, Lcom/aide/engine/SourceEntity;->j3()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-virtual {v8}, Lcom/aide/engine/SourceEntity;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/j;->j6(Lcom/aide/ui/j;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Labcd/Xj;->j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/ui/f;->DW:Z

    if-eqz v2, :cond_3

    const-wide v4, -0x28586a4a7d7eb78L

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Long;

    move-wide/from16 v0, p4

    invoke-direct {v10, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/f;->Hw:Lcom/aide/ui/j;

    invoke-virtual {v8}, Lcom/aide/engine/SourceEntity;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/j;->j6(Lcom/aide/ui/j;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
