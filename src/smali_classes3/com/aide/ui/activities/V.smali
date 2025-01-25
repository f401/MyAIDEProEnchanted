.class Lcom/aide/ui/activities/V;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)Landroid/view/View;
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
.field final FH:Landroid/view/View;

.field final Hw:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, -0x3bf7e9c87cfab17bL  # -5.554034375254977E19

    const-class v4, Lcom/aide/ui/activities/V;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/V;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/V;->FH:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x49e88666676ba32bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/V;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x3221f499da6d8ec8L  # 3.330027472926231E-67

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x1

    const/16 v1, 0x190

    if-eqz p2, :cond_39

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3f866666  # 1.05f

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3f866666  # 1.05f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v1, v1

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v11, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/V;->FH:Landroid/view/View;

    :goto_35
    invoke-virtual {v0, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_59

    :cond_39
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f866666  # 1.05f

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f866666  # 1.05f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v1, v1

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v11, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/V;->FH:Landroid/view/View;
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_5a

    goto :goto_35

    :goto_59
    return-void

    :catchall_5a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/V;->DW:Z

    if-eqz v1, :cond_6f

    const-wide v2, 0x3221f499da6d8ec8L  # 3.330027472926231E-67

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    goto :goto_71

    :goto_70
    throw v0

    :goto_71
    goto :goto_70
.end method
