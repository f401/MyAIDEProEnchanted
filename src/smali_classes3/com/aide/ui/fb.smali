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
    .registers 5

    const-wide v0, -0xfe2d89ab5b35368L  # -1.131548515611858E232

    const-wide v2, 0x4e7fa8b0ff8fb8b8L

    const-class v4, Lcom/aide/ui/fb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x12ef9c6ead52ec60L
    .end annotation

    const-wide v0, -0x55d7e264a86628L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/fb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/fb;->v5:Lcom/aide/ui/hb;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;Z)Z

    iget-object v2, p0, Lcom/aide/ui/fb;->v5:Lcom/aide/ui/hb;

    iget-object v3, p0, Lcom/aide/ui/fb;->FH:Landroid/app/Activity;

    iget-object v4, p0, Lcom/aide/ui/fb;->Hw:Landroid/widget/LinearLayout;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/fb;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
