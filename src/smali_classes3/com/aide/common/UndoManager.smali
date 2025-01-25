.class public Lcom/aide/common/UndoManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/UndoManager$Change;
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
.field private FH:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = -0x33eb489c72e70b85L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/aide/common/UndoManager$Change;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = 0xbc7757360d7597fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/aide/common/UndoManager$Change;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x1df7437adbe8dfb8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/common/UndoManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/UndoManager;

    const-wide v1, -0x1419807b32b56b24L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x332e172579a334e3L  # 3.657287418801492E-62

    :try_start_6
    sget-boolean v3, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1a99cfcf249daac9L
    .end annotation

    const-wide v0, 0xbbbeafa671c216fL

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_34

    iget-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/common/UndoManager$Change;

    iget-object v3, v3, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/common/UndoManager$Change;

    iget-object p1, v2, Lcom/aide/common/UndoManager$Change;->Hw:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_37

    return-object p1

    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_34
    const-string p1, ""

    return-object p1

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method private j6(Lcom/aide/common/UndoManager$Change;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xd71a0196133f710L
    .end annotation

    const-wide v0, -0x2f96ef78a0df94f0L  # -2.3218227339231028E79

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/common/UndoManager$a;

    invoke-interface {v3}, Lcom/aide/common/UndoManager$a;->DW()V

    iget-object v4, p1, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    iget-object v5, p1, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/aide/common/UndoManager$Change;->v5:I

    invoke-interface {v3, v4, v5, v6}, Lcom/aide/common/UndoManager$a;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_30

    goto :goto_12

    :cond_2f
    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method

.method private v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x19431732a3679afL
    .end annotation

    const-wide v0, -0x21a1c82dd6086e9L  # -2.863019223074538E298

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/common/UndoManager$a;

    invoke-interface {v3}, Lcom/aide/common/UndoManager$a;->DW()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method


# virtual methods
.method public DW(Landroid/os/Bundle;)V
    .registers 6

    const-wide v0, 0x3e511ae13a161f05L  # 1.5930271884201975E-8

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "undo"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "redo"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public DW(Lcom/aide/common/UndoManager$a;)V
    .registers 6

    const-wide v0, -0x1074378377e758abL  # -2.1061446947962282E229

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x11b03a28ba50eb90L  # -2.2970080259398564E223

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    new-instance v1, Lcom/aide/common/UndoManager$Change;

    invoke-direct {v1, p1, p2, p3}, Lcom/aide/common/UndoManager$Change;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/common/UndoManager;->v5()V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x11b03a28ba50eb90L  # -2.2970080259398564E223

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method public DW()Z
    .registers 8

    const-wide v0, 0x1968240668ed0b00L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_19
    if-ltz v3, :cond_32

    iget-object v5, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/common/UndoManager$Change;

    iget-object v5, v5, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    return v4

    :cond_2c
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_34

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_32
    const/4 v0, 0x0

    return v0

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    goto :goto_3e

    :goto_3d
    throw v2

    :goto_3e
    goto :goto_3d
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x1979539ea4c98880L  # -7.707317252623722E185

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/common/UndoManager$Change;

    iget-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$Change;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x1979e13ad28ac7f4L  # -7.519281027566345E185

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/common/UndoManager$Change;

    iget-object v3, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$Change;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(Landroid/os/Bundle;)V
    .registers 6

    const-wide v0, 0x509f5167752f5420L  # 2.3208799367168117E80

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    const-string v2, "undo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    iget-object v2, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    const-string v2, "redo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v3, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    :cond_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public j6(Lcom/aide/common/UndoManager$a;)V
    .registers 6

    const-wide v0, 0x119391c252581200L  # 5.286887991390185E-224

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x266ad552138700dL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    if-eqz p1, :cond_32

    invoke-direct {p0, p1}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    new-instance v1, Lcom/aide/common/UndoManager$Change;

    invoke-direct {v1, p1, p2, p3}, Lcom/aide/common/UndoManager$Change;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/common/UndoManager;->v5()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    :cond_32
    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_49

    const-wide v2, -0x266ad552138700dL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v0, 0x194cb444a63a9b98L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
