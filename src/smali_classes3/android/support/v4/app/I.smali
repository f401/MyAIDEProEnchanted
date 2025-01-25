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

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v4/app/I;->j6:[I

    return-void

    :array_a
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/I$a;",
            ")",
            "Lk<",
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

    if-nez v2, :cond_74

    if-eqz p1, :cond_74

    if-nez v1, :cond_11

    goto :goto_74

    :cond_11
    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    invoke-static {p1, v1}, Landroid/support/v4/app/Q;->j6(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p2, Landroid/support/v4/app/I$a;->FH:Landroid/support/v4/app/e;

    iget-boolean p2, p2, Landroid/support/v4/app/I$a;->DW:Z

    if-eqz p2, :cond_26

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->we()Landroid/support/v4/app/la;

    move-result-object p2

    iget-object v0, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    goto :goto_2c

    :cond_26
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object p2

    iget-object v0, v1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    :goto_2c
    if-eqz v0, :cond_31

    invoke-virtual {p1, v0}, Labcd/k;->j6(Ljava/util/Collection;)Z

    :cond_31
    if-eqz p2, :cond_70

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/la;->j6(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3c
    if-ltz p2, :cond_73

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_56

    invoke-static {p0, v1}, Landroid/support/v4/app/I;->j6(Labcd/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0, v1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_56
    invoke-static {v2}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-static {p0, v1}, Landroid/support/v4/app/I;->j6(Labcd/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-static {v2}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_6d
    add-int/lit8 p2, p2, -0x1

    goto :goto_3c

    :cond_70
    invoke-static {p0, p1}, Landroid/support/v4/app/I;->j6(Labcd/k;Labcd/k;)V

    :cond_73
    return-object p1

    :cond_74
    :goto_74
    invoke-virtual {p0}, Labcd/x;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static DW(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/I$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object p1, p1, Landroid/support/v4/app/I$a;->FH:Landroid/support/v4/app/e;

    if-eqz p2, :cond_25

    if-eqz p0, :cond_25

    iget-object p2, p1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_25

    const/4 p2, 0x0

    if-eqz p3, :cond_16

    iget-object p1, p1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    goto :goto_18

    :cond_16
    iget-object p1, p1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    :goto_18
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private static DW(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->j3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->EQ()Ljava/lang/Object;

    move-result-object p0

    :goto_f
    invoke-static {p0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/I$a;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p3, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iget-object v1, p3, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const/4 v2, 0x0

    if-eqz v0, :cond_86

    if-nez v1, :cond_15

    goto/16 :goto_86

    :cond_15
    iget-boolean v3, p3, Landroid/support/v4/app/I$a;->DW:Z

    invoke-virtual {p2}, Labcd/x;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v2

    goto :goto_23

    :cond_1f
    invoke-static {v0, v1, v3}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    :goto_23
    invoke-static {p2, v4, p3}, Landroid/support/v4/app/I;->FH(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v5

    invoke-static {p2, v4, p3}, Landroid/support/v4/app/I;->DW(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v6

    invoke-virtual {p2}, Labcd/x;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3d

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Labcd/x;->clear()V

    :cond_36
    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Labcd/x;->clear()V

    :cond_3b
    move-object v4, v2

    goto :goto_4b

    :cond_3d
    invoke-virtual {p2}, Labcd/k;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {p4, v5, v7}, Landroid/support/v4/app/I;->j6(Ljava/util/ArrayList;Labcd/k;Ljava/util/Collection;)V

    invoke-virtual {p2}, Labcd/k;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p5, v6, p2}, Landroid/support/v4/app/I;->j6(Ljava/util/ArrayList;Labcd/k;Ljava/util/Collection;)V

    :goto_4b
    if-nez p6, :cond_52

    if-nez p7, :cond_52

    if-nez v4, :cond_52

    return-object v2

    :cond_52
    const/4 p2, 0x1

    invoke-static {v0, v1, v3, v5, p2}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    if-eqz v4, :cond_76

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, p1, p4}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean p1, p3, Landroid/support/v4/app/I$a;->v5:Z

    iget-object p2, p3, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    invoke-static {v4, p7, v5, p1, p2}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Labcd/k;ZLandroid/support/v4/app/e;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v6, p3, p6, v3}, Landroid/support/v4/app/I;->DW(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_73

    invoke-static {p6, p1}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_73
    move-object p7, p1

    move-object p6, p2

    goto :goto_78

    :cond_76
    move-object p6, v2

    move-object p7, p6

    :goto_78
    new-instance v2, Landroid/support/v4/app/G;

    move-object p1, v2

    move-object p2, v0

    move-object p3, v1

    move p4, v3

    move-object p5, v6

    invoke-direct/range {p1 .. p7}, Landroid/support/v4/app/G;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    return-object v4

    :cond_86
    :goto_86
    return-object v2
.end method

.method private static DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {v0, p1}, Landroid/support/v4/app/Q;->j6(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_10
    if-eqz p2, :cond_15

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_23

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return-object v0
.end method

.method private static DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_3d

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Labcd/x;->size()I

    move-result v1

    :goto_20
    if-ge v0, v1, :cond_33

    invoke-virtual {p3, v0}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_33
    const/4 p3, 0x0

    if-eqz p4, :cond_3a

    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/la;->DW(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/la;->j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static DW(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/e;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/I$a;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->j6()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_23

    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e$a;

    invoke-static {p0, v2, p1, v1, p2}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/e;Landroid/support/v4/app/e$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_23
    return-void
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
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    iget-object v1, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->j6()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->j6(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move-object v9, v0

    if-nez v9, :cond_1e

    return-void

    :cond_1e
    iget-object v10, v3, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iget-object v11, v3, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    iget-boolean v12, v3, Landroid/support/v4/app/I$a;->DW:Z

    iget-boolean v0, v3, Landroid/support/v4/app/I$a;->v5:Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v12}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11, v0}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v5, v13

    move-object v6, v15

    move-object/from16 p0, v7

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/I;->DW(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_51

    if-nez v0, :cond_51

    move-object/from16 v4, p0

    if-nez v4, :cond_53

    return-void

    :cond_51
    move-object/from16 v4, p0

    :cond_53
    invoke-static {v4, v11, v14, v8}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v15, v10, v13, v8}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v1, 0x4

    invoke-static {v8, v1}, Landroid/support/v4/app/I;->DW(Ljava/util/ArrayList;I)V

    invoke-static {v15, v4, v0, v10, v12}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_83

    invoke-static {v4, v11, v5}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    invoke-static {v13}, Landroid/support/v4/app/Q;->j6(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v1, v10

    move-object v2, v15

    move-object v3, v8

    move-object v6, v0

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-static {v9, v10}, Landroid/support/v4/app/Q;->j6(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v1, p4

    invoke-static {v9, v14, v13, v11, v1}, Landroid/support/v4/app/Q;->j6(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-static {v8, v1}, Landroid/support/v4/app/I;->DW(Ljava/util/ArrayList;I)V

    invoke-static {v0, v14, v13}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_83
    return-void
.end method

.method private static DW(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method private static FH(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/I$a;",
            ")",
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    if-nez p1, :cond_9

    goto :goto_6e

    :cond_9
    iget-object p1, p2, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Q;->j6(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p2, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    iget-boolean p2, p2, Landroid/support/v4/app/I$a;->v5:Z

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->tp()Landroid/support/v4/app/la;

    move-result-object p1

    iget-object p2, v1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    goto :goto_2a

    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->we()Landroid/support/v4/app/la;

    move-result-object p1

    iget-object p2, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    :goto_2a
    invoke-virtual {v0, p2}, Labcd/k;->j6(Ljava/util/Collection;)Z

    if-eqz p1, :cond_66

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/la;->j6(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_38
    if-ltz p1, :cond_6d

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4c

    invoke-virtual {p0, v1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_4c
    invoke-static {v2}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {p0, v1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    :goto_63
    add-int/lit8 p1, p1, -0x1

    goto :goto_38

    :cond_66
    invoke-virtual {v0}, Labcd/k;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/k;->j6(Ljava/util/Collection;)Z

    :cond_6d
    return-object v0

    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Labcd/x;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Labcd/k;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    :cond_5
    :goto_5
    add-int/lit8 p4, p4, -0x1

    if-lt p4, p3, :cond_57

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e;

    invoke-virtual {v1, p0}, Landroid/support/v4/app/e;->DW(I)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_2f

    iget-object v2, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    goto :goto_36

    :cond_2f
    iget-object v2, v1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_36
    const/4 v4, 0x0

    :goto_37
    if-ge v4, v3, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_51

    invoke-virtual {v0, v5, v7}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_51
    invoke-virtual {v0, v5, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_57
    return-object v0
.end method

.method static synthetic j6(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/I;->DW(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Landroid/support/v4/app/I$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/I$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/I$a;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/I$a;",
            ">;I)",
            "Landroid/support/v4/app/I$a;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Landroid/support/v4/app/I$a;

    invoke-direct {p0}, Landroid/support/v4/app/I$a;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method static synthetic j6(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/I;->DW(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_19

    if-nez p1, :cond_5

    goto :goto_19

    :cond_5
    if-eqz p2, :cond_c

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->U2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->Mr()Ljava/lang/Object;

    move-result-object p0

    :goto_10
    invoke-static {p0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->XL()Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->u7()Ljava/lang/Object;

    move-result-object p0

    :goto_f
    invoke-static {p0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/I$a;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v0, p7

    iget-object v6, v3, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iget-object v7, v3, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    if-eqz v6, :cond_79

    if-nez v7, :cond_13

    goto/16 :goto_79

    :cond_13
    iget-boolean v8, v3, Landroid/support/v4/app/I$a;->DW:Z

    invoke-virtual/range {p2 .. p2}, Labcd/x;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v4, p2

    move-object v2, v1

    goto :goto_25

    :cond_1f
    invoke-static {v6, v7, v8}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p2

    :goto_25
    invoke-static {v4, v2, v3}, Landroid/support/v4/app/I;->FH(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Labcd/x;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_31

    move-object v12, v1

    goto :goto_39

    :cond_31
    invoke-virtual {v5}, Labcd/k;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v12, v2

    :goto_39
    if-nez v10, :cond_40

    if-nez v0, :cond_40

    if-nez v12, :cond_40

    return-object v1

    :cond_40
    const/4 v2, 0x1

    invoke-static {v6, v7, v8, v5, v2}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    if-eqz v12, :cond_5d

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v11, p1

    invoke-static {v12, v11, v9}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v2, v3, Landroid/support/v4/app/I$a;->v5:Z

    iget-object v13, v3, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    invoke-static {v12, v0, v5, v2, v13}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Labcd/k;ZLandroid/support/v4/app/e;)V

    if-eqz v10, :cond_5f

    invoke-static {v10, v1}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_5f

    :cond_5d
    move-object/from16 v11, p1

    :cond_5f
    :goto_5f
    move-object v13, v1

    new-instance v14, Landroid/support/v4/app/H;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/H;-><init>(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object v0, p0

    invoke-static {p0, v14}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    return-object v12

    :cond_79
    :goto_79
    return-object v1
.end method

.method private static j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 5

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    if-eqz p3, :cond_12

    if-eqz p4, :cond_d

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->Hw()Z

    move-result p3

    goto :goto_13

    :cond_d
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->FH()Z

    move-result p3

    goto :goto_13

    :cond_12
    const/4 p3, 0x1

    :goto_13
    if-eqz p3, :cond_1a

    invoke-static {p1, p0, p2}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method private static j6(Labcd/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v1}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic j6(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/k;Labcd/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    invoke-virtual {p0, v0}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Labcd/x;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0, v0}, Labcd/x;->FH(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
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
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/I$a;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v6, p1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_5

    return-void

    :cond_5
    iget v7, v6, Landroid/support/v4/app/Fragment;->er:I

    if-nez v7, :cond_a

    return-void

    :cond_a
    if-eqz p3, :cond_13

    sget-object v0, Landroid/support/v4/app/I;->j6:[I

    iget p1, p1, Landroid/support/v4/app/e$a;->j6:I

    aget p1, v0, p1

    goto :goto_15

    :cond_13
    iget p1, p1, Landroid/support/v4/app/e$a;->j6:I

    :goto_15
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_56

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x6

    if-eq p1, v2, :cond_56

    const/4 v2, 0x7

    if-eq p1, v2, :cond_7b

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_8c

    :cond_2c
    if-eqz p4, :cond_3b

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz p1, :cond_8a

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez p1, :cond_8a

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz p1, :cond_8a

    goto :goto_88

    :cond_3b
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->gW:Z

    goto :goto_8b

    :cond_3e
    if-eqz p4, :cond_4d

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz p1, :cond_76

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz p1, :cond_76

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz p1, :cond_76

    goto :goto_74

    :cond_4d
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz p1, :cond_76

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez p1, :cond_76

    goto :goto_74

    :cond_56
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz p4, :cond_6e

    if-nez p1, :cond_76

    iget-object p1, v6, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz p1, :cond_76

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_76

    iget p1, v6, Landroid/support/v4/app/Fragment;->Mz:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_76

    goto :goto_74

    :cond_6e
    if-eqz p1, :cond_76

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez p1, :cond_76

    :goto_74
    const/4 p1, 0x1

    goto :goto_77

    :cond_76
    const/4 p1, 0x0

    :goto_77
    move v8, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    goto :goto_8f

    :cond_7b
    if-eqz p4, :cond_80

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->vJ:Z

    goto :goto_8b

    :cond_80
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->we:Z

    if-nez p1, :cond_8a

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez p1, :cond_8a

    :goto_88
    const/4 p1, 0x1

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    :goto_8b
    const/4 v2, 0x1

    :goto_8c
    move v1, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_8f
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/I$a;

    if-eqz v1, :cond_a1

    invoke-static {v3, p2, v7}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/I$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/I$a;

    move-result-object v3

    iput-object v6, v3, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iput-boolean p3, v3, Landroid/support/v4/app/I$a;->DW:Z

    iput-object p0, v3, Landroid/support/v4/app/I$a;->FH:Landroid/support/v4/app/e;

    :cond_a1
    move-object v9, v3

    const/4 v10, 0x0

    if-nez p4, :cond_c9

    if-eqz v2, :cond_c9

    if-eqz v9, :cond_af

    iget-object v1, v9, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    if-ne v1, v6, :cond_af

    iput-object v10, v9, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    :cond_af
    iget-object v1, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget v2, v6, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v2, v0, :cond_c9

    iget v2, v1, Landroid/support/v4/app/x;->aM:I

    if-lt v2, v0, :cond_c9

    iget-boolean v0, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v0, :cond_c9

    invoke-virtual {v1, v6}, Landroid/support/v4/app/x;->VH(Landroid/support/v4/app/Fragment;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_c9
    if-eqz v8, :cond_db

    if-eqz v9, :cond_d1

    iget-object v0, v9, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_db

    :cond_d1
    invoke-static {v9, p2, v7}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/I$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/I$a;

    move-result-object v9

    iput-object v6, v9, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    iput-boolean p3, v9, Landroid/support/v4/app/I$a;->v5:Z

    iput-object p0, v9, Landroid/support/v4/app/I$a;->Zo:Landroid/support/v4/app/e;

    :cond_db
    if-nez p4, :cond_e7

    if-eqz p1, :cond_e7

    if-eqz v9, :cond_e7

    iget-object p0, v9, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    if-ne p0, v6, :cond_e7

    iput-object v10, v9, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    :cond_e7
    return-void
.end method

.method public static j6(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/e;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/I$a;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    iget-object v3, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e$a;

    invoke-static {p0, v3, p1, v1, p2}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/e;Landroid/support/v4/app/e$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static j6(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x;",
            "I",
            "Landroid/support/v4/app/I$a;",
            "Landroid/view/View;",
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v1, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->j6()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, v0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->j6(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v12, v0

    goto :goto_1d

    :cond_1c
    const/4 v12, 0x0

    :goto_1d
    if-nez v12, :cond_20

    return-void

    :cond_20
    iget-object v13, v8, Landroid/support/v4/app/I$a;->j6:Landroid/support/v4/app/Fragment;

    iget-object v14, v8, Landroid/support/v4/app/I$a;->Hw:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v8, Landroid/support/v4/app/I$a;->DW:Z

    iget-boolean v1, v8, Landroid/support/v4/app/I$a;->v5:Z

    invoke-static {v13, v0}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v1}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v6

    move-object/from16 p0, v5

    move-object v11, v6

    move-object v6, v15

    move-object/from16 p1, v7

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/I;->j6(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v15, :cond_55

    if-nez v7, :cond_55

    move-object/from16 v0, p1

    if-nez v0, :cond_57

    return-void

    :cond_55
    move-object/from16 v0, p1

    :cond_57
    invoke-static {v0, v14, v11, v9}, Landroid/support/v4/app/I;->DW(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_66

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_66

    :cond_64
    move-object v14, v0

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v14, 0x0

    :goto_67
    invoke-static {v15, v9}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/view/View;)V

    iget-boolean v0, v8, Landroid/support/v4/app/I$a;->DW:Z

    invoke-static {v15, v14, v7, v13, v0}, Landroid/support/v4/app/I;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9c

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v14

    move-object v6, v11

    move-object/from16 v8, p0

    invoke-static/range {v2 .. v8}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v0, v12

    move-object v8, v1

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v14

    move-object v7, v11

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/I;->j6(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-static {v12, v0, v10}, Landroid/support/v4/app/Q;->j6(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v12, v8}, Landroid/support/v4/app/Q;->j6(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-static {v12, v0, v10}, Landroid/support/v4/app/Q;->j6(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_9c
    return-void
.end method

.method static j6(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_62

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p3

    :goto_12
    if-ge v1, p4, :cond_30

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, p5}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V

    goto :goto_2d

    :cond_2a
    invoke-static {v2, v0, p5}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/e;Landroid/util/SparseArray;Z)V

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_30
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_62

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v2}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_62

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4, p1, p2, p3, p4}, Landroid/support/v4/app/I;->j6(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Labcd/k;

    move-result-object v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/I$a;

    if-eqz p5, :cond_5c

    invoke-static {p0, v4, v6, v1, v5}, Landroid/support/v4/app/I;->DW(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V

    goto :goto_5f

    :cond_5c
    invoke-static {p0, v4, v6, v1, v5}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/x;ILandroid/support/v4/app/I$a;Landroid/view/View;Labcd/k;)V

    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_62
    return-void
.end method

.method private static j6(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Landroid/support/v4/app/F;

    move-object v0, v8

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/F;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p0

    invoke-static {p0, v8}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    return-void
.end method

.method private static j6(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->Zo(Z)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object p0, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    new-instance p1, Landroid/support/v4/app/E;

    invoke-direct {p1, p2}, Landroid/support/v4/app/E;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroid/support/v4/app/fa;->j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;

    :cond_25
    return-void
.end method

.method private static j6(Ljava/lang/Object;Ljava/lang/Object;Labcd/k;ZLandroid/support/v4/app/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p4, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    iget-object p3, p4, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    goto :goto_12

    :cond_10
    iget-object p3, p4, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    :goto_12
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p0, p2}, Landroid/support/v4/app/Q;->FH(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p1, :cond_26

    invoke-static {p1, p2}, Landroid/support/v4/app/Q;->FH(Ljava/lang/Object;Landroid/view/View;)V

    :cond_26
    return-void
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
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    invoke-virtual {p1, v0}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/s;->Zo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method
