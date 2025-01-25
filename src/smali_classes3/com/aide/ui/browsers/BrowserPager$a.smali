.class Lcom/aide/ui/browsers/BrowserPager$a;
.super Landroid/support/v4/view/o;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/BrowserPager;
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
.field final Zo:Lcom/aide/ui/browsers/BrowserPager;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x4569369371402fc4L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/BrowserPager$a;

    const-wide v1, -0x39c16a0246c35b0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/browsers/BrowserPager;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xb3f3adf5acc37bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x412bb1a12e4088cbL  # 907472.590336108

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/browsers/BrowserPager$a;->Zo:Lcom/aide/ui/browsers/BrowserPager;

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/browsers/BrowserPager$a;->v5:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/browsers/BrowserPager;Lcom/aide/ui/browsers/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x15eb909f9cc7d924L  # 4.395921373861524E-203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/browsers/BrowserPager$a;-><init>(Lcom/aide/ui/browsers/BrowserPager;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x15eb909f9cc7d924L  # 4.395921373861524E-203

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
        method = 0x1114a15b89633508L
    .end annotation

    const-wide v0, -0xe1f3100e2337db8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x7fe3172f3ead100L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xec0a63e7b83b4a0L  # -3.1897936082760105E237

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lcom/aide/ui/browsers/BrowserPager$a;->v5:I

    if-eq v0, p2, :cond_29

    iput p2, p0, Lcom/aide/ui/browsers/BrowserPager$a;->v5:I

    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager$a;->Zo:Lcom/aide/ui/browsers/BrowserPager;

    new-instance v1, Lcom/aide/ui/browsers/c;

    invoke-direct {v1, p0, p2}, Lcom/aide/ui/browsers/c;-><init>(Lcom/aide/ui/browsers/BrowserPager$a;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v1, :cond_40

    const-wide v2, -0xec0a63e7b83b4a0L  # -3.1897936082760105E237

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3a14db398d418e0L
    .end annotation

    const-wide v0, 0x24079089ac323a10L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x324334cfdd6f8971L
    .end annotation

    const-wide v0, -0x77eae8a688379b3L  # -2.927715405983532E272

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager$a;->Zo:Lcom/aide/ui/browsers/BrowserPager;

    invoke-static {v2}, Lcom/aide/ui/browsers/BrowserPager;->j6(Lcom/aide/ui/browsers/BrowserPager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x196f6076254cc6fdL
    .end annotation

    const-wide v0, -0x6086cce3d3d489fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x2

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb4026bfd0beb941L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xe57a65d08cc6863L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager$a;->Zo:Lcom/aide/ui/browsers/BrowserPager;

    invoke-static {v0}, Lcom/aide/ui/browsers/BrowserPager;->j6(Lcom/aide/ui/browsers/BrowserPager;)Ljava/util/List;

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

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v1, :cond_37

    const-wide v2, 0xe57a65d08cc6863L

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
        method = -0x307958f7fa18c289L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xc329e70b074e363L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0xc329e70b074e363L

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
        method = 0x3005ec48d22ac00bL
    .end annotation

    const-wide v0, 0x2bee12f524f4691fL  # 4.399905728627771E-97

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x78ab5c3d27134598L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9a2626fc6812c38L

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

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x9a2626fc6812c38L

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
        method = 0x2159bc7a1903b30cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x16c84124ef7734fcL  # -7.100011072091334E198

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x16c84124ef7734fcL  # -7.100011072091334E198

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method
