.class Labcd/Sh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Yh;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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

.field final Hw:Labcd/Yh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3eb3a5bfd2959f55L  # 1.1710797685696493E-6

    const-wide v2, 0x3d139879c646b31L  # 2.761699989874495E-290

    const-class v4, Labcd/Sh;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Yh;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Labcd/Sh;->Hw:Labcd/Yh;

    iput-object p2, p0, Labcd/Sh;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3668fc01f3f3660L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sh;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x492f1b80c23b0d30L  # -1.1835763781073494E-44

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Labcd/Sh;->Hw:Labcd/Yh;

    invoke-static {v1, v0}, Labcd/Yh;->j6(Labcd/Yh;Landroid/app/AlertDialog;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Labcd/Sh;->Hw:Labcd/Yh;

    iget-object v2, p0, Labcd/Sh;->FH:Landroid/app/Activity;

    invoke-static {v1, v0}, Labcd/Yh;->DW(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/Sh;->Hw:Labcd/Yh;

    invoke-static {v4, v0}, Labcd/Yh;->FH(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Labcd/Yh;->j6(Labcd/Yh;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/Sh;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x492f1b80c23b0d30L  # -1.1835763781073494E-44

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method
