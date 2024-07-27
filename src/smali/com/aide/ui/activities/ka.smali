.class Lcom/aide/ui/activities/ka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity$a;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
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
.field final FH:I

.field final Hw:Lcom/aide/ui/activities/TrainerCourseActivity$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/ka;

    const-wide v2, 0xe4874d49fa7369dL    # 7.33542784753382E-240

    const-wide v4, -0x2e45c9e6180d56d8L    # -5.0919940844425136E85

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity$a;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/ka;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity$a;

    iput p2, p0, Lcom/aide/ui/activities/ka;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1e6ab67b1db60af8L
    .end annotation

    const-wide v2, -0x1fec16f057eacdc1L    # -6.673868849629304E154

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1fec16f057eacdc1L    # -6.673868849629304E154

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/ka;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity$a;

    invoke-static {v0}, Lcom/aide/ui/activities/TrainerCourseActivity$a;->j6(Lcom/aide/ui/activities/TrainerCourseActivity$a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/aide/ui/activities/ka;->FH:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/ka;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
