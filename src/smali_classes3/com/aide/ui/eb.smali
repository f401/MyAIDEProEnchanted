.class Lcom/aide/ui/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/hb;->j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Lcom/aide/ui/trainer/g$c;",
        ">;"
    }
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
.field final FH:Landroid/app/Activity;

.field final Hw:Lcom/aide/ui/hb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xfe2d89ab5b35368L  # -1.131548515611858E232

    const-wide v2, 0x4e7f3b3f81e893adL  # 1.3471966357468941E70

    const-class v4, Lcom/aide/ui/eb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/eb;->Hw:Lcom/aide/ui/hb;

    iput-object p2, p0, Lcom/aide/ui/eb;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/trainer/g$c;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x507b04258a1e9b6cL
    .end annotation

    const-wide v0, -0x15c38f2284df1d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/eb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/eb;->Hw:Lcom/aide/ui/hb;

    invoke-static {v2}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/aide/ui/eb;->FH:Landroid/app/Activity;

    const-string v3, "StartupChoice"

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->gn()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v2

    if-lez v2, :cond_35

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V

    goto :goto_3e

    :cond_35
    iget-object v2, p0, Lcom/aide/ui/eb;->FH:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    :goto_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/eb;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {p0, p1}, Lcom/aide/ui/eb;->j6(Lcom/aide/ui/trainer/g$c;)V

    return-void
.end method
