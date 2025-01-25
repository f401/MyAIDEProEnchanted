.class Labcd/il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ml;->Hw(Ljava/lang/String;Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/ml;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1374667f15b9aa4bL  # -7.433101803211034E214

    const-wide v2, -0x36a47d635b30ac7bL  # -2.4539920826023442E45

    const-class v4, Labcd/il;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ml;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/il;->v5:Labcd/ml;

    iput-object p2, p0, Labcd/il;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/il;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x92592cedf0eef2cL
    .end annotation

    const-wide v0, 0xf19e497c849de88L

    :try_start_5
    sget-boolean v2, Labcd/il;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0d05e0

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Labcd/il;->FH:Ljava/lang/String;

    aput-object v6, v5, v3

    const v3, 0x7f0d05df

    invoke-static {v3, v5}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Labcd/il;->Hw:Ljava/lang/String;

    new-instance v6, Labcd/hl;

    invoke-direct {v6, p0}, Labcd/hl;-><init>(Labcd/il;)V

    invoke-static {v2, v4, v3, v5, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Labcd/il;->DW:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_42
    throw v2
.end method
