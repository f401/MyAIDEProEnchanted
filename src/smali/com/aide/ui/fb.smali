.class Lcom/aide/ui/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final Hw:Landroid/widget/LinearLayout;

.field final v5:Lcom/aide/ui/hb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/fb;

    const-wide v2, -0xfe2d89ab5b35368L    # -1.131548515611858E232

    const-wide v4, 0x4e7fa8b0ff8fb8b8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/hb;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/fb;->v5:Lcom/aide/ui/hb;

    iput-object p2, p0, Lcom/aide/ui/fb;->FH:Landroid/app/Activity;

    iput-object p3, p0, Lcom/aide/ui/fb;->Hw:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x12ef9c6ead52ec60L
    .end annotation

    const-wide v4, -0x55d7e264a86628L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/fb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55d7e264a86628L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/fb;->v5:Lcom/aide/ui/hb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;Z)Z

    iget-object v0, p0, Lcom/aide/ui/fb;->v5:Lcom/aide/ui/hb;

    iget-object v1, p0, Lcom/aide/ui/fb;->FH:Landroid/app/Activity;

    iget-object v2, p0, Lcom/aide/ui/fb;->Hw:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/fb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
