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
        "Lcom/aide/common/ab",
        "<",
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
    .registers 6

    const-class v0, Lcom/aide/ui/eb;

    const-wide v2, -0xfe2d89ab5b35368L    # -1.131548515611858E232

    const-wide v4, 0x4e7f3b3f81e893adL    # 1.3471966357468941E70

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, -0x15c38f2284df1d0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/eb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15c38f2284df1d0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/eb;->Hw:Lcom/aide/ui/hb;

    invoke-static {v0}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/aide/ui/eb;->FH:Landroid/app/Activity;

    const-string v1, "StartupChoice"

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->gn()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/eb;->FH:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/eb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {p0, p1}, Lcom/aide/ui/eb;->j6(Lcom/aide/ui/trainer/g$c;)V

    return-void
.end method
