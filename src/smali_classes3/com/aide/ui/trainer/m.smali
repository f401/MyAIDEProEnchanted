.class final Lcom/aide/ui/trainer/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x7eb286a3e451453L

    const-wide v2, -0x1050554d1ff1d7bdL  # -9.602200660090636E229

    const-class v4, Lcom/aide/ui/trainer/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/trainer/m;->FH:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x116862eddd75cc1L
    .end annotation

    const-wide v0, -0x406d9c65a2645f0L  # -1.5317999541678498E289

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/m;->FH:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/m;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method
