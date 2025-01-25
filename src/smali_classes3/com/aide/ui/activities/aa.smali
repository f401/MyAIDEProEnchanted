.class Lcom/aide/ui/activities/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Landroid/support/v4/widget/DrawerLayout;

.field final Hw:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, -0x127a56b4136fb267L  # -3.823240952795439E219

    const-class v4, Lcom/aide/ui/activities/aa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Landroid/support/v4/widget/DrawerLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/aa;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/aa;->FH:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x380e95301be7ff8dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/aa;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x42a4e1d638ba8a04L  # 1.1480097119557008E13

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/activities/aa;->FH:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->Zo(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/aide/ui/activities/aa;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/aa;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0x42a4e1d638ba8a04L  # 1.1480097119557008E13

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method
