.class Labcd/_k;
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
    .registers 5

    const-wide v0, 0x14a06f5906f9e200L

    const-wide v2, 0x30ac14f91b3e7dbfL  # 3.104259159374977E-74

    const-class v4, Labcd/_k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Labcd/_k;->Zo:Labcd/el;

    iput-object p2, p0, Labcd/_k;->FH:Landroid/app/Activity;

    iput-object p3, p0, Labcd/_k;->Hw:Lcom/aide/ui/trainer/g$j;

    iput-object p4, p0, Labcd/_k;->v5:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xd24e9750a9cd19L
    .end annotation

    const-wide v0, 0x58700b090d2e7174L  # 1.0114089537524748E118

    :try_start_5
    sget-boolean v2, Labcd/_k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/_k;->Zo:Labcd/el;

    iget-object v3, p0, Labcd/_k;->FH:Landroid/app/Activity;

    iget-object v4, p0, Labcd/_k;->Hw:Lcom/aide/ui/trainer/g$j;

    iget-object v5, p0, Labcd/_k;->v5:Ljava/lang/Runnable;

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v6, v5}, Labcd/el;->j6(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/_k;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
