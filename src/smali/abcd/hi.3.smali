.class Labcd/hi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ii;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Labcd/ii;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/hi;

    const-wide v2, 0xdf443225d7acad4L

    const-wide v4, 0x486aa91c97f6744L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ii;)V
    .registers 2

    iput-object p1, p0, Labcd/hi;->FH:Labcd/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x44779cfff1408cdL
    .end annotation

    const-wide v4, -0x50e65b1bedd05061L    # -8.448288497299031E-82

    :try_start_0
    sget-boolean v2, Labcd/hi;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x50e65b1bedd05061L    # -8.448288497299031E-82

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Labcd/hi;->FH:Labcd/ii;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    invoke-static {v3, v2}, Labcd/ii;->DW(Labcd/ii;Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/hi;->DW:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method
