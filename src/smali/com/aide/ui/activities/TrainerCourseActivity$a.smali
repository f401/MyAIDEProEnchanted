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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
    .registers 4

    const-wide v2, 0xe4874d49fa7369dL    # 7.33542784753382E-240

    const-class v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x15a529110c4afcfcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x1a305d0394ede263L    # -2.625536604339165E182

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a305d0394ede263L    # -2.625536604339165E182

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->gn:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->v5:I

    iput-object p2, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->VH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/activities/TrainerCourseActivity$a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public DW(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xc52f7522393407L
    .end annotation

    const-wide v2, -0x4c0c23a726ea38fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4c0c23a726ea38fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xf4423aee6e88d0bL
    .end annotation

    const-wide v8, 0xa390b3c88f2ea97L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xa390b3c88f2ea97L

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->v5:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->v5:I

    new-instance v0, Lcom/aide/ui/activities/ka;

    invoke-direct {v0, p0, p2}, Lcom/aide/ui/activities/ka;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity$a;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

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
        method = 0x1eaa6f77b1b534cfL
    .end annotation

    const-wide v2, -0x2927c76e5fddab0bL    # -2.275359372023046E110

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2927c76e5fddab0bL    # -2.275359372023046E110

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x242d77038e99455cL
    .end annotation

    const-wide v2, 0x8a5338a06234ee8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8a5338a06234ee8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x579a6769b4718140L
    .end annotation

    const-wide v2, 0x22488a56e093d43cL    # 1.572220679928554E-143

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22488a56e093d43cL    # 1.572220679928554E-143

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, -0x2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)Ljava/lang/CharSequence;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15ed5cf0c7d42cefL
    .end annotation

    const-wide v2, -0x285f4039b83f5ea5L    # -1.2889626975450217E114

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x285f4039b83f5ea5L    # -1.2889626975450217E114

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->VH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->VH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u226b"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3bd6d6c6941edb04L
    .end annotation

    const-wide v2, -0x4ae447561ef409c8L    # -7.235607911398849E-53

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x4ae447561ef409c8L    # -7.235607911398849E-53

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Zo:Ljava/util/List;

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

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

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
        method = -0xbb945c23cc01790L
    .end annotation

    const-wide v2, -0x344c9683e46c6024L    # -4.759820806214689E56

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x344c9683e46c6024L    # -4.759820806214689E56

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

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
        method = -0x22d3f3f1d04c9904L
    .end annotation

    const-wide v2, 0x2351e26bc6dad508L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2351e26bc6dad508L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xeeae618cc8c165L
    .end annotation

    const-wide v10, -0x5afe377e9599e0c5L    # -2.004298506436571E-130

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x5afe377e9599e0c5L    # -2.004298506436571E-130

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

    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

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
        method = -0x4c436772f4882d37L
    .end annotation

    const-wide v2, 0x20c156698ad7df3fL    # 6.620638210244514E-151

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20c156698ad7df3fL    # 6.620638210244514E-151

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity$a;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
