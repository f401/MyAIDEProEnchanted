.class Lcom/aide/ui/s;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditor;->j6(Landroid/widget/TextView;)V
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
.field final FH:Lcom/aide/ui/AIDEEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xa1a685f40ce8470L  # -8.299751922617364E259

    const-wide v2, 0x9b31250ef8780b5L

    const-class v4, Lcom/aide/ui/s;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/s;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x28f2edf0ca6fa4e0L
    .end annotation

    const-wide v0, -0x31ed950f13227L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/s;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/s;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->FH(Lcom/aide/ui/AIDEEditor;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/s;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->Hw(Lcom/aide/ui/AIDEEditor;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/s;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method
