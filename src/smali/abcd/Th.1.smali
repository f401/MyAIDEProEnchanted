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
    .registers 6

    const-class v0, Labcd/Th;

    const-wide v2, 0x3eb3a5bfd2959f55L    # 1.1710797685696493E-6

    const-wide v4, 0x3d173167e01ad88L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x86e845dd027310L
    .end annotation

    const-wide v4, -0x393e1d8a40eb0e71L    # -7.254859374803722E32

    :try_start_0
    sget-boolean v2, Labcd/Th;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x393e1d8a40eb0e71L    # -7.254859374803722E32

    invoke-static {v6, v7, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    iget-object v3, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v3, v2}, Labcd/Yh;->j6(Labcd/Yh;Landroid/app/AlertDialog;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v3, p0, Labcd/Th;->FH:Labcd/Yh;

    iget-object v6, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v6, v2}, Labcd/Yh;->DW(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v7, v2}, Labcd/Yh;->FH(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Labcd/Yh;->j6(Labcd/Yh;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    iget-object v6, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v6}, Labcd/Yh;->j6(Labcd/Yh;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v7, v2}, Labcd/Yh;->DW(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Labcd/Th;->FH:Labcd/Yh;

    invoke-static {v8, v2}, Labcd/Yh;->FH(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v7, v2}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    sget-boolean v2, Labcd/Th;->DW:Z

    if-eqz v2, :cond_1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v3
.end method
