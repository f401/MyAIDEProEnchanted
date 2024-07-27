.class Lcom/aide/uidesigner/ma;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/na;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/app/AlertDialog;

.field final Hw:Lcom/aide/uidesigner/na;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/ma;

    const-wide v2, -0x47466ea2f3f500L

    const-wide v4, -0x142bf70dae630334L    # -2.6346636646393736E211

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/na;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iput-object p2, p0, Lcom/aide/uidesigner/ma;->FH:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x2d5ac9ab7c3fdd00L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/ma;->j6:Z

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

    const-wide v2, 0x563604ab80ed54bbL    # 2.019952296415168E107

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/uidesigner/ma;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iget-object v2, v2, Lcom/aide/uidesigner/na;->gn:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/Ka$a;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lcom/aide/uidesigner/Ka$a;->Hw()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iget-boolean v4, v4, Lcom/aide/uidesigner/na;->tp:Z

    if-eqz v4, :cond_3

    const-string v4, "android:layout_width"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android:layout_width"

    const-string v5, "match_parent"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "android:layout_height"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android:layout_height"

    const-string v5, "match_parent"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    new-instance v4, Lcom/aide/uidesigner/b;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Ka$a;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/aide/uidesigner/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iget-object v2, v2, Lcom/aide/uidesigner/na;->EQ:Lcom/aide/common/ab;

    invoke-interface {v2, v4}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    const-string v4, "android:layout_width"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android:layout_width"

    const-string v5, "wrap_content"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v4, "android:layout_height"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android:layout_height"

    const-string v5, "wrap_content"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/ma;->DW:Z

    if-eqz v2, :cond_5

    const-wide v4, 0x563604ab80ed54bbL    # 2.019952296415168E107

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

    :cond_5
    throw v3
.end method
