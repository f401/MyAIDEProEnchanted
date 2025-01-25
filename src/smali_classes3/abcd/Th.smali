.class Labcd/Th;
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
.field final FH:Labcd/Yh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3eb3a5bfd2959f55L  # 1.1710797685696493E-6

    const-wide v2, 0x3d173167e01ad88L

    const-class v4, Labcd/Th;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Yh;)V
    .registers 2

    iput-object p1, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x86e845dd027310L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Th;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x393e1d8a40eb0e71L  # -7.254859374803722E32

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v1, v0}, Labcd/Yh;->j6(Labcd/Yh;Landroid/app/AlertDialog;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v1, v0}, Labcd/Yh;->DW(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v3, v0}, Labcd/Yh;->FH(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Labcd/Yh;->j6(Labcd/Yh;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    iget-object v2, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v2}, Labcd/Yh;->j6(Labcd/Yh;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v3, v0}, Labcd/Yh;->DW(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v4, v0}, Labcd/Yh;->FH(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v0

    sget-boolean v1, Labcd/Th;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, -0x393e1d8a40eb0e71L  # -7.254859374803722E32

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method
