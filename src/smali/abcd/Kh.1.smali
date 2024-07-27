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
    .registers 6

    const-class v0, Labcd/Kh;

    const-wide v2, -0x23b40421389c322fL    # -4.0679517960582325E136

    const-wide v4, 0x1e7044cfd4fc9ca8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xad88ba8cec96c98L
    .end annotation

    const-wide v4, -0x4396dac548d6780dL    # -1.090509070938878E-17

    :try_start_0
    sget-boolean v2, Labcd/Kh;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x4396dac548d6780dL    # -1.090509070938878E-17

    invoke-static {v6, v7, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    iget-object v3, p0, Labcd/Kh;->FH:Labcd/Oh;

    invoke-static {v3}, Labcd/Oh;->j6(Labcd/Oh;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Labcd/Kh;->FH:Labcd/Oh;

    invoke-static {v6}, Labcd/Oh;->DW(Labcd/Oh;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Labcd/Ji;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    sget-boolean v2, Labcd/Kh;->DW:Z

    if-eqz v2, :cond_1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v3
.end method
