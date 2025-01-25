.class Lcom/aide/ui/AIDEEditorPager$a;
.super Landroid/support/v4/view/o;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/AIDEEditorPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/AIDEEditorPager;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x18118054a49e3700L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEEditorPager$a;

    const-wide v1, 0x7478627b1c8d3fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/AIDEEditorPager;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x60b832575658000L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6bbf6dcc7d2b8d58L  # 1.0332518321611588E211

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/AIDEEditorPager$a;->v5:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/AIDEEditorPager;Lcom/aide/ui/I;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x200f6f2e237bf210L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditorPager$a;-><init>(Lcom/aide/ui/AIDEEditorPager;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x200f6f2e237bf210L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1808f18c77da1568L
    .end annotation

    const-wide v0, -0x1acd0d955995a220L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x25a515addc3227cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5af6ad131e41778L

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->v5:I

    if-eq v0, p2, :cond_30

    iput p2, p0, Lcom/aide/ui/AIDEEditorPager$a;->v5:I

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->j6(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aide/ui/MainActivity;->FH(I)V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J0()V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->FH(Lcom/aide/ui/AIDEEditorPager;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    :cond_30
    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x5af6ad131e41778L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x567baecd3edcf6cL
    .end annotation

    const-wide v0, 0x13a9779bca8917b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2bb82249d31c1c99L
    .end annotation

    const-wide v0, 0x3e8b9f9e2d547abL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditorPager;->DW(Lcom/aide/ui/AIDEEditorPager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x49e6236012cfdd19L
    .end annotation

    const-wide v0, -0x428206d3930fbd1dL  # -1.7037867866043014E-12

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x2

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2ce1e4a68c20e309L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4e339fc21d231fbbL  # -8.222830246841676E-69

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->DW(Lcom/aide/ui/AIDEEditorPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x4e339fc21d231fbbL  # -8.222830246841676E-69

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1d26bd852ad4dba3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x29d8a83030737b29L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x29d8a83030737b29L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2bdc83dd575eebL
    .end annotation

    const-wide v0, 0x1ccc1237533ad619L  # 5.811025309412164E-170

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x282daddacc0e860L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x14a735c214fcd40L

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x14a735c214fcd40L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j6(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x16315cc35f9e3e20L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xeda5b2188d5db58L  # -1.1010943204588666E237

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, -0xeda5b2188d5db58L  # -1.1010943204588666E237

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method
