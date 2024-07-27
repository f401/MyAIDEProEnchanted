.class Labcd/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/el;->j6(Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V
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

.field final Hw:Lcom/aide/ui/trainer/g$j;

.field final Zo:Labcd/el;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/al;

    const-wide v2, 0x14a06f5906f9e200L

    const-wide v4, 0x30ac653fd39a32ecL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Labcd/al;->Zo:Labcd/el;

    iput-object p2, p0, Labcd/al;->FH:Landroid/app/Activity;

    iput-object p3, p0, Labcd/al;->Hw:Lcom/aide/ui/trainer/g$j;

    iput-object p4, p0, Labcd/al;->v5:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x427107d056e7e1L
    .end annotation

    const-wide v6, 0x587d020d108c7431L    # 1.8287581802940305E118

    :try_start_0
    sget-boolean v0, Labcd/al;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x587d020d108c7431L    # 1.8287581802940305E118

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/al;->Zo:Labcd/el;

    iget-object v1, p0, Labcd/al;->FH:Landroid/app/Activity;

    iget-object v2, p0, Labcd/al;->Hw:Lcom/aide/ui/trainer/g$j;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/al;->v5:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Labcd/el;->j6(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/al;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
