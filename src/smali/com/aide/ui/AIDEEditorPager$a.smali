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
    .registers 4

    const-wide v2, 0x7478627b1c8d3fL

    const-class v0, Lcom/aide/ui/AIDEEditorPager$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/AIDEEditorPager;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x60b832575658000L
    .end annotation

    const-wide v4, 0x6bbf6dcc7d2b8d58L    # 1.0332518321611588E211

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6bbf6dcc7d2b8d58L    # 1.0332518321611588E211

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/AIDEEditorPager;Lcom/aide/ui/I;)V
    .registers 10

    const-wide v2, -0x200f6f2e237bf210L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x200f6f2e237bf210L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditorPager$a;-><init>(Lcom/aide/ui/AIDEEditorPager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1808f18c77da1568L
    .end annotation

    const-wide v2, -0x1acd0d955995a220L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1acd0d955995a220L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x25a515addc3227cL
    .end annotation

    const-wide v8, -0x5af6ad131e41778L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5af6ad131e41778L

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->v5:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/aide/ui/AIDEEditorPager$a;->v5:I

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->j6(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aide/ui/MainActivity;->FH(I)V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J0()V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->FH(Lcom/aide/ui/AIDEEditorPager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x567baecd3edcf6cL
    .end annotation

    const-wide v2, 0x13a9779bca8917b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13a9779bca8917b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2bb82249d31c1c99L
    .end annotation

    const-wide v2, 0x3e8b9f9e2d547abL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3e8b9f9e2d547abL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->DW(Lcom/aide/ui/AIDEEditorPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x49e6236012cfdd19L
    .end annotation

    const-wide v2, -0x428206d3930fbd1dL    # -1.7037867866043014E-12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x428206d3930fbd1dL    # -1.7037867866043014E-12

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, -0x2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2ce1e4a68c20e309L
    .end annotation

    const-wide v2, -0x4e339fc21d231fbbL    # -8.222830246841676E-69

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x4e339fc21d231fbbL    # -8.222830246841676E-69

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager$a;->Zo:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->DW(Lcom/aide/ui/AIDEEditorPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1d26bd852ad4dba3L
    .end annotation

    const-wide v2, 0x29d8a83030737b29L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29d8a83030737b29L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2bdc83dd575eebL
    .end annotation

    const-wide v2, 0x1ccc1237533ad619L    # 5.811025309412164E-170

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ccc1237533ad619L    # 5.811025309412164E-170

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x282daddacc0e860L
    .end annotation

    const-wide v10, 0x14a735c214fcd40L

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x14a735c214fcd40L

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v2, :cond_1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v4, v10

    move-object v6, p0

    move-object v7, p1

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v3
.end method

.method public j6(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x16315cc35f9e3e20L
    .end annotation

    const-wide v2, -0xeda5b2188d5db58L    # -1.1010943204588666E237

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xeda5b2188d5db58L    # -1.1010943204588666E237

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager$a;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
