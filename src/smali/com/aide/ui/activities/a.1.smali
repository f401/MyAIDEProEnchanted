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
    .registers 6

    const-class v0, Lcom/aide/ui/activities/a;

    const-wide v2, 0x44d3aec280c6140L

    const-wide v4, -0xa185f7f8736a635L    # -9.081845875160025E259

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x457b7939dd84ed18L    # 5.314155344092493E26

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x457b7939dd84ed18L    # 5.314155344092493E26

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/a;->FH:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/AndroidTrainerActivity;->j6(Lcom/aide/ui/activities/AndroidTrainerActivity;)V

    iget-object v0, p0, Lcom/aide/ui/activities/a;->FH:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
