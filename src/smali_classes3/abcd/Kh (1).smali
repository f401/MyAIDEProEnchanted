.class Labcd/Kh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oh;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Labcd/Oh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x23b40421389c322fL  # -4.0679517960582325E136

    const-wide v2, 0x1e7044cfd4fc9ca8L

    const-class v4, Labcd/Kh;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oh;)V
    .registers 2

    iput-object p1, p0, Labcd/Kh;->FH:Labcd/Oh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xad88ba8cec96c98L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kh;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4396dac548d6780dL  # -1.090509070938878E-17

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    iget-object v1, p0, Labcd/Kh;->FH:Labcd/Oh;

    invoke-static {v1}, Labcd/Oh;->j6(Labcd/Oh;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Kh;->FH:Labcd/Oh;

    invoke-static {v2}, Labcd/Oh;->DW(Labcd/Oh;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/Ji;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/Kh;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x4396dac548d6780dL  # -1.090509070938878E-17

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method
