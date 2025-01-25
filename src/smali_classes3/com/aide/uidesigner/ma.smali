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
    .registers 5

    const-wide v0, -0x47466ea2f3f500L

    const-wide v2, -0x142bf70dae630334L  # -2.6346636646393736E211

    const-class v4, Lcom/aide/uidesigner/ma;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x2d5ac9ab7c3fdd00L
    .end annotation

    move-object v10, p0

    move/from16 v9, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    :try_start_7
    sget-boolean v0, Lcom/aide/uidesigner/ma;->j6:Z

    if-eqz v0, :cond_26

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x563604ab80ed54bbL  # 2.019952296415168E107

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v0, v10, Lcom/aide/uidesigner/ma;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, v10, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iget-object v0, v0, Lcom/aide/uidesigner/na;->gn:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/Ka$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/aide/uidesigner/Ka$a;->Hw()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, v10, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iget-boolean v2, v2, Lcom/aide/uidesigner/na;->tp:Z
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_8a

    const-string v3, "android:layout_height"

    const-string v4, "android:layout_width"

    if-eqz v2, :cond_66

    :try_start_51
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_8a

    const-string v5, "match_parent"

    if-nez v2, :cond_5c

    :try_start_59
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    :goto_62
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    :cond_66
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_8a

    const-string v5, "wrap_content"

    if-nez v2, :cond_71

    :try_start_6e
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    goto :goto_62

    :cond_78
    :goto_78
    new-instance v2, Lcom/aide/uidesigner/b;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Ka$a;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/aide/uidesigner/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v10, Lcom/aide/uidesigner/ma;->Hw:Lcom/aide/uidesigner/na;

    iget-object v0, v0, Lcom/aide/uidesigner/na;->EQ:Lcom/aide/common/ab;

    invoke-interface {v0, v2}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_8a

    const/4 v0, 0x1

    return v0

    :catchall_8a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ma;->DW:Z

    if-eqz v1, :cond_ab

    const-wide v2, 0x563604ab80ed54bbL  # 2.019952296415168E107

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

    :cond_ab
    goto :goto_ad

    :goto_ac
    throw v0

    :goto_ad
    goto :goto_ac
.end method
