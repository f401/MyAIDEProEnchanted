.class Labcd/Uj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Wj;->sy()V
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
.field final FH:Labcd/Wj;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Uj;

    const-wide v2, 0xd208e29057b8e3fL

    const-wide v4, -0x103cba8384f2edc4L    # -2.337440998930084E230

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Wj;)V
    .registers 2

    iput-object p1, p0, Labcd/Uj;->FH:Labcd/Wj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xa6e026ef2dd22b1L
    .end annotation

    const-wide v4, -0x6248f6307483a374L

    :try_start_0
    sget-boolean v0, Labcd/Uj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6248f6307483a374L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5185\u5b58\u4e0d\u8db3\uff0c\u4ee3\u7801\u5206\u6790\u5f02\u5e38"

    :goto_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1, v0, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :cond_2
    const-string v0, "Running aidl "

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Uj;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
