.class Labcd/wh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ch;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Labcd/Ch;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x5d17df730569d4b9L  # -1.58284387075899E-140

    const-wide v2, -0x408b823c63bc139L

    const-class v4, Labcd/wh;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ch;)V
    .registers 2

    iput-object p1, p0, Labcd/wh;->FH:Labcd/Ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xc0d41af39321a4bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/wh;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x49ae3d0415e4dcb8L  # 8.63152122405545E46

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Labcd/wh;->FH:Labcd/Ch;

    invoke-static {v1, v0}, Labcd/Ch;->j6(Labcd/Ch;Landroid/app/AlertDialog;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Labcd/wh;->FH:Labcd/Ch;

    invoke-static {v1}, Labcd/Ch;->j6(Labcd/Ch;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/wh;->FH:Labcd/Ch;

    invoke-static {v3, v0}, Labcd/Ch;->DW(Labcd/Ch;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/wh;->FH:Labcd/Ch;

    invoke-static {v4, v0}, Labcd/Ch;->FH(Labcd/Ch;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Labcd/wh;->FH:Labcd/Ch;

    invoke-static {v5, v0}, Labcd/Ch;->Hw(Labcd/Ch;Landroid/app/AlertDialog;)Labcd/Sk$a;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Labcd/Ch;->j6(Labcd/Ch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Labcd/wh;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, 0x49ae3d0415e4dcb8L  # 8.63152122405545E46

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method
