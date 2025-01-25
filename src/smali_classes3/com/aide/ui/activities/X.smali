.class Lcom/aide/ui/activities/X;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/widget/LinearLayout;Ljava/util/List;)V
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
.field final FH:Labcd/Sk$a;

.field final Hw:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, -0x3bf83a1781f35438L

    const-class v4, Lcom/aide/ui/activities/X;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Labcd/Sk$a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/X;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/X;->FH:Labcd/Sk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xd3388bb52c69b8L
    .end annotation

    const-wide v0, -0xf76da9dd27f8590L  # -1.2492692951738096E234

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/activities/X;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    new-instance v4, Labcd/Ch;

    iget-object v5, p0, Lcom/aide/ui/activities/X;->FH:Labcd/Sk$a;

    new-instance v6, Lcom/aide/ui/activities/W;

    invoke-direct {v6, p0}, Lcom/aide/ui/activities/W;-><init>(Lcom/aide/ui/activities/X;)V

    invoke-direct {v4, v2, v5, v6}, Labcd/Ch;-><init>(Ljava/lang/String;Labcd/Sk$a;Lcom/aide/common/ab;)V

    invoke-static {v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/X;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method
