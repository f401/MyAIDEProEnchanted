.class Lcom/aide/ui/activities/TrainerCourseActivity$a;
.super Landroid/support/v4/view/o;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;
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
.field private VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x13920c54ebcac03dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0xa590209326e6560L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final gn:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x229827f482b191c3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;

    const-wide v1, 0xe4874d49fa7369dL  # 7.33542784753382E-240

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x15a529110c4afcfcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1a305d0394ede263L  # -2.625536604339165E182

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->gn:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->v5:I

    iput-object p2, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->VH:Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x1a305d0394ede263L  # -2.625536604339165E182

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/TrainerCourseActivity$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public DW(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xc52f7522393407L
    .end annotation

    const-wide v0, -0x4c0c23a726ea38fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xf4423aee6e88d0bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xa390b3c88f2ea97L

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->v5:I

    if-eq v0, p2, :cond_27

    iput p2, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->v5:I

    new-instance v0, Lcom/aide/ui/activities/ka;

    invoke-direct {v0, p0, p2}, Lcom/aide/ui/activities/ka;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity$a;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0xa390b3c88f2ea97L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1eaa6f77b1b534cfL
    .end annotation

    const-wide v0, -0x2927c76e5fddab0bL  # -2.275359372023046E110

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x242d77038e99455cL
    .end annotation

    const-wide v0, 0x8a5338a06234ee8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x579a6769b4718140L
    .end annotation

    const-wide v0, 0x22488a56e093d43cL  # 1.572220679928554E-143

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x2

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(I)Ljava/lang/CharSequence;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15ed5cf0c7d42cefL
    .end annotation

    const-wide v0, -0x285f4039b83f5ea5L  # -1.2889626975450217E114

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->VH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ≫"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    :cond_2f
    return-object v2

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3bd6d6c6941edb04L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4ae447561ef409c8L  # -7.235607911398849E-53

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-object v0

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x4ae447561ef409c8L  # -7.235607911398849E-53

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xbb945c23cc01790L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x344c9683e46c6024L  # -4.759820806214689E56

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0x344c9683e46c6024L  # -4.759820806214689E56

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
        method = -0x22d3f3f1d04c9904L
    .end annotation

    const-wide v0, 0x2351e26bc6dad508L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xeeae618cc8c165L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5afe377e9599e0c5L  # -2.004298506436571E-130

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

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x5afe377e9599e0c5L  # -2.004298506436571E-130

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
        method = -0x4c436772f4882d37L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x20c156698ad7df3fL  # 6.620638210244514E-151

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x20c156698ad7df3fL  # 6.620638210244514E-151

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method
