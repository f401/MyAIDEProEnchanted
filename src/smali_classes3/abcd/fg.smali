.class Labcd/fg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gg;->run()Z
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
.field final FH:Labcd/gg;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x2af759eef6e4f2f3L  # -4.313030507624709E101

    const-wide v2, 0x2dd927b5870b12e0L

    const-class v4, Labcd/fg;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gg;)V
    .registers 2

    iput-object p1, p0, Labcd/fg;->FH:Labcd/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b5496fefba07040L
    .end annotation

    const-wide v0, 0x189c425d2f0aa9dbL

    :try_start_5
    sget-boolean v2, Labcd/fg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "learn_code_style"

    invoke-virtual {v2, v3, v4}, Labcd/Ek;->j6(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditorPager;->getTabSize()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Labcd/Xj;->j6(Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/fg;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method
