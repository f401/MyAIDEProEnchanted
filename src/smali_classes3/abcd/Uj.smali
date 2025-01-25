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
    .registers 5

    const-wide v0, 0xd208e29057b8e3fL

    const-wide v2, -0x103cba8384f2edc4L  # -2.337440998930084E230

    const-class v4, Labcd/Uj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xa6e026ef2dd22b1L
    .end annotation

    const-wide v0, -0x6248f6307483a374L

    :try_start_5
    sget-boolean v2, Labcd/Uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2a

    if-eqz v3, :cond_1f

    const-string v3, "内存不足，代码分析异常"

    goto :goto_21

    :cond_1f
    const-string v3, "Running aidl "

    :goto_21
    const/4 v4, 0x1

    :try_start_22
    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Uj;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method
