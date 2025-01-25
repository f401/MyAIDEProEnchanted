.class Lcom/aide/ui/activities/U;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/widget/LinearLayout;Ljava/util/List;Z)V
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
.field final FH:Lcom/aide/ui/trainer/g$j;

.field final Hw:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, -0x3bf7997977c40e80L  # -5.626369997485166E19

    const-class v4, Lcom/aide/ui/activities/U;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$j;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/U;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/U;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6a490ba0bd6e1a0L
    .end annotation

    const-wide v0, -0x2e92b83004251c80L  # -1.777573442729306E84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/U;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/U;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iget-object v3, p0, Lcom/aide/ui/activities/U;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-static {v2, v3}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$j;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/U;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method
