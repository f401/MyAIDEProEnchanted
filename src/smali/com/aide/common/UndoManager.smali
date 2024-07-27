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
            "Ljava/util/Stack",
            "<",
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
            "Ljava/util/Stack",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/UndoManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1419807b32b56b24L

    const-class v0, Lcom/aide/common/UndoManager;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x332e172579a334e3L    # 3.657287418801492E-62

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x332e172579a334e3L    # 3.657287418801492E-62

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1a99cfcf249daac9L
    .end annotation

    const-wide v2, 0xbbbeafa671c216fL

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbbbeafa671c216fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$Change;

    iget-object v0, v0, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$Change;

    iget-object v0, v0, Lcom/aide/common/UndoManager$Change;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(Lcom/aide/common/UndoManager$Change;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xd71a0196133f710L
    .end annotation

    const-wide v6, -0x2f96ef78a0df94f0L    # -2.3218227339231028E79

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f96ef78a0df94f0L    # -2.3218227339231028E79

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$a;

    invoke-interface {v0}, Lcom/aide/common/UndoManager$a;->DW()V

    iget-object v2, p1, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    iget-object v3, p1, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/aide/common/UndoManager$Change;->v5:I

    invoke-interface {v0, v2, v3, v4}, Lcom/aide/common/UndoManager$a;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x19431732a3679afL
    .end annotation

    const-wide v2, -0x21a1c82dd6086e9L    # -2.863019223074538E298

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21a1c82dd6086e9L    # -2.863019223074538E298

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$a;

    invoke-interface {v0}, Lcom/aide/common/UndoManager$a;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public DW(Landroid/os/Bundle;)V
    .registers 6

    const-wide v2, 0x3e511ae13a161f05L    # 1.5930271884201975E-8

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3e511ae13a161f05L    # 1.5930271884201975E-8

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "undo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "redo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Lcom/aide/common/UndoManager$a;)V
    .registers 6

    const-wide v2, -0x1074378377e758abL    # -2.1061446947962282E229

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1074378377e758abL    # -2.1061446947962282E229

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const-wide v8, -0x11b03a28ba50eb90L    # -2.2970080259398564E223

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x11b03a28ba50eb90L    # -2.2970080259398564E223

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    new-instance v1, Lcom/aide/common/UndoManager$Change;

    invoke-direct {v1, p1, p2, p3}, Lcom/aide/common/UndoManager$Change;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/common/UndoManager;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW()Z
    .registers 7

    const-wide v4, 0x1968240668ed0b00L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1968240668ed0b00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$Change;

    iget-object v0, v0, Lcom/aide/common/UndoManager$Change;->FH:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, -0x1979539ea4c98880L    # -7.707317252623722E185

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1979539ea4c98880L    # -7.707317252623722E185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$Change;

    iget-object v1, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$Change;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, -0x1979e13ad28ac7f4L    # -7.519281027566345E185

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1979e13ad28ac7f4L    # -7.519281027566345E185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/UndoManager$Change;

    iget-object v1, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$Change;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/os/Bundle;)V
    .registers 6

    const-wide v2, 0x509f5167752f5420L    # 2.3208799367168117E80

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x509f5167752f5420L    # 2.3208799367168117E80

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const-string v0, "undo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const-string v0, "redo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Lcom/aide/common/UndoManager$a;)V
    .registers 6

    const-wide v2, 0x119391c252581200L    # 5.286887991390185E-224

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x119391c252581200L    # 5.286887991390185E-224

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->v5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const-wide v8, -0x266ad552138700dL

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x266ad552138700dL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/aide/common/UndoManager;->FH:Ljava/util/Stack;

    new-instance v1, Lcom/aide/common/UndoManager$Change;

    invoke-direct {v1, p1, p2, p3}, Lcom/aide/common/UndoManager$Change;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/common/UndoManager;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6()Z
    .registers 5

    const-wide v2, 0x194cb444a63a9b98L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/UndoManager;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x194cb444a63a9b98L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/UndoManager;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/UndoManager;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
