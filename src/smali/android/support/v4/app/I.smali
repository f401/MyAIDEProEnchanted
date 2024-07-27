.class Landroid/support/v4/app/I;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/I$a;
    }
.end annotation


# static fields
.field private static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/I;->j6:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static DW(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/I$a;",
            ")",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Labcd/x;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Labcd/x;->clear()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Labcd/k;

    invoke-direct {v2}, Labcd/k;-><init>()V

    invoke-static {v2, v1}, Landroid/support/v4/app/Q;->j6(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p2, Landroid/support/v4/app/I$a;->FH:Landroid/support/v4/app/e;

    iget-boolean v3, p2, Landroid/support/v4/app/I$a;->DW:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->we()Landroid/support/v4/app/la;

    move-result-object v0

    iget-object v1, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Labcd/k;->j6(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/la;->j6(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {p0, v0}, Landroid/support/v4/app/I;->j6(Labcd/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object v0

    iget-object v1, v1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    move-object v4, v1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p0, v0}, Landroid/support/v4/app/I;->j6(Labcd/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-static {p0, v2}, Landroid/support/v4/app/I;->j6(Labcd/k;Labcd/k;)V

    :cond_7
    move-object v0, v2

    goto :goto_0
.end method

.method private static DW(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/I$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/support/v4/app/I$a;->FH:Landroid/support/v4/app/e;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static DW(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->j3()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->EQ()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static DW(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/I$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v1, p3, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iget-object v2, p3, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-boolean v3, p3, Landroid/support/v4/app/I$a;->DW:Z

    invoke-virtual {p2}, Labcd/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-static {p2, v0, p3}, Landroid/support/v4/app/I;->FH(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v5

    invoke-static {p2, v0, p3}, Landroid/support/v4/app/I;->DW(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v4

    invoke-virtual {p2}, Labcd/x;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Labcd/x;->clear()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Labcd/x;->clear()V

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez p6, :cond_7

    if-nez p7, :cond_7

    if-nez v7, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-static {v1, v2, v3}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Labcd/k;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {p4, v5, v6}, Landroid/support/v4/app/I;->j6(Ljava/util/ArrayList;Labcd/k;Ljava/util/Collection;)V

    invoke-virtual {p2}, Labcd/k;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {p5, v4, v6}, Landroid/support/v4/app/I;->j6(Ljava/util/ArrayList;Labcd/k;Ljava/util/Collection;)V

    move-object v7, v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v5, v0}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    if-eqz v7, :cond_9

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, p1, p4}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v0, p3, Landroid/support/v4/app/I$a;->v5:Z

    iget-object v6, p3, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    invoke-static {v7, p7, v5, v0, v6}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Labcd/k;ZLandroid/support/v4/app/e;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, p3, p6, v3}, Landroid/support/v4/app/I;->DW(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {p6, v6}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_8
    :goto_3
    new-instance v0, Landroid/support/v4/app/G;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/G;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    move-object v0, v7

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_3
.end method

.method private static DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/app/Q;->j6(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p3, v0}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Labcd/x;->size()I

    move-result v2

    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_4

    invoke-virtual {v3, v5, v4, v6}, Landroid/support/v4/app/la;->DW(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v3, v5, v4, v6}, Landroid/support/v4/app/la;->j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static DW(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/e;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/I$a;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/e;Landroid/support/v4/app/e$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static DW(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x;",
            "I",
            "Landroid/support/v4/app/I$a;",
            "Landroid/view/View;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->j6()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->j6(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-boolean v12, v0, Landroid/support/v4/app/I$a;->DW:Z

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v4/app/I$a;->v5:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v12}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v2}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/I;->DW(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v7, :cond_3

    if-nez v14, :cond_3

    if-eqz v8, :cond_0

    :cond_3
    move-object/from16 v0, p3

    invoke-static {v8, v10, v5, v0}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-static {v7, v9, v6, v0}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v2, 0x4

    invoke-static {v11, v2}, Landroid/support/v4/app/I;->DW(Ljava/util/ArrayList;I)V

    invoke-static {v7, v8, v14, v9, v12}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {v8, v10, v13}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    invoke-static {v6}, Landroid/support/v4/app/Q;->j6(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v10, v7

    move-object v12, v8

    move-object v15, v6

    invoke-static/range {v9 .. v15}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-static {v1, v9}, Landroid/support/v4/app/Q;->j6(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-static {v1, v5, v6, v2, v0}, Landroid/support/v4/app/Q;->j6(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroid/support/v4/app/I;->DW(Ljava/util/ArrayList;I)V

    invoke-static {v14, v5, v6}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private static DW(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static FH(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/I$a;",
            ")",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Labcd/x;->clear()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    new-instance v3, Labcd/k;

    invoke-direct {v3}, Labcd/k;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/support/v4/app/Q;->j6(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p2, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    iget-boolean v2, p2, Landroid/support/v4/app/I$a;->v5:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object v0

    iget-object v1, v1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    move-object v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Labcd/k;->j6(Ljava/util/Collection;)Z

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/la;->j6(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->we()Landroid/support/v4/app/la;

    move-result-object v0

    iget-object v1, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    move-object v2, v1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v0}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Labcd/k;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/k;->j6(Ljava/util/Collection;)Z

    :cond_6
    move-object v0, v3

    goto :goto_0
.end method

.method private static j6(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Labcd/k;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Labcd/k;

    invoke-direct {v7}, Labcd/k;-><init>()V

    add-int/lit8 v0, p4, -0x1

    move v6, v0

    :goto_0
    if-lt v6, p3, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/e;->DW(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    :goto_1
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v8, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v7, v2, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v2, v0}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-object v7
.end method

.method static synthetic j6(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/I;->DW(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Landroid/support/v4/app/I$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/I$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/I$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/I$a;",
            ">;I)",
            "Landroid/support/v4/app/I$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroid/support/v4/app/I$a;

    invoke-direct {p0}, Landroid/support/v4/app/I$a;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static synthetic j6(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/I;->DW(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->U2()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->Mr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static j6(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->XL()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->u7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static j6(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/I$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    const/4 v12, 0x0

    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroid/support/v4/app/I$a;->DW:Z

    invoke-virtual {p2}, Labcd/x;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p3

    invoke-static {p2, v1, v0}, Landroid/support/v4/app/I;->FH(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v2

    invoke-virtual {p2}, Labcd/x;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v7, v8, v9}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Labcd/k;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    invoke-static {v7, v8, v9, v2, v1}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    if-eqz v3, :cond_5

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p4

    invoke-static {v3, p1, v0}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v1, v0, Landroid/support/v4/app/I$a;->v5:Z

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    move-object/from16 v0, p7

    invoke-static {v3, v0, v2, v1, v4}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Labcd/k;ZLandroid/support/v4/app/e;)V

    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    invoke-static {v0, v12}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_5
    new-instance v1, Landroid/support/v4/app/H;

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Landroid/support/v4/app/H;-><init>(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p0, v1}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    goto :goto_0
.end method

.method private static j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->Hw()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1, p0, p2}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->FH()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static j6(Labcd/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic j6(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Labcd/k;Labcd/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Labcd/x;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Labcd/x;->FH(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    return-void
.end method

.method private static j6(Landroid/support/v4/app/e;Landroid/support/v4/app/e$a;Landroid/util/SparseArray;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/e;",
            "Landroid/support/v4/app/e$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/I$a;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, v1, Landroid/support/v4/app/Fragment;->er:I

    if-eqz v9, :cond_0

    if-eqz p3, :cond_5

    sget-object v0, Landroid/support/v4/app/I;->j6:[I

    iget v4, p1, Landroid/support/v4/app/e$a;->j6:I

    aget v0, v0, v4

    :goto_1
    if-eq v0, v2, :cond_f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_d

    const/4 v4, 0x4

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    const/4 v4, 0x6

    if-eq v0, v4, :cond_d

    const/4 v4, 0x7

    if-eq v0, v4, :cond_f

    move v0, v3

    move v4, v3

    :goto_2
    move v5, v0

    move v6, v3

    move v7, v3

    :goto_3
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/I$a;

    if-eqz v5, :cond_13

    invoke-static {v0, p2, v9}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/I$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/I$a;

    move-result-object v8

    iput-object v1, v8, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iput-boolean p3, v8, Landroid/support/v4/app/I$a;->DW:Z

    iput-object p0, v8, Landroid/support/v4/app/I$a;->FH:Landroid/support/v4/app/e;

    :goto_4
    if-nez p4, :cond_3

    if-eqz v4, :cond_3

    if-eqz v8, :cond_2

    iget-object v0, v8, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    if-ne v0, v1, :cond_2

    iput-object v10, v8, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget v4, v1, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v4, v2, :cond_3

    iget v4, v0, Landroid/support/v4/app/x;->aM:I

    if-lt v4, v2, :cond_3

    iget-boolean v4, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x;->VH(Landroid/support/v4/app/Fragment;)V

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_3
    if-eqz v6, :cond_12

    if-eqz v8, :cond_4

    iget-object v0, v8, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_12

    :cond_4
    invoke-static {v8, p2, v9}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/I$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/I$a;

    move-result-object v0

    iput-object v1, v0, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    iput-boolean p3, v0, Landroid/support/v4/app/I$a;->v5:Z

    iput-object p0, v0, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    :goto_5
    if-nez p4, :cond_0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    if-ne v2, v1, :cond_0

    iput-object v10, v0, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/support/v4/app/e$a;->j6:I

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_8

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_11

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_11

    :cond_7
    move v0, v2

    :goto_6
    move v4, v2

    goto :goto_2

    :cond_8
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->gW:Z

    goto :goto_6

    :cond_9
    if-eqz p4, :cond_b

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_c

    :cond_a
    :goto_7
    move v0, v2

    :goto_8
    move v5, v3

    move v6, v0

    move v7, v2

    move v4, v3

    goto :goto_3

    :cond_b
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_a

    :cond_c
    move v0, v3

    goto :goto_8

    :cond_d
    if-eqz p4, :cond_e

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->we:Z

    if-nez v0, :cond_c

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iget v0, v1, Landroid/support/v4/app/Fragment;->Mz:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_c

    goto :goto_7

    :cond_e
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_c

    goto :goto_7

    :cond_f
    if-eqz p4, :cond_10

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->vJ:Z

    goto :goto_6

    :cond_10
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->we:Z

    if-nez v0, :cond_11

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_7

    :cond_11
    move v0, v3

    goto :goto_6

    :cond_12
    move-object v0, v8

    goto :goto_5

    :cond_13
    move-object v8, v0

    goto/16 :goto_4
.end method

.method public static j6(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/e;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/I$a;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/e;Landroid/support/v4/app/e$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static j6(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x;",
            "I",
            "Landroid/support/v4/app/I$a;",
            "Landroid/view/View;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->j6()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->j6(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v4/app/I$a;->DW:Z

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/support/v4/app/I$a;->v5:Z

    invoke-static {v15, v2}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v3}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/I;->j6(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_3

    if-nez v13, :cond_3

    if-eqz v8, :cond_0

    :cond_3
    move-object/from16 v0, p3

    invoke-static {v8, v9, v5, v0}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p3

    invoke-static {v7, v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v4/app/I$a;->DW:Z

    invoke-static {v7, v11, v13, v15, v2}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v7

    move-object v14, v6

    invoke-static/range {v8 .. v14}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v13, v1

    move-object v14, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-static/range {v13 .. v20}, Landroid/support/v4/app/I;->j6(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    invoke-static {v1, v6, v0}, Landroid/support/v4/app/Q;->j6(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v1, v8}, Landroid/support/v4/app/Q;->j6(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-static {v1, v6, v0}, Landroid/support/v4/app/Q;->j6(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    move-object v11, v8

    goto :goto_2
.end method

.method static j6(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v2, p3

    :goto_0
    if-ge v2, p4, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, v3, p5}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v3, p5}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5, p1, p2, p3, p4}, Landroid/support/v4/app/I;->j6(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Labcd/k;

    move-result-object v6

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/I$a;

    if-eqz p5, :cond_4

    invoke-static {p0, v5, v0, v2, v6}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-static {p0, v5, v0, v2, v6}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V

    goto :goto_3
.end method

.method private static j6(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/F;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/F;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    return-void
.end method

.method private static j6(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->Zo(Z)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v4/app/E;

    invoke-direct {v1, p2}, Landroid/support/v4/app/E;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    :cond_0
    return-void
.end method

.method private static j6(Ljava/lang/Object;Ljava/lang/Object;Labcd/k;ZLandroid/support/v4/app/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/e;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p4, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p4, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Landroid/support/v4/app/Q;->FH(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/app/Q;->FH(Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p4, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic j6(Ljava/util/ArrayList;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/support/v4/app/I;->DW(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static j6(Ljava/util/ArrayList;Labcd/k;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
