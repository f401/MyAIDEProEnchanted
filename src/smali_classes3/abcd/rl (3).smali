.class Labcd/rl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/sl;->DW(Ljava/lang/String;JII)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Labcd/sl;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x5917a8cc0b184c5L

    const-wide v2, 0x3a05ae2f9bfe8a3L

    const-class v4, Labcd/rl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/sl;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/rl;->Hw:Labcd/sl;

    iput-object p2, p0, Labcd/rl;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x125f81f7ba2195d0L
    .end annotation

    const-wide v0, 0x36b11c2020663507L  # 2.997003480866818E-45

    :try_start_5
    sget-boolean v2, Labcd/rl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Hw()V

    iget-object v2, p0, Labcd/rl;->Hw:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->v5(Labcd/ul;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Labcd/rl;->FH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    sget-object v4, Lcom/aide/ui/activities/o;->FH:Lcom/aide/ui/activities/o;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_41
    invoke-static {v2, v3, v4}, Lcom/aide/common/b;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    :cond_45
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/activities/o;->we()Lcom/aide/ui/activities/o;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_5d
    iget-object v2, p0, Labcd/rl;->Hw:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->DW(Labcd/ul;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Labcd/rl;->Hw:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    iget-object v3, p0, Labcd/rl;->Hw:Labcd/sl;

    iget-object v3, v3, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v3}, Labcd/ul;->DW(Labcd/ul;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/ul;->j6(Ljava/lang/String;)V

    goto :goto_86

    :cond_77
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const v3, 0x7f0d06f6

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_86
    .catchall {:try_start_5 .. :try_end_86} :catchall_87

    :goto_86
    return-void

    :catchall_87
    move-exception v2

    sget-boolean v3, Labcd/rl;->DW:Z

    if-eqz v3, :cond_8f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8f
    goto :goto_91

    :goto_90
    throw v2

    :goto_91
    goto :goto_90
.end method
