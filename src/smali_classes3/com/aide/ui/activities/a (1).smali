.class Lcom/aide/ui/activities/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/AndroidTrainerActivity;->j6(Landroid/view/ViewGroup;)V
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
.field final FH:Lcom/aide/ui/activities/AndroidTrainerActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x44d3aec280c6140L

    const-wide v2, -0xa185f7f8736a635L  # -9.081845875160025E259

    const-class v4, Lcom/aide/ui/activities/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/AndroidTrainerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/a;->FH:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x25023033eb83fc9L
    .end annotation

    const-wide v0, 0x457b7939dd84ed18L  # 5.314155344092493E26

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/a;->FH:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/AndroidTrainerActivity;->j6(Lcom/aide/ui/activities/AndroidTrainerActivity;)V

    iget-object v2, p0, Lcom/aide/ui/activities/a;->FH:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/a;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
